<?php

namespace App\Models\User;

use App\Models\User;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
class Course extends Model
{
    use HasFactory;

    public function user()
    {
        return $this->belongsToMany(User::class);
    }

    public function exams()
    {
        return $this->hasMany(Exam::class, 'course_id', 'id');
    }

    public function notices()
    {
        return $this->hasMany(Notice::class, 'course_id', 'id');
    }
    public function schedules()
    {
        return $this->hasMany(Schedule::class, 'course_id', 'id');
    }
    public function subjects()
    {
        return $this->hasMany(Subject::class, 'course_id', 'id');
    }
    public function classes()
    {
        return $this->hasMany(Classs::class, 'course_id', 'id');
    }
}
