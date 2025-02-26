<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class user extends Model
{
    protected $table = 'auths';
    protected $primaryKey = 'id_auth';
    public $incrementing = false;
}
