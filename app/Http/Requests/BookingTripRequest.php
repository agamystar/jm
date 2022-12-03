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
        $rules= [
           "unique_seat_id"=>"required|integer",
           "from_stop"=>"required|integer|exists:stops,id",
           "to_stop"=>"required|integer|exists:stops,id",
        ];

        if(request()->get("from_stop") >= request()->get("to_stop")){
            $rules['ordering_stations']="required";
        }
        return $rules;
    }
    public function messages()
    {
        return [
            "from_stop.required"=>"Start Station is required", 
            "to_stop.required"=>"End Station is required", 
            "ordering_stations.required"=>"Start Station must be before The Target Station", 
        ];
    }

}
