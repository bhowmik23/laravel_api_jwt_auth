<?php

namespace App\Models\User;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Classs extends Model
{
    use HasFactory;

    protected $guarded = [];

    public function classComment()
    {
        return $this->hasMany(ClassComment::class);
    }
}
