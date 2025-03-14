<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\TransactionController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/





Route::get('/ProductView',[TransactionController::class,'getProducts']);

Route::get('/ProductView/data',[TransactionController::class,'getProductsData']);

Route::get('/ProductView/difficult',[TransactionController::class,'getProductsDifficult']);

Route::get('/ProductView/challenge',[TransactionController::class,'getProductschallenge']);