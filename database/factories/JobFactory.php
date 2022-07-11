<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class JobFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'summary' => $this->faker->sentence(),
            'description' => $this->faker->paragraph(5),
            'status' => 'open',
            'property_id' => rand(1,10)
        ];
    }
}
