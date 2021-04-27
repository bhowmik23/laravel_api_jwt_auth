<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateClasssesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('classses', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('sub_id');
            $table->string('title');
            $table->string('type')->nullable();
            $table->string('banner')->nullable();
            $table->string('url_link')->nullable();
            $table->text('description')->nullable();
            $table->string('date')->nullable();;
            $table->string('time')->nullable();;
            $table->integer('is_active')->default(1);

            $table->foreign('sub_id')
                ->references('id')
                ->on('subjects')
                ->onDelete('cascade');
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
        Schema::dropIfExists('classes');
    }
}
