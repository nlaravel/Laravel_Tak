<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateHomesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('homes', function (Blueprint $table) {
            $table->id();
			$table->string("title")->nullable()->comment = "title";
			$table->longText("description")->nullable()->comment = "description";
			$table->integer("city_id")->nullable()->comment = "city_id";
			$table->integer("sales_agent_id")->nullable()->comment = "sales_agent_id";
			$table->integer("bedroom_count")->nullable()->comment = "bedroom_count";
			$table->integer("bathroom_count")->nullable()->comment = "bathroom_count";
            $table->foreign('sales_agent_id')->references('id')->on('sales_agents')->onDelete('cascade');
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
        Schema::dropIfExists('homes');
    }
}