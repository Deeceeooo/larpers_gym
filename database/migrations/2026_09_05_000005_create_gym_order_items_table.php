<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('gym_order_items', function (Blueprint $table) {
            $table->id();
            $table->foreignId('gym_order_id')->constrained('gym_orders')->cascadeOnDelete();
            $table->foreignId('gym_product_id')->nullable()->constrained('gym_products')->nullOnDelete();
            $table->foreignId('gym_product_option_id')->nullable()->constrained('gym_product_options')->nullOnDelete();
            $table->string('product_name');
            $table->string('option_name');
            $table->decimal('unit_price', 10, 2);
            $table->integer('quantity');
            $table->decimal('subtotal', 10, 2);
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('gym_order_items');
    }
};
