<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateRelationshipTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->foreign('role_id')->references('id')->on('role');
        });

        Schema::table('thongtin', function (Blueprint $table) {
            $table->foreign('user_id')->references('id')->on('users');
        });

        Schema::table('detai', function (Blueprint $table) {
            $table->foreign('user_id')->references('id')->on('users');
            $table->foreign('chuyennganh_id')->references('id')->on('chuyennganh');
            $table->foreign('linhvuc_id')->references('id')->on('linhvuc');
        });

        Schema::table('dexuatdetai', function (Blueprint $table) {
            $table->foreign('user_id')->references('id')->on('users');
            $table->foreign('chuyennganh_id')->references('id')->on('chuyennganh');
            $table->foreign('linhvuc_id')->references('id')->on('linhvuc');
        });

        Schema::table('nguyenvong1', function (Blueprint $table) {
            $table->foreign('user_id')->references('id')->on('users');
            $table->foreign('detai_id')->references('id')->on('detai');
            $table->foreign('detaidexuat_id')->references('id')->on('dexuatdetai');
            $table->foreign('linhvuc_id')->references('id')->on('linhvuc');
        });

        Schema::table('nguyenvong2', function (Blueprint $table) {
            $table->foreign('user_id')->references('id')->on('users');
            $table->foreign('detai_id')->references('id')->on('detai');
            $table->foreign('detaidexuat_id')->references('id')->on('dexuatdetai');
            $table->foreign('linhvuc_id')->references('id')->on('linhvuc');
        });

        Schema::table('tintuc', function (Blueprint $table) {
            $table->foreign('user_id')->references('id')->on('users');
            $table->foreign('chuyennganh_id')->references('id')->on('chuyennganh');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('users');
        Schema::dropIfExists('thongtin');
        Schema::dropIfExists('detai');
        Schema::dropIfExists('dexuatdetai');
        Schema::dropIfExists('nguyenvong1');
        Schema::dropIfExists('nguyenvong2');
        Schema::dropIfExists('tintuc');
    }
}
