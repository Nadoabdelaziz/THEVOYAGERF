<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use Orion\Facades\Orion;
// use App\Http\Controllers\Api\ArrivalController;
use App\Http\Controllers\Api\UserController;
use App\Http\Controllers\Api\OrderStatusController;
use App\Http\Controllers\Api\ArrivalController;
use App\Http\Controllers\Api\AddToShelfController;


use App\Http\Controllers\api\LoginController;
use App\Http\Controllers\api\AddOrderStorage;
use App\Http\Controllers\api\OPerationsItemController;
use App\Http\Controllers\api\ReturnItemController;

use App\Http\Controllers\api\CoveredController;

use App\Http\Controllers\api\ShipmentController;

use App\Http\Controllers\api\ArrivedController;











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

 Orion::resource('arrivals', App\Http\Controllers\api\ArrivalController::class);


Orion::resource('users', App\Http\Controllers\api\UserController::class);


Orion::resource('add-to-shelves', App\Http\Controllers\Api\AddToShelfController::class);


Orion::resource('orderstatus', App\Http\Controllers\Api\OrderStatusController::class);


Orion::resource('strorage', App\Http\Controllers\Api\StrorageController::class);




Orion::resource('coverrequests', App\Http\Controllers\Api\coverrequestsController::class);


Orion::resource('NewRow', App\Http\Controllers\Api\NewRowController::class);


Orion::resource('Packwindow', App\Http\Controllers\Api\PackwindowController::class);


Orion::resource('Secondcovers', App\Http\Controllers\Api\SecondcoversController::class);


Orion::resource('Shelf', App\Http\Controllers\Api\ShelfController::class);


Orion::resource('Shippeditems', App\Http\Controllers\Api\ShippeditemsController::class);


Orion::resource('Source', App\Http\Controllers\Api\SourceController::class);


Orion::resource('UserOrders', App\Http\Controllers\Api\UserOrdersController::class);


Orion::resource('Userwindow', App\Http\Controllers\Api\UserwindowController::class);



// Passport Api

Route::post('/register','App\Http\Controllers\api\LoginController@register');


Route::post('/login',[ 'as' => 'login','uses'=>'App\Http\Controllers\api\LoginController@login']);

Route::post('/reset_password','App\Http\Controllers\api\NewPasswordController@forgotPassword');

// Route::post('/reset','App\Http\Controllers\api\NewPasswordController@reset');


// //add auth:api
Route::post('/Add_To_Storage','App\Http\Controllers\api\AddOrderStorage@Create_new_order')->middleware('api');

Route::post('/View-all-orders','App\Http\Controllers\api\OPerationsItemController@view_all_orders')->middleware('api');

Route::post('/Return_Item','App\Http\Controllers\api\ReturnItemController@Return_Item')->middleware('api');

Route::post('/Request_Cover','App\Http\Controllers\api\OPerationsItemController@Request_Cover')->middleware('api');

Route::post('/cover_requests','App\Http\Controllers\api\CoveredController@Get_Cover_requests')->middleware('api');

Route::post('/covered_orders','App\Http\Controllers\api\CoveredController@GetCoveredOrders')->middleware('api');

Route::post('/Request_Shipment','App\Http\Controllers\api\ShipmentController@Request_Shipment')->middleware('api');

Route::post('/Shipment_requests','App\Http\Controllers\api\ShipmentController@Get_Ship_Requests')->middleware('api');

Route::post('/Shipped_Orders','App\Http\Controllers\api\ShipmentController@GetShippedOrders')->middleware('api');

Route::post('/Arrived_Orders','App\Http\Controllers\api\ArrivedController@Arrived_Orders')->middleware('api');


Route::post('/pay_taghleef','App\Http\Controllers\api\CoveredController@pay_taghleef')->middleware('api');

Route::post('/pay_shipping','App\Http\Controllers\api\ShipmentController@pay_shipping')->middleware('api');






 