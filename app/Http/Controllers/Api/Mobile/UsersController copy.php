<?php

namespace App\Http\Controllers\Api\Mobile;

use App\Models\User;
use Illuminate\Http\JsonResponse;
use App\Http\Requests\LoginRequest;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;

class UsersController extends Controller
{
   
    public function login(LoginRequest $request):JsonResponse
    { 

        $user = User::where('email', $request->email)->first();
        if (!$user || !Hash::check($request->password, $user->password)) {
            return response()->json([
                'message' => 'incorrect username or password',
                'result' =>null
            ], 501);
        }

        $token = $user->createToken('apiToken')->plainTextToken;

        return response()->json(
            [
                'message'=>'Success',
                'result' => $user,
                'token' => $token,
            ],200
        );
    }
    public function logout():JsonResponse
    {
        auth()->user()->tokens()->delete();
        return response()->json([
            'status' =>200,
            'message' => 'user logged out',
        ],200);
    }

}
