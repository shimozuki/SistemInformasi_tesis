<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Group extends Model
{
    protected $table = 'groups';
    protected $primaryKey = 'id_grup';
    protected $fillable = ['nama_grup', 'tahun'];
}
