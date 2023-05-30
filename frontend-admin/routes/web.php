<?php

use Illuminate\Support\Facades\Route;
use GuzzleHttp\Client;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('login', ['server' => env('API_URL')]);
});

Route::get('tambah_data', function () {
    return view('tambah_data', ['server' => env('API_URL')]);
});


Route::get('dashboard', function () {
    $client = new Client();
    $url = env("API_URL"). "/api/magang";
    // ambil service "GET" dari server
    $request = $client->get($url);
    // tampilkan hasil
    $response = $request->getBody();

    // panggil view "dashboard"
    return view('dashboard', ['server' => env('API_URL'), 'result' => json_decode($response)->magang]);
});
