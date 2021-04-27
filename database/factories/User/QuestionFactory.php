<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

namespace Database\Factories\User;

use App\Models\User\Question;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;
use Laravel\Jetstream\Features;

class QuestionFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Question::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'exam_id' => $this->faker->numberBetween(1, 10),
            'question' => $this->faker->regexify('[A-Za-z0-9]{20}'),
            'correct_ans' => $this->faker->numberBetween(1, 10),
            'order' => $this->faker->randomElement([1, 2, 3, 4]),
            'is_active' => $this->faker->numberBetween(0, 1),
            'created_by' => $this->faker->numberBetween(1, 10),
            'updated_by' => $this->faker->numberBetween(1, 10),
        ];
    }
}
