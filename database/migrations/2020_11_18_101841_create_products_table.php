<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->string('product_name');
            $table->string('model')->nullable();
            $table->string('imei')->nullable();
            $table->string('price')->nullable();
            $table->string('category');
            $table->string('picture')->nullable();
            $table->string('description')->nullable();
            $table->string('stock_id')->nullable();
            $table->string('stock_quality', 100)->nullable()->default('0');
            $table->string('added_by');
            $table->string('updated_by')->nullable();
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
        Schema::dropIfExists('products');
    }
}
