<?php

namespace App\Imports;

use App\Student;
use App\Auth;
use Illuminate\Support\Facades\DB;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use Illuminate\Support\Str;

class StudentsImport implements ToModel, WithHeadingRow
{
    public function model(array $row)
    {
        $id_auth = 'A' . date('dmy') . Str::random(3);

        // Insert Data Student
        $student = Student::create([
            'nim' => $row['nim'],
            'id_auth' => $id_auth,
            'nama' => $row['nama'],
            'jk' => $row['jk'],
            'alamat' => $row['alamat'],
            'email' => $row['nim'] . '@uts.ac.id',
            'no_hp' => $row['no_hp'],
            'jurusan' => $row['jurusan'],
            'tahun' => $row['tahun'],
            'created_at' => now()
        ]);

        // // Insert Data Auth
        // Auth::create([
        //     'id_auth' => $id_auth,
        //     'username' => $row['nim'],
        //     'password' => bcrypt($row['nim'] . 'Aa*'),
        //     'hak_akses' => 'mahasiswa',
        //     'created_at' => now(),
        //     'name' => $row['nama'],
        //     'email' => $row['nim'] . '@uts.ac.id',
        // ]);

        return $student;
    }
}
