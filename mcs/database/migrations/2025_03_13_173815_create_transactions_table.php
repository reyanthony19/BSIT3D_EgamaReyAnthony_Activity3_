<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('transactions', function (Blueprint $table) {
            $table->id();
    
            $table->integer('price');
            $table->enum('status', ['pending', 'processing', 'completed', 'cancelled']);
            $table->string('type');
            $table->timestamp('date_completed')->nullable();
            $table->string("contact_number", 11)->nullable();
            $table->string("Address")->nullable();
            $table->string('pickup_date')->nullable();
            $table->foreignId('users_id')->constrained('users')->onDelete('cascade');
          

            
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('transactions');
    }
};
