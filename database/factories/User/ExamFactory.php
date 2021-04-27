<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

namespace Database\Factories\User;

use App\Models\User\Exam;
use App\Models\User\Course;
use App\Models\User\Subject;
use Illuminate\Database\Eloquent\Factories\Factory;

class ExamFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Exam::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'course_id' => $this->faker->randomElement(Course::pluck('id')->toArray()),
            'subject_id' => $this->faker->randomElement(Subject::pluck('id')->toArray()),
            'exam_type' => $this->faker->numberBetween(1, 10),
            'title' => $this->faker->regexify('[A-Za-z0-9]{20}'),
            'banner' => $this->faker->imageUrl('60', '60'),
            'duration' => $this->faker->numberBetween(10, 100),
            'total_question' => $this->faker->numberBetween(10, 100),
            'marks_per_question' => $this->faker->numberBetween(1, 2),
            'negative_marks' => $this->faker->numberBetween(1, 2),
            'date' => $this->faker->date,
            'order' => $this->faker->numberBetween(1, 4),
            'is_active' => $this->faker->numberBetween(0, 1),
            'created_by' => $this->faker->numberBetween(0, 1),
            'updated_by' => $this->faker->numberBetween(0, 1),
        ];
    }
}
