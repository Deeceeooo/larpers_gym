<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        if (Schema::hasColumn('gym_customers', 'status')) {
            Schema::table('gym_customers', function (Blueprint $table) {
                $table->dropColumn('status');
            });
        }
    }

    public function down(): void
    {
        if (!Schema::hasColumn('gym_customers', 'status')) {
            Schema::table('gym_customers', function (Blueprint $table) {
                $table->enum('status', ['active', 'inactive', 'blocked'])->default('active');
            });
        }
    }
};
