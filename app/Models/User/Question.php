<?php

namespace App\Models\User;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Question extends Model
{
    use HasFactory;

    protected $guarded = [];

    public function options()
    {
        return $this->hasMany(Option::class, 'question_id', 'id');
    }

    public function exam()
    {
        return $this->belongsToMany(Exam::class);
    }

    public function resultDetail()
    {
        return $this->belongsTo(ResultDetail::class);
    }
}
