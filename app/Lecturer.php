<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Lecturer extends Model
{
    protected $primaryKey = 'nidn';
    public $incrementing = false;
    protected $fillable = [
        'nidn',
        'tahun',
        'id_auth',
        'id_grup',
        'id_jadwal',
        'nama',
        'alamat',
        'no_hp',
        'email',
        'pembimbing',
        'penguji'
    ];
}
