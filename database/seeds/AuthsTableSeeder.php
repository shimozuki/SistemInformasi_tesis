<?php  
  
namespace Database\Seeders;  
  
use Illuminate\Database\Seeder;  
use Illuminate\Support\Facades\DB;  
  
class AuthsTableSeeder extends Seeder  
{  
    public function run()  
    {  
        DB::table('auths')->insert([  
            [  
                'id_auth' => 'A001',  
                'username' => 'mahasiswa1',  
                'password' => bcrypt('password1'), // Menggunakan bcrypt untuk hashing password  
                'hak_akses' => 'mahasiswa',  
                'created_at' => now(),  
                'updated_at' => now(),  
            ],  
            [  
                'id_auth' => 'A002',  
                'username' => 'dosen1',  
                'password' => bcrypt('password2'),  
                'hak_akses' => 'dosen',  
                'created_at' => now(),  
                'updated_at' => now(),  
            ],  
            [  
                'id_auth' => 'A003',  
                'username' => 'prodi1',  
                'password' => bcrypt('password3'),  
                'hak_akses' => 'prodi',  
                'created_at' => now(),  
                'updated_at' => now(),  
            ],  
            [  
                'id_auth' => 'A004',  
                'username' => 'lppm1',  
                'password' => bcrypt('password4'),  
                'hak_akses' => 'lppm',  
                'created_at' => now(),  
                'updated_at' => now(),  
            ],  
        ]);  
    }  
}  
//php artisan db:seed --class=AuthsTableSeeder  
