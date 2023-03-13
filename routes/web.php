<?php
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\GroupUserController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\NewsController;
use App\Http\Controllers\User_newsController;
use App\Http\Controllers\AuthController;

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
Route::get('/',[NewsController::class,'NewsConfirm'])->name('home');
Route::get('detail/{id}',[NewsController::class,'NewsDetail'])->name('detail');
// Route::get('/', function () {
//     return view('layouts.index');
// })->name('home');
// Login
Route::get('login',[AuthController::class,'getLogin'])->name('getLogin');
Route::post('login',[AuthController::class,'postLogin'])->name('postLogin');
Route::get('register',[AuthController::class,'getRegister'])->name('getRegister');
Route::post('register',[AuthController::class,'postRegister'])->name('postRegister');
Route::get('InforUser/{id}',[AuthController::class,'getInforUser'])->name('getInforUser');
Route::post('InforUser',[AuthController::class,'postInforUser'])->name('postInforUser');
Route::get('logout',[AuthController::class,'logout'])->name('logout');

// Login with admin
Route::prefix('auth-Admin')->middleware('AdminLogin')->group(function(){
Route::prefix('user')->name('user.')->group(function(){
    Route::get('/',[UserController::class,'index'])->name('index');
    Route::get('/create',[UserController::class,'create'])->name('create');
    Route::post('/create',[UserController::class,'store'])->name('store');
    Route::get('/edit/{id}',[UserController::class,'edit'])->name('edit');
    Route::post('/update',[UserController::class,'update'])->name('update');
    Route::get('/delete/{id}',[UserController::class,'destroy'])->name('delete');
});
Route::prefix('/news-A')->name('news-A.')->group(function(){
    Route::get('/',[NewsController::class,'index'])->name('index');
    Route::get('/create',[NewsController::class,'create'])->name('create');
    Route::post('/create',[NewsController::class,'store'])->name('store');
    Route::get('/edit/{id}',[NewsController::class,'edit'])->name('edit');
    Route::post('/update',[NewsController::class,'update'])->name('update');
    Route::get('/delete/{id}',[NewsController::class,'destroy'])->name('destroy');
    Route::get('your',[NewsController::class,'YourList'])->name('yourList');
    Route::get('/edit_your/{id}',[NewsController::class,'edit_your'])->name('edit_your');
    Route::post('/update_your',[NewsController::class,'update_your'])->name('update_your');
    });
});
//Login with users
Route::prefix('auth')->middleware('checkAdminLogin')->group(function(){
    Route::prefix('/news')->name('news.')->group(function(){
        Route::get('/',[User_newsController::class,'index'])->name('index');
        Route::get('/create',[User_newsController::class,'create'])->name('create');
        Route::post('/create',[User_newsController::class,'store'])->name('store');
        Route::get('/edit/{id}',[User_newsController::class,'edit'])->name('edit');
        Route::post('/update',[User_newsController::class,'update'])->name('update');
        Route::get('/delete/{id}',[User_newsController::class,'destroy'])->name('destroy');
        Route::get('your',[User_newsController::class,'YourList'])->name('yourList');
        Route::get('/edit_your/{id}',[NewsController::class,'edit_your'])->name('edit_your');
        Route::post('/update_your',[User_newsController::class,'update_your'])->name('update_your');
    });
});
