<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateWebServicesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('web_services', function (Blueprint $table) {
            $table->id(); // Tạo trường ID tự động tăng
            $table->string('name'); // Tên dịch vụ
            $table->string('image'); // Đường dẫn đến ảnh
            $table->decimal('min_price', 30, 2); // Giá tối thiểu
            $table->decimal('max_price', 30, 2); // Giá tối đa
            $table->timestamps(); // Thời gian tạo và cập nhật
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('web_services'); // Xóa bảng nếu cần
    }
}
