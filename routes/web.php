<?php

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
//FrontEnd
Route::get('/', function () {
    return view('frontend.index');
});
Route::get('/about', function () {
	return view('frontend.about');
});
Route::get('/product/{barangs}', 'FrontendController@singleproduct')->name('singleproduct');

//BackEnd
Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::group(['prefix'=>'/admin', 'middleware'=>['auth']], function () {
    Route::resource('/kategori', 'KategoriController');
    Route::resource('/barang', 'BarangController');
    Route::resource('/galeri', 'GaleriController');
});
Route::resource('index','FrontendController');
Route::get('/','FrontendController@barang')->name('barang');
Route::resource('index','FrontendController');
Route::get('about','FrontendController@about')->name('about');
