<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMmagangsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('mmagangs', function (Blueprint $table) {
            $table->id();
            $table->string('npm')->unique();
            $table->string('nama_lengkap');
            $table->string('jurusan');
            $table->string('perguruan_tinggi');
            $table->string('nomor_handphone')->unique();
            $table->string('email')->unique();
            $table->string('password');
            $table->string('devisi');
            $table->string('photo');
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
        Schema::dropIfExists('mmagangs');
    }
}
