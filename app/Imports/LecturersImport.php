<?php

namespace App\Imports;

use App\Lecturer;
use App\Auth;
use Illuminate\Support\Facades\DB;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use Illuminate\Support\Str;

class LecturersImport implements ToModel, WithHeadingRow
{
    public function model(array $row)
    {
        $id_auth = 'A' . date('dmy') . Str::random(3);

        DB::beginTransaction();

        try {
            // Insert data dosen
            $lecturer = Lecturer::create([
                'nidn' => $row['nidn'],
                'id_auth' => $id_auth,
                'nama' => $row['nama'],
                'alamat' => $row['alamat'],
                'email' => $row['nidn'] . '@uts.ac.id',
                'no_hp' => $row['no_hp'],
                'pembimbing' => $row['pembimbing'],
                'penguji' => $row['penguji'],
                'created_at' => now()
            ]);

            // Insert data autentikasi
            Auth::create([
                'id_auth' => $id_auth,
                'username' => $row['nidn'],
                'password' => bcrypt($row['nidn'] . 'Dsn*'),
                'hak_akses' => 'dosen',
                'created_at' => now(),
                'name' => $row['nama'],
                'email' => $row['nidn'] . '@uts.ac.id',
            ]);

            DB::commit();
        } catch (\Exception $e) {
            DB::rollback();
            // Jika ada error, bisa dilemparkan
            return null;
        }

        return $lecturer;
    }
}
