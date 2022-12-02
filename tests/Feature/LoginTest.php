<?php

namespace Tests\Feature;

use Tests\TestCase;

class LoginTest extends TestCase
{
    /**
     * A basic feature test example.
     *
     * @return void
     */
    public function test_login()
    {
        $response = $this->post(route('login'), [
            "email" => "admin@admin.com",
            "password" => "password",
        ]);
        $res = json_decode($response->getContent());
        if (isset($res->message)) {
            $this->assertTrue(true);
        } else {
            $this->assertTrue(false);
        }
    }
}