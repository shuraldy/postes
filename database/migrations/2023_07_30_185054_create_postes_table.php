<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePostesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('postes', function (Blueprint $table) {
            $table->id();
            $table->string('nombre_poste', 100);
            $table->decimal('latitud', 10, 8);
            $table->decimal('longitud', 11, 8);
            $table->date('fecha');
            $table->decimal('altura', 5, 2);
            $table->string('material', 50);
            $table->string('estado', 50);
            $table->string('comuna', 100);
            $table->string('direccion', 200);
            $table->string('nivel_tension', 50);
            $table->string('observacion', 255);
            $table->timestamps(); // Esto agregará automáticamente los campos created_at y updated_at
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('postes');
    }
}
