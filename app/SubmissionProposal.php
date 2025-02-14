<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SubmissionProposal extends Model
{
    protected $primaryKey = 'id_pp';
    public $incrementing = false;
    protected $table = 'submissions_proposal';
    public $timestamps = true;

    protected $fillable = [
        'nim',
        'topik_tesis1',
        'topik_tesis2',
        'topik_tesis3',
        'status_topik1',
        'status_topik2',
        'status_topik3',
    ];
}
