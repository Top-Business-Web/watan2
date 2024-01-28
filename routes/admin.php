<?php

use App\Http\Controllers\Admin\NotificationController;
use Illuminate\Support\Facades\Route;


Route::group(['prefix' => 'admin'], function () {
    Route::get('login', 'AuthController@index')->name('admin.login');
    Route::POST('login', 'AuthController@login')->name('admin.login');
});

Route::group(['prefix' => 'admin', 'middleware' => 'auth:admin'], function () {
    Route::get('/','MainController@index')->name('adminHome');
    Route::get('/send-whatsapp', 'MainController@sendwhatsappMessage');

    #### Admins ####
    Route::resource('admins', 'AdminController');
    Route::POST('delete_admin', 'AdminController@delete')->name('delete_admin');
    Route::get('my_profile', 'AdminController@myProfile')->name('myProfile');


    #### Sliders ####
    Route::resource('sliders', 'SliderController');
    Route::post('slider.delete', 'SliderController@delete')->name('slider.delete');
    Route::post('SliderActivation', 'SliderController@SliderActivation')->name('SliderActivation');

    ### Areas ####
    Route::resource('areas', 'AreaController');
    Route::POST('areaDelete', 'AreaController@delete')->name('area.delete');

    ### subAreas ###
    Route::get('subArea/{id}', 'SubAreaController@index')->name('subArea');
    Route::post('subAreaDelete', 'SubAreaController@delete')->name('subArea.delete');
    Route::get('subArea.create/{country_id}', 'SubAreaController@create')->name('subArea.create');
    Route::post('subArea.store', 'SubAreaController@store')->name('subArea.store');
    Route::get('subArea.edit/{id}', 'SubAreaController@edit')->name('subArea.edit');
    Route::post('subArea.update/{id}', 'SubAreaController@update')->name('subArea.update');


//    ### company ########
//    Route::resource('companies', 'CompanyController');
//    Route::post('companies.delete', 'CompanyController@delete')->name('companies.delete');


    ### users ########
    Route::resource('users', 'UserController');
    Route::post('users.delete', 'UserController@delete')->name('users.delete');
    Route::post('userActivation', 'UserController@userActivation')->name('userActivation');
    Route::get('users/edit/{id}', 'UserController@edit')->name('users.edit');
    Route::put('users/update/{id}', 'UserController@update')->name('users.update');

    ### users_2 ########
    Route::get('users2', 'User_companyController@index')->name('users2');

    ### users_3 ########
    Route::get('users3', 'User_projectController@index')->name('users3');







    ### categories ########
    Route::resource('categories', 'CategoryController');
    Route::post('categories.delete', 'CategoryController@delete')->name('categories.delete');


    ###  subCategories ###################
    Route::get('subCategory/{id}', 'SubCategoryController@index')->name('subCategory');
    Route::post('subCategory', 'SubCategoryController@delete')->name('subCategory.delete');
    Route::get('subCategory.create/{category_id}', 'SubCategoryController@create')->name('subCategory.create');
    Route::post('subCategory.store', 'SubCategoryController@store')->name('subCategory.store');
    Route::get('subCategory.edit/{id}', 'SubCategoryController@edit')->name('subCategory.edit');
    Route::post('subCategory.update/{id}', 'SubCategoryController@update')->name('subCategory.update');


    #### Services  #########

    Route::resource('services','ServiceController');
    Route::POST('service','ServiceController@delete')->name('service.delete');



    #### classification_of_ads  #########

    Route::resource('classification_of_ads','Classification_of_adsController');
    Route::POST('classification_of_ads','Classification_of_adsController@delete')->name('classification_of_ads.delete');
    Route::post('classification_of_ads_store','Classification_of_adsController@store')->name('classification_of_ads.store');

    Route::get('classification_of_ads/edit/{id}', 'Classification_of_adsController@edit')->name('classification_of_ads.edit');

    Route::post('classification_of_ads/update/{id}','Classification_of_adsController@update')->name('classification_of_ads.update');



    Route::resource('rating','RatingController');
    Route::post('rating/store','RatingController@store')->name('rating.store');
    Route::get('rating/edit/{id}', 'RatingController@edit')->name('rating.edit');
    Route::POST('rating','RatingController@delete')->name('rating.delete');
    Route::get('rating/create','RatingController@create')->name('rating.create');
//    Route::post('rating/update/{id}','RatingController@update')->name('rating.update');
//    Route::get('rating','RatingController@index')->name('rating.index');
//

####  posts ################
    Route::resource('posts', 'PostController');
    Route::post('posts.delete', 'PostController@delete')->name('posts.delete');
    Route::get('post/show/{id}', 'PostController@show')->name('post/show');
    Route::get('post-details/{id}', 'PostController@details')->name('post-details');
    Route::post('/update-status', 'PostController@updateStatus')->name('update.status');


####  posts_2 ################
    Route::resource('post_2', 'Post_2Controller');
    Route::post('post_2.delete', 'Post_2Controller@delete')->name('post_2.delete');
//    Route::get('post_2/delete/{id}', 'Post_2Controller@delete')->name('post_2/delete');




    ### projects ########
    Route::resource('projects', 'ProjectController');
    Route::post('project.delete', 'ProjectController@delete')->name('project.delete');
    Route::get('projectProfile/{id}', 'ProjectController@projectProfile')->name('projectProfile');
    Route::get('project/show2/{id}', 'ProjectController@show')->name('project/show2');

    Route::get('project-details/{id}', 'ProjectController@details')->name('project-details');


    #### Blogs   #################
    Route::resource('blogs','BlogController');
    Route::POST('delete/blog','BlogController@delete')->name('blog.delete');



    ####  Report ################
    Route::resource('report', 'ReportController');
    Route::post('report.delete', 'ReportController@delete')->name('report.delete');



    ###  agents ###################
    Route::get('company_agents/{company_id}', 'AgentController@index');
    Route::post('agent/delete', 'AgentController@delete')->name('agents.delete');
//    Route::get('agent/create/{company_id}', 'AgentController@create')->name('agents.create');
//    Route::post('agent/store', 'AgentController@store')->name('agents.store');
//    Route::get('agent/edit/{id}', 'AgentController@edit')->name('agents.edit');
//    Route::post('agent/update/{id}', 'AgentController@update')->name('agents.update');




    ###### Packages ###################
    Route::resource('package','PackageController');
    Route::post('package.delete', 'PackageController@delete')->name('package.delete');

    ###### Packages ###################
    Route::resource('packageUser','PackageUserController');
    Route::post('packageUser.delete', 'PackageUserController@delete')->name('packageUser.delete');


    #### Auth ####
    Route::get('logout', 'AuthController@logout')->name('admin.logout');


//    ### Points #######
//    Route::resource('points', 'PointController');
//    Route::POST('delete_point', 'PointController@delete')->name('delete_point');


    ################### Setting ###################
    Route::resource('settings','SettingController');
    Route::get('setting_about','SettingController@about')->name('setting.about');
    Route::post('setting_about_update/{id}','SettingController@updateabout')->name('update_about');
    Route::get('setting_terms','SettingController@terms')->name('setting.terms');
    Route::post('setting_terms_update/{id}','SettingController@updateterms')->name('update_terms');
    Route::get('setting_privacy','SettingController@privacy')->name('setting.privacy');
    Route::post('setting_privacy_update/{id}','SettingController@updateprivacy')->name('update_privacy');
    Route::get('setting_social','SettingController@social')->name('setting.social');
    Route::post('setting_social_update/{id}','SettingController@updatesocial')->name('update_social');



    #################### contact us ################
    Route::resource('contact_us','ContactUsController');
    Route::POST('delete_contact_us','ContactUsController@delete')->name('delete_contact_us');



    #########
    #################### notifications ################

    Route::get('notifications',[NotificationController::class,"index"])->name('notifications.index');
    Route::get('create-notifications',[NotificationController::class,"create"])->name('notifications.create');
    Route::post('send-notifications',[NotificationController::class,"store"])->name('notifications.store');

    Route::POST('delete-notification', [NotificationController::class,"delete"])->name('notifications.delete');



});










