<?php

namespace App;

use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Contracts\Auth\Authenticatable as AuthenticatableContract;

class Auth extends Authenticatable implements AuthenticatableContract
{
    protected $primaryKey = 'id_auth';
    public $incrementing = false;

    protected $fillable = [
        'id_auth',
        'username',
        'password',
        'hak_akses',
        'active_status',
        'avatar',
        'dark_mode',
        'messenger_color',
        'name',
        'email',
    ];


    public function getAuthIdentifier()
    {
        return $this->getKey();
    }
}
