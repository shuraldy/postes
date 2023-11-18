<?php

use Illuminate\Support\Facades\Route;
// Agregamos los siguientes controladores
use App\Http\Controllers\HomeController;
use App\Http\Controllers\RolController;
use App\Http\Controllers\UsuarioController;
use App\Http\Controllers\BlogController;
use App\Http\Controllers\ConsultaController;
use App\Http\Controllers\AuditoriaController; // Agregamos el controlador de consulta
use App\Http\Controllers\PerfilController;
use App\Http\Controllers\CentroController;// se agrega controlador de centro comercial

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

Route::get('/home', [HomeController::class, 'index'])->name('home');

Auth::routes();

Route::get('/home', [HomeController::class, 'index'])->name('home');

// Y creamos un grupo de rutas protegidas para los controladores
Route::group(['middleware' => ['auth']], function() {
    Route::resource('roles', RolController::class);
    Route::resource('usuarios', UsuarioController::class);
    Route::resource('blogs', BlogController::class);
    Route::resource('postes', PosteController::class);
    Route::resource('consulta', ConsultaController::class);
    Route::resource('mapa', MapaController::class);
    Route::resource('auditoria', AuditoriaController::class);
    Route::resource('perfil', PerfilController::class);
    Route::resource('centros', CentroController::class);

    // Nueva ruta de consulta
    // Route::get('/consulta', [ConsultaController::class, 'index'])->name('consulta');
});
