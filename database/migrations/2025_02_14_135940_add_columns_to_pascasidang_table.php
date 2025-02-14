<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddColumnsToPascasidangTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('pascasidang', function (Blueprint $table) {
            $table->string('angkatan', 255)->nullable();
            $table->string('agama', 255)->nullable();
            $table->string('konsentrasi', 255)->nullable();
            $table->text('judul_tesis_inggris')->nullable();
            $table->text('judul_tesis_indonesia')->nullable();
            $table->string('file_tesis')->nullable();
            $table->string('file_kartu_bimbingan')->nullable();
            $table->string('file_halaman')->nullable();
            $table->string('pasfoto', 255)->nullable();
            $table->string('bebas_administrasi', 255)->nullable();
            $table->string('plagiasi', 255)->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('pascasidang', function (Blueprint $table) {
            $table->dropColumn([
                'angkatan',
                'agama',
                'konsentrasi',
                'judul_tesis_inggris',
                'judul_tesis_indonesia',
                'file_tesis',
                'file_kartu_bimbingan',
                'file_halaman',
                'pasfoto',
                'bebas_administrasi',
                'plagiasi',
            ]);
        });
    }
}
