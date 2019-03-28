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

//Route::get('/', function () {
//    return view('public.index');
//});

Route::get('/', 'BlogController@index');

Auth::routes();
Route::get('/home', 'HomeController@index')->name('home');
// Route::get('/{anypath}', 'HomeController@index')->where('path', '.*');
Route::group(['middleware' => ['auth']], function () {
    //Category
    Route::post('/add-category', 'CategoryController@addCategory');
    Route::get('/category', 'CategoryController@categoryList');
    Route::get('/delete-cat/{id}', 'CategoryController@deleteCat');
    Route::get('/editcategory/{id}', 'CategoryController@editcategory');
    Route::post('/update-category/{id}', 'CategoryController@updateCategory');
    Route::get('/deletecategory/{id}','CategoryController@selected_category');

    // Post
    Route::get('/posts', 'PostController@all_posts');
    Route::post('/savepost', 'PostController@savePost');
    Route::get('/delete-post/{id}', 'PostController@deletePost');
    Route::get('/edit-post/{id}', 'PostController@editpost');
    Route::post('/update-post/{id}', 'PostController@updatePost');

});

// frontEnd Controller
Route::get('/blogpost','BlogController@get_all_blog_post');
Route::get('/singlepost/{id}','BlogController@getpost_by_id');
Route::get('/categories','BlogController@get_all_category');
Route::get('/categorypost/{id}','BlogController@get_all_post_by_cat_id');
Route::get('/search','BlogController@search_post');
Route::get('/latestpost','BlogController@latest_post');
