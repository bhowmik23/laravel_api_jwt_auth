<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();
        \App\Models\User\Course::factory(10)->create();
        \App\Models\User\Subject::factory(10)->create();
        \App\Models\User\Notice::factory(10)->create();
        // \App\Models\User\Exam::factory(10)->create();
        // \App\Models\User\Option::factory(40)->create();
        // \App\Models\User\Question::factory(10)->create();

        // $this->call(UserSeeder::class);
    }
}
