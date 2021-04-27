<?php

namespace App\Models\User;

use App\Models\User;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Course extends Model
{
    use HasFactory;

    protected $guarded = [];

    public function user()
    {
        return $this->belongsToMany(User::class);
    }

    public function exams()
    {
        return $this->hasMany(Exam::class);
    }

    public function notices()
    {
        return $this->hasMany(Notice::class);
    }
}
