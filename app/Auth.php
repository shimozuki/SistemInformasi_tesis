<?php

namespace App;

use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Contracts\Auth\Authenticatable as AuthenticatableContract;

class Auth extends Authenticatable implements AuthenticatableContract
{
    protected $primaryKey = 'id_auth';
    public $incrementing = false;

    public function getAuthIdentifier()
    {
        return $this->getKey();
    }
}
