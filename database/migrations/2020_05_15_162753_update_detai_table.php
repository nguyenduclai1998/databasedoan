<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class UpdateDetaiTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('detai', function (Blueprint $table) {
            $table->bigInteger('sinhvien_id')->nullable()->unsigned();
        });

        Schema::table('detai', function (Blueprint $table) {
            $table->foreign('sinhvien_id')->references('id')->on('users')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('detai');
        Schema::dropIfExists('detai');
    }
}
