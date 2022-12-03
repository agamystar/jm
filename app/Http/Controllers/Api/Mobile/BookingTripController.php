<?php

namespace App\Http\Controllers\Api\Mobile;

use App\Http\Controllers\Controller;
use App\Http\Requests\BookingTripRequest;
use App\Http\Requests\SearchTripRequest;
use App\Models\Booking;
use App\Models\Bus;
use App\Models\BusSeats;
use App\Models\BusStops;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Http\JsonResponse;
use Illuminate\Support\Facades\DB;

class BookingTripController extends Controller
{
    /**
     * param : start and end station
     * return the available seats depending on two function
     * getAvailableTrips() : return buses that match the same stops
     * getAvailableSeats() : return available seats inside these buses
     */
    public function searchTrip(SearchTripRequest $request): JsonResponse
    {
        try {
            $buses = $this->getAvailableTrips($request->from_stop, $request->to_stop);
            if (count($buses) > 0) {
                $seats = $this->getAvailableSeats($buses, $request->from_stop, $request->to_stop);
                if (count($seats) > 1) {
                    return response()->json([
                        "message" => "There Are Availabe Seats ",
                        "data" => $seats,
                    ], 200);
                }
            }

            return response()->json([
                "message" => "No Availble Seats",
                "data" => null,
            ], 501);

        } catch (\Exception$ex) {
            return response()->json(
                [
                    'message' => 'Failed Try Again',
                    'result' => null,
                ], 502
            );
        }
    }
    /** check the buses that go through the selected stations ,
     * and each bus must at least has 2 stops (start,end) in the table of bus_stops
     */
    protected function getAvailableTrips($from_stop, $to_stop): array
    {
        return $matched_buses = BusStops::select("bus_id")->where("stop_id", $from_stop)
            ->orWhere("stop_id", $to_stop)->groupBy("bus_id")->having(DB::raw("count(*)"), ">", 1)
            ->pluck("bus_id")->toArray();

    }
    /**
     * you can pass arg for one bus or more to check seats inside them
     * if unique_seat_id = null so that main i will get all avaible seats
     * if unique_seat_id has value that mean i don't need to reaturn all availble seats i just need to retun
     * this one if it is availble by checking in booking table
     * some developers  use another way in development like that Bus::with('seats.bookings')
     */
    protected function getAvailableSeats($buses, $from_stop, $to_stop, $unique_seat_id = null): Collection
    {

        $data = Bus::leftJoin("bus_seats", "bus_seats.bus_id", "=", "buses.id")
            ->leftJoin("bookings", "bookings.seat_id", "=", "bus_seats.id")
            ->select(
                "bus_seats.bus_id",
                "buses.name as bus_name",
                DB::raw("bus_seats.id unique_seat_id"),
                "bus_seats.seat_number"
            )
            ->whereIn("bus_seats.bus_id", $buses)
            ->where(function ($q) use ($unique_seat_id) {
                if ($unique_seat_id != null) {
                    $q->where("bus_seats.id", $unique_seat_id);
                }
            })
            ->where(function ($q) use ($from_stop, $to_stop) {
                $q->orWhere("bookings.to_stop_id", '<=', $from_stop);
                $q->orWhereNull("bookings.to_stop_id");
            })->get();

        return $data;
    }
    /**
     * input: selected seat_id , start , stop stations
     * return success if this seat still available or failed if not by using this function getAvailableSeats()
     * this method used also at searchTrip() function but in this case i will pass the selected seat_id to check
     * if this seat particulary available or not
     */
    public function bookingTrip(BookingTripRequest $request): JsonResponse
    {
        try {
            $bus = BusSeats::find($request->unique_seat_id)->bus_id;
            $avaiable = $this->getAvailableSeats([$bus], $request->from_stop, $request->to_stop, $request->unique_seat_id);
            if (count($avaiable) > 0) {
                $res = Booking::create([
                    "seat_id" => $request->unique_seat_id,
                    "from_stop_id" => $request->from_stop,
                    "to_stop_id" => $request->to_stop,
                    "user_id" => auth()->user()->id,
                ]);

                return response()->json([
                    "message" => "This Seat is Booked Successfully ",
                    "data" => $res,
                ], 200);
            }

            return response()->json([
                "message" => "Failed,This Seat Is Not Available",
                "data" => null,
            ], 501);

        } catch (\Exception$ex) {
            return response()->json(
                [
                    'message' => 'Failed Try Again',
                    'result' => null,
                ], 502
            );
        }
    }
}
