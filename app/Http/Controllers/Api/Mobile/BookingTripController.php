<?php

namespace App\Http\Controllers\Api\Mobile;

use App\Models\Bus;
use App\Models\Booking;
use App\Models\BusSeats;
use App\Models\BusStops;
use Illuminate\Http\JsonResponse;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use App\Http\Requests\SearchTripRequest;
use App\Http\Requests\BookingTripRequest;
use Illuminate\Database\Eloquent\Collection;
 
class BookingTripController extends Controller
{
    public function searchTrip(SearchTripRequest $request):JsonResponse
    {
        //take first and last stop
        //retrieve the available seats and which bus
        //$validated = $request->validated();
        $buses = $this->getAvailableTrips($request->from_stop, $request->to_stop);
        if (count($buses)>0) {
             $seats = $this->getAvailableSeats($buses, $request->from_stop, $request->to_stop);
             if(count($seats)>1){
                return response()->json([
                    "message"=>"There Are Availabe Seats ",
                    "data"=>$seats
                ],200); 
             }
        }
       
        return response()->json([
            "message"=>"No Availble Seats",
            "data"=>null
        ],501);  

    }
    protected function getAvailableTrips($from_stop, $to_stop):array
    {
        return $matched_buses = BusStops::select("bus_id")->where("stop_id", $from_stop)
            ->orWhere("stop_id", $to_stop)->groupBy("bus_id")->having(DB::raw("count(*)"), ">", 1)
            ->pluck("bus_id")->toArray();

    }
    protected function getAvailableSeats($buses, $from_stop, $to_stop , $unique_seat_id=null):Collection
    { 

        return Bus::leftJoin("bus_seats","bus_seats.bus_id","=","buses.id")
            ->leftJoin("bookings", "bookings.seat_id", "=", "bus_seats.id")
            ->select(
                "bus_seats.bus_id", 
                "buses.name as bus_name",
                DB::raw("bus_seats.id unique_seat_id"),
                "bus_seats.seat_number"
            )
            ->whereIn("bus_seats.bus_id", $buses)
            ->where(function ($q) use ($unique_seat_id) {
                if($unique_seat_id !=null){
                    $q->where("bus_seats.id",$unique_seat_id);
                }
            })
            ->where(function ($q) use ($from_stop,$to_stop) {
                $q->orWhere("bookings.to_stop_id", '<=', $from_stop);
                $q->orWhereNull("bookings.to_stop_id");
            })->get();
    } 
    public function bookingTrip(BookingTripRequest $request):JsonResponse
    {
        $bus=BusSeats::find($request->unique_seat_id)->bus_id;
        $avaiable=$this->getAvailableSeats([$bus],$request->from_stop,$request->to_stop,$request->unique_seat_id);
        if(count($avaiable)>0){
            $res=Booking::create([
                "seat_id"=>$request->unique_seat_id,
                "from_stop_id"=>$request->from_stop,
                "to_stop_id"=>$request->to_stop,
                "user_id"=>auth()->user()->id
            ]);

            return response()->json([
                "message"=>"This Seat is Booked Successfully ",
                "data"=>$res
            ],200);  
        } 
       
        return response()->json([
            "message"=>"Failed,This Seat Is Not Available",
            "data"=>null
        ],501);  
    }
}