<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class BookingTripRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, mixed>
     */
    public function rules()
    {
        return [
           "unique_seat_id"=>"required|integer",
           "from_stop"=>"required|integer|exists:stops,id",
           "to_stop"=>"required|integer|exists:stops,id",
        ];
    }
    public function messages()
    {
        return [
            "from_stop.required"=>"Start Station is required", 
            "to_stop.required"=>"End Station is required", 
        ];
    }

}
