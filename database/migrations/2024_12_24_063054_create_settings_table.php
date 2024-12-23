<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSettingsTable extends Migration
{
    public function up()
    {
        Schema::create('settings', function (Blueprint $table) {
            $table->id();
            $table->string('avatar')->nullable();
            $table->string('icon')->nullable();
            $table->string('banner')->nullable();
            $table->string('website_name')->nullable();
            $table->text('website_description')->nullable();
            $table->string('prefix')->nullable();
            $table->decimal('min_deposit', 10, 2)->default(0);
            $table->string('account_number')->nullable();
            $table->string('account_name')->nullable();
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('settings');
    }
}
