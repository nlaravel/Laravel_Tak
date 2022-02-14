<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSalesAgentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('sales_agents', function (Blueprint $table) {
            $table->id();
			$table->string("image")->nullable()->comment ="image";
			$table->string("name")->nullable()->comment = "name";
			$table->string("mobile")->nullable()->comment = "mobile";
			$table->string("phone")->nullable()->comment = "phone";
			$table->string("email")->nullable()->comment = "email";
			$table->string("whatsapp")->nullable()->comment = "whatsapp";
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
        Schema::dropIfExists('sales_agents');
    }
}