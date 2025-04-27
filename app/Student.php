<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Student extends Model
{

    protected $primaryKey = 'nim';
    public $incrementing = false;
    protected $fillable = [
        'nim',
        'id_auth',
        'id_jurusan',
        'id_grup',
        'id_jadwal',
        'nama',
        'jk',
        'alamat',
        'no_hp',
        'jurusan',
        'email',
        'tahun',
    ];
}
