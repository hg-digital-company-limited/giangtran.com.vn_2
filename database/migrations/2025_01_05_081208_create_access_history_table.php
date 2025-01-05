<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAccessHistoryTable extends Migration
{
    public function up()
    {
        Schema::create('access_history', function (Blueprint $table) {
            $table->id();
            $table->date('date'); // Trường cho ngày
            $table->integer('visit_count'); // Trường cho số lượt truy cập
            $table->timestamps(); // Trường created_at và updated_at
        });
    }

    public function down()
    {
        Schema::dropIfExists('access_history');
    }
}
