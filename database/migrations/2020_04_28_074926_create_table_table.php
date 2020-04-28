<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTableTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('role', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('rolename');
            $table->timestamps();
        });

        Schema::create('thongtin', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->date('ngaysinh')->nullable();
            $table->bigInteger('sdt')->nullable();
            $table->string('masv')->nullable();
            $table->char('gioitinh')->nullable();
            $table->string('avatar')->nullable();
            $table->bigInteger('user_id')->unsigned();
            $table->timestamps();
        });

        Schema::create('chuyennganh', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('tenchuyennganh');
            $table->text('mota')->nullable();
            $table->string('slug')->nullable();
            $table->timestamps();
        });

        Schema::create('linhvuc', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('tenlinhvuc');
            $table->text('mota')->nullable();
            $table->string('slug')->nullable();
            $table->timestamps();
        });

        Schema::create('detai', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('tendetai');
            $table->text('mota')->nullable();
            $table->string('slug')->nullable();
            $table->bigInteger('user_id')->unsigned();
            $table->bigInteger('chuyennganh_id')->unsigned();
            $table->bigInteger('linhvuc_id')->unsigned();
            $table->timestamps();
        });

        Schema::create('dexuatdetai', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('tendetai');
            $table->text('mota')->nullable();
            $table->string('slug')->nullable();
            $table->bigInteger('user_id')->unsigned();
            $table->bigInteger('chuyennganh_id')->unsigned();
            $table->bigInteger('linhvuc_id')->unsigned();
            $table->timestamps();
        });

        Schema::create('nguyenvong1', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('user_id')->unsigned();
            $table->bigInteger('detai_id')->nullable()->unsigned();
            $table->bigInteger('detaidexuat_id')->nullable()->unsigned();
            $table->bigInteger('linhvuc_id')->unsigned();
            $table->boolean('trangthai')->default(0);
            $table->timestamps();
        });
        
        Schema::create('nguyenvong2', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('user_id')->unsigned();
            $table->bigInteger('detai_id')->nullable()->unsigned();
            $table->bigInteger('detaidexuat_id')->nullable()->unsigned();
            $table->bigInteger('linhvuc_id')->unsigned();
            $table->boolean('trangthai')->default(0);
            $table->timestamps();
        });

        Schema::create('tintuc', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('tenbaiviet');
            $table->text('noidung');
            $table->string('slug')->nullable();
            $table->bigInteger('chuyennganh_id')->unsigned();
            $table->bigInteger('user_id')->unsigned();
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
        Schema::dropIfExists('role');
        Schema::dropIfExists('thongtin');
        Schema::dropIfExists('chuyennganh');
        Schema::dropIfExists('linhvuc');
        Schema::dropIfExists('detai');
        Schema::dropIfExists('dexuatdetai');
        Schema::dropIfExists('nguyenvong1');
        Schema::dropIfExists('nguyenvong2');
        Schema::dropIfExists('tintuc');
    }
}
