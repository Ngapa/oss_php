<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\InflasiController;



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

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});


Route::resource('bkn-ang-kerja','App\Http\Controllers\BknAngKerjaController');
Route::resource('inflasi','App\Http\Controllers\InflasiController');
Route::resource('inflasi-kota','App\Http\Controllers\InflasiKotaController');
Route::resource('ipm','App\Http\Controllers\IpmController');
Route::resource('kemiskinan','App\Http\Controllers\PddkMsknController');
Route::resource('ketimpangan','App\Http\Controllers\KetimpanganController');
Route::resource('pdrb','App\Http\Controllers\PdrbController');
Route::resource('penduduk','App\Http\Controllers\PendudukController');
Route::resource('penduduk-kecamatan','App\Http\Controllers\PendudukKecamatanController');
Route::resource('pddk-kerja-lpu','App\Http\Controllers\PddkKerjaLpuController');
Route::resource('pddk-kerja-pend','App\Http\Controllers\PddkKerjaPendidikanController');
Route::resource('pddk-kerja-umur','App\Http\Controllers\PddkKerjaUmurController');
Route::resource('pengangguran','App\Http\Controllers\PengangguranController');
Route::resource('sensus','App\Http\Controllers\SensusPddkController');
Route::resource('tenaga-kerja','App\Http\Controllers\TenagaKerjaController');
Route::resource('tkk','App\Http\Controllers\TkkController');
Route::resource('tpt','App\Http\Controllers\TptController');


