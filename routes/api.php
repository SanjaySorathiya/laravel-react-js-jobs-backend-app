<?php

use App\Http\Controllers\PropertyJobController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });

Route::get('/jobs', [PropertyJobController::class, 'index'])->name('list_property_jobs');
Route::post('/jobs', [PropertyJobController::class, 'store'])->name('add_property_job');
Route::get('/get_property_list', [PropertyJobController::class, 'get_property_list'])->name('get_property_list');