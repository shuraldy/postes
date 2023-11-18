<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCentrosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('centros', function (Blueprint $table) {
            $table->id();
            $table->string('nombre de negocio', 100);
            $table->string('ubicacion', 100);
            $table->string('nombre', 100);
            $table->string('apellindo', 100);
            $table->string('telefono', 100);
            $table->string('estado', 100);
            $table->string('categoria', 100);
            $table->string('centros', 100);
            $table->timestamps(); 
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('centros');
    }
}
