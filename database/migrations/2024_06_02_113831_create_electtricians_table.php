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
        Schema::create('electtricians', function (Blueprint $table) {
            $table->id();
            $table->string('elec_name');
            $table->string('Elec_email')->unique();
            $table->timestamp('email_verified_at')->nullable();
            $table->string('password'); 
            $table->string('elec_phone')->nullable();
            $table->boolean('is_admin')->nullable();
            $table->string('elec_image')->nullable();
            $table->integer('elec_nid_number')->nullable();
            $table->string('elce_nid_pic')->nullable();
            $table->string('elec_emarks', 50)->nullable();
            $table->string('elec_creator', 50)->nullable();
            $table->string('elec_editor', 50)->nullable();
            $table->string('elec_remarks', 50)->nullable();
            $table->integer('status')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('electtricians');
    }
};
