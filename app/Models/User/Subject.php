<?php

namespace App\Models\User;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Subject extends Model
{
    use HasFactory;

    protected $guarded = [];

    public function exams()
    {
        return $this->hasMany(Exam::class);
    }

    public function notices()
    {
        return $this->hasMany(Notice::class);
    }

    public function schedules()
    {
        return $this->hasMany(Schedule::class);
    }
}
