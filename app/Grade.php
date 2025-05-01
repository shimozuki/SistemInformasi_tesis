<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Grade extends Model
{
    protected $primaryKey = 'id_nilai';
    public $incrementing = false;
    protected $fillable = [
        'id_nilai',
        'nim',
        'nilai_bimbingan',
        'nilai_sidang',
        'nilai_pengajuan',
        'berita_acara',
    ];

    public function student()
    {
        return $this->belongsTo(Student::class, 'nim', 'nim');
    }
}
