<?php

namespace App\Http\Controllers\Api\Mobile;

use App\Http\Controllers\Controller;
use App\Http\Requests\LoginRequest;
use App\Models\User;
use Illuminate\Http\JsonResponse;
use Illuminate\Support\Facades\Hash;

class UsersController extends Controller
{

    public function login(LoginRequest $request): JsonResponse
    {

        try {
            $user = User::where('email', $request->email)->first();
            if (!$user || !Hash::check($request->password, $user->password)) {
                return response()->json([
                    'message' => 'incorrect username or password',
                    'result' => null,
                ], 501);
            }

            $token = $user->createToken('apiToken')->plainTextToken;

            return response()->json(
                [
                    'message' => 'Success',
                    'result' => $user,
                    'token' => $token,
                ], 200
            );
        }catch (\Exception$ex) {
            return response()->json(
                [
                    'message' => 'Failed Try Again',
                    'result' => null,
                ], 502
            );
        }
    }
    public function logout(): JsonResponse
    {
        auth()->user()->tokens()->delete();
        return response()->json([
            'status' => 200,
            'message' => 'user logged out',
        ], 200);
    }

}
