<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Electrician extends Model
{
    use HasFactory;
    protected $fillable = ['user'];

    public function user(){
        return $this->belongsTo('App\Models\User','elec_creator','name');
    }

}
