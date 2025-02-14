<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddStatusTopikColumnsToSubmissionsProposalTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('submissions_proposal', function (Blueprint $table) {
            $table->enum('status_topik1', ['proses', 'terima', 'tolak'])->nullable();
            $table->enum('status_topik2', ['proses', 'terima', 'tolak'])->nullable();
            $table->enum('status_topik3', ['proses', 'terima', 'tolak'])->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('submissions_proposal', function (Blueprint $table) {
            $table->dropColumn(['status_topik1', 'status_topik2', 'status_topik3']);
        });
    }
}
