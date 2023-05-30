<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Magang;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

/* Validasi Data Magang */
Route::post('login',[Magang::class,'login']);

/* Mengambil Semua Data Magang */
Route::get('magang',[Magang::class,'view']);

/* Mengambil Data Magang Berdasarkan ID */
Route::get('magang/{parameter}',[Magang::class,'detail']);

/* Mengambil Data Magang Berdasarkan ID */
Route::delete('magang/{parameter}',[Magang::class,'delete']);

/* Menambahkan Data Magang */
Route::post('magang',[Magang::class,'insert']);

/* Mengupdate Data Magang */
Route::put('magang',[Magang::class,'update']);
