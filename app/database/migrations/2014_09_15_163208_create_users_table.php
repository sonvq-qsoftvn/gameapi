<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUsersTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('users', function(Blueprint $table)
        {
            $table->increments('_id');
            $table->string('email');
            $table->string('name');
            $table->string('password');
            $table->string('facebook_id')->nullable();
            $table->string('phone_number')->nullable();
            $table->integer('stars_number')->nullable();            
            $table->integer('number_of_free_roll')->nullable()->default(1);   
            $table->integer('level_id')->unsigned()->index();
            $table->softDeletes();
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
		Schema::drop('users');
	}

}
