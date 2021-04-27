<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

namespace Database\Factories\User;

use App\Models\User\Course;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;
use Laravel\Jetstream\Features;

class CourseFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Course::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'subscription_id' => $this->faker->unique()->numberBetween(100, 10000),
            'title' => $this->faker->regexify('[A-Za-z0-9]{20}'),
            'banner' => $this->faker->imageUrl('60', '60'),
            'short_desc' => $this->faker->regexify('[A-Za-z0-9]{20}'),
            'description' => $this->faker->regexify('[A-Za-z0-9]{20}'),
            'is_active' => $this->faker->randomElement([0, 1]),
            'created_by' => $this->faker->numberBetween(1, 10),
            'updated_by' => $this->faker->numberBetween(1, 10),
        ];
    }
}
