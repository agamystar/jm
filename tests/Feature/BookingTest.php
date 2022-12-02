<?php

namespace Tests\Feature;

use Tests\TestCase;
use App\Models\User;

class BookingTest extends TestCase
{
    /**
     * A basic feature test example.
     *
     * @return void
     */
    public function test_booking()
    {
     
        $user = User::factory()->create();

        $response = $this->actingAs($user)->post(route('booking_trip'), [
            "unique_seat_id" =>1,
            "from_stop" =>1,
            "to_stop"=>4
        ]);
              $res=json_decode($response->getContent());
        if(isset($res->message)) {
            $this->assertTrue(true);
        }else{
            $this->assertTrue(false);
        }
    }
    public function test_search()
    {
     
        $user = User::factory()->create();

        $response = $this->actingAs($user)->get(route('search_trip', [
            "from_stop" =>1,
            "to_stop"=>4
        ]));
      
       // dd($response);
        $res=json_decode($response->getContent());
        if(isset($res->message)) {
            $this->assertTrue(true);
        }else{
            $this->assertTrue(false);
        }
    }
}