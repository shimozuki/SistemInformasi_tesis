<?php

namespace App\Http\Controllers;

use App\Student;
use App\Grade;
use DataTables;
use App\SubmissionProposal;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Session;
use Carbon\Carbon;

class ManageProposalController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if (Session::get('login')) {
            if (Session::get('hak_akses') == 'mahasiswa') {
                $data = DB::table('students')
                    ->join('auths', 'students.id_auth', '=', 'auths.id_auth')
                    ->select('students.*', 'auths.*')
                    ->where('auths.id_auth', Session::get('id_auth'))
                    ->first();
            } else if (Session::get('hak_akses') == 'dosen') {
                $data = DB::table('lecturers')
                    ->join('auths', 'lecturers.id_auth', '=', 'auths.id_auth')
                    ->select('lecturers.*', 'auths.*')
                    ->where('auths.id_auth', Session::get('id_auth'))
                    ->first();
            } else if (Session::get('hak_akses') == 'lppm') {
                $data = DB::table('institutions')
                    ->join('auths', 'institutions.id_auth', '=', 'auths.id_auth')
                    ->select('institutions.*', 'auths.*')
                    ->where('auths.id_auth', Session::get('id_auth'))
                    ->first();
            } else if (Session::get('hak_akses') == 'prodi') {
                $data = DB::table('departments')
                    ->join('auths', 'departments.id_auth', '=', 'auths.id_auth')
                    ->select('departments.*', 'auths.*')
                    ->where('auths.id_auth', Session::get('id_auth'))
                    ->first();
            }
            return view('manage_proposal/index', compact('data'));
        } else {
            return redirect('login');
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create() {}

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {

        $data = DB::table('submissions_proposal')
            ->join('students', 'submissions_proposal.nim', '=', 'students.nim')
            ->select('students.*', 'submissions_proposal.*')
            ->where('students.nim', $id)
            ->get();
        return view('manage_proposal.detail', compact('data'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = SubmissionProposal::findOrFail($id);
        return view('manage_proposal.form', compact('data'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function updateStatus(Request $request, $id_pp)
    {
        $request->validate([
            'topik_tesis' => 'required|in:topik_tesis1,topik_tesis2,topik_tesis3',
            'status' => 'required|in:proses,tolak,terima',
        ]);

        $submission = SubmissionProposal::findOrFail($id_pp);

        $statusColumn = str_replace('topik_tesis', 'status_topik', $request->topik_tesis);

        $submission->$statusColumn = $request->status;

        if ($request->topik_tesis == 'topik_tesis1') {
            $submission->status_topik2 = 'tolak';
            $submission->status_topik3 = 'tolak';
        } elseif ($request->topik_tesis == 'topik_tesis2') {
            $submission->status_topik1 = 'tolak';
            $submission->status_topik3 = 'tolak';
        } elseif ($request->topik_tesis == 'topik_tesis3') {
            $submission->status_topik1 = 'tolak';
            $submission->status_topik2 = 'tolak';
        }

        $submission->save();

        return redirect()->route('manage_proposal')->with('success', 'Status berhasil diperbarui.');
    }





    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }


    public function dataTable()
    {
        if (Session::get('login')) {
            if (Session::get('hak_akses') == 'mahasiswa') {
                $ambil = DB::table('students')
                    ->join('auths', 'students.id_auth', '=', 'auths.id_auth')
                    ->select('students.*', 'auths.*')
                    ->where('auths.id_auth', Session::get('id_auth'))
                    ->first();
            } else if (Session::get('hak_akses') == 'dosen') {
                $ambil = DB::table('lecturers')
                    ->join('auths', 'lecturers.id_auth', '=', 'auths.id_auth')
                    ->select('lecturers.*', 'auths.*')
                    ->where('auths.id_auth', Session::get('id_auth'))
                    ->first();
            } else if (Session::get('hak_akses') == 'lppm') {
                $ambil = DB::table('institutions')
                    ->join('auths', 'institutions.id_auth', '=', 'auths.id_auth')
                    ->select('institutions.*', 'auths.*')
                    ->where('auths.id_auth', Session::get('id_auth'))
                    ->first();
            } else if (Session::get('hak_akses') == 'prodi') {
                $ambil = DB::table('departments')
                    ->join('auths', 'departments.id_auth', '=', 'auths.id_auth')
                    ->select('departments.*', 'auths.*')
                    ->where('auths.id_auth', Session::get('id_auth'))
                    ->first();
            }
        }
        $data = DB::table('submissions_proposal')
            ->join('students', 'submissions_proposal.nim', '=', 'students.nim')
            ->select('students.*', 'submissions_proposal.*')
            ->where([['status', '=', 'proses']])
            ->get();
        return DataTables::of($data)
            ->addColumn('status', function ($data) {
                return view('submission_proposal.status', [
                    'data' => $data
                ]);
            })
            ->addColumn('action', function ($data) {
                return view('layout._action_manageproposal', [
                    'data' => $data,
                    'url_edit' => route('manage_proposal.edit', $data->id_pp)
                ]);
            })
            ->addColumn('created_at', function ($data) {
                return Carbon::parse($data->created_at)->format('l, d F Y'); // Format created_at
            })
            ->addColumn('updated_at', function ($data) {
                return Carbon::parse($data->updated_at)->format('l, d F Y'); // Format updated_at
            })
            ->addIndexColumn()
            ->rawColumns(['krs', 'khs', 'proposal', 'status', 'action'])
            ->make(true);
    }

    public function dataTable2()
    {
        if (Session::get('login')) {
            if (Session::get('hak_akses') == 'mahasiswa') {
                $ambil = DB::table('students')
                    ->join('auths', 'students.id_auth', '=', 'auths.id_auth')
                    ->select('students.*', 'auths.*')
                    ->where('auths.id_auth', Session::get('id_auth'))
                    ->first();
            } else if (Session::get('hak_akses') == 'dosen') {
                $ambil = DB::table('lecturers')
                    ->join('auths', 'lecturers.id_auth', '=', 'auths.id_auth')
                    ->select('lecturers.*', 'auths.*')
                    ->where('auths.id_auth', Session::get('id_auth'))
                    ->first();
            } else if (Session::get('hak_akses') == 'lppm') {
                $ambil = DB::table('institutions')
                    ->join('auths', 'institutions.id_auth', '=', 'auths.id_auth')
                    ->select('institutions.*', 'auths.*')
                    ->where('auths.id_auth', Session::get('id_auth'))
                    ->first();
            } else if (Session::get('hak_akses') == 'prodi') {
                $ambil = DB::table('departments')
                    ->join('auths', 'departments.id_auth', '=', 'auths.id_auth')
                    ->select('departments.*', 'auths.*')
                    ->where('auths.id_auth', Session::get('id_auth'))
                    ->first();
            }
        }
        $data = DB::table('students')->where('students.jurusan', $ambil->jurusan)->get();
        return DataTables::of($data)
            ->addColumn('action', function ($data) {
                return view('layout._action_riwayatpp', [
                    'data' => $data,
                    'url_detail' => route('manage_proposal.show', $data->nim),
                ]);
            })
            ->addIndexColumn()
            ->rawColumns(['action'])
            ->make(true);
    }
}
