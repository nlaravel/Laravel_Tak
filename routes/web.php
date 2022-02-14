<?php

use Illuminate\Support\Facades\Route;

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
    return view('welcome');
});
//Change Language link
Route::get('lang/{lang}',  [\App\Http\Controllers\LanguageController::class, 'switchLang'])->name('lang.switchLang');


Route::middleware(['auth:sanctum', 'verified'])->prefix('dashboard')->group(function () {

   Route::get('/', [\App\Http\Controllers\DashboardController::class, 'index'])->name('dashboard');
    Route::get('/profile', \App\Http\Livewire\Profile::class)->name('dashboard.profile');
    Route::get('/settings', \App\Http\Livewire\Settings::class)->name('dashboard.settings');
    //role links
    Route::get('/role', \App\Http\Livewire\Roles::class)->name('dashboard.role');
    Route::get('/permission/{id}', \App\Http\Livewire\Permission::class)->name('dashboard.permission');
    //user_management links
    Route::get('/user_management', \App\Http\Livewire\UserManagements::class) ->name('dashboard.user_management');
    Route::get('/user_management/create', \App\Http\Livewire\UserManagementForm::class)->name('dashboard.user_management.create');
    Route::get('/user_management/{id}/edit', \App\Http\Livewire\UserManagementForm::class)  ->name('dashboard.user_management.edit');

    //form cities links
    Route::get('city', \App\Http\Livewire\CityLivewire::class)->name('dashboard.city');
    Route::get('/city/create', \App\Http\Livewire\CityFormLivewire::class)->name('dashboard.city.create');
    Route::get('/city/{id}/edit', \App\Http\Livewire\CityFormLivewire::class)->name('dashboard.city.edit');
    // salesAgent links
    Route::get('salesAgent', \App\Http\Livewire\SalesAgentLivewire::class)->name('dashboard.salesAgent');
    Route::get('/salesAgent/create', \App\Http\Livewire\SalesAgentFormLivewire::class)->name('dashboard.salesAgent.create');
    Route::get('/salesAgent/{id}/edit', \App\Http\Livewire\SalesAgentFormLivewire::class)->name('dashboard.salesAgent.edit');
 // home links

    Route::get('home', \App\Http\Livewire\HomeLivewire::class)->name('dashboard.home');
    Route::get('/home/create', \App\Http\Livewire\HomeFormLivewire::class)->name('dashboard.home.create');
    Route::get('/home/{id}/edit', \App\Http\Livewire\HomeFormLivewire::class)->name('dashboard.home.edit');
    //Translation Links.
    Route::get('/translation-form/create', \App\Http\Livewire\TranslationForm::class)->name('dashboard.translation-form.create');

});

Route::get('/clear-cache-all', function() {
    \Artisan::call('cache:clear');

    \Artisan::call('view:clear');
    \Artisan::call('config:clear');

});




