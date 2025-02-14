<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSubmissionsProposalTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('submissions_proposal', function (Blueprint $table) {
            $table->bigIncrements('id_pp');
            $table->string('nim',10);
            $table->text('topik_tesis');
            $table->text('file_babasplagiasi');
            $table->text('file_bebas_administrasi');
            $table->text('file_pasfoto');
            $table->enum('status',['proses','terima','tolak']);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('submissions_proposal');
    }
}
