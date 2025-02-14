<?php

namespace App\Http\Controllers;

use App\SubmissionProposal;
use App\Grade;
use DataTables;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Storage;
use Carbon\Carbon;

class SubmissionProposalController extends Controller
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
            compact('data');
            $data2 = Grade::where('nim', $data->nim)->first();

            return view('submission_proposal/index', compact('data', 'data2'));
        } else {
            return redirect('login');
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('submission_proposal.form');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $id_pp = 'PP' . date('dmy') . Str::random(2);

        // Validasi input
        $this->validate(
            $request,
            [
                'topik_tesis1' => 'required',
                'topik_tesis2' => 'required',
                'topik_tesis3' => 'required',
            ],
            [
                'topik_tesis1.required' => 'Kolom topik tesis 1 wajib diisi',
                'topik_tesis2.required' => 'Kolom topik tesis 2 wajib diisi',
                'topik_tesis3.required' => 'Kolom topik tesis 3 wajib diisi',
            ]
        );

        // Menyimpan data ke dalam tabel
        $data = SubmissionProposal::create([
            'nim' => Session::get('username'),
            'topik_tesis1' => $request->topik_tesis1,
            'topik_tesis2' => $request->topik_tesis2,
            'topik_tesis3' => $request->topik_tesis3,
            'status_topik1' => 'proses',
            'status_topik2' => 'proses',
            'status_topik3' => 'proses',
        ]);

        // Menyimpan pesan sukses atau error ke session
        if ($data) {
            $request->session()->flash('success', 'Data berhasil ditambahkan');
        } else {
            $request->session()->flash('error', 'Data gagal ditambahkan');
        }

        return redirect('submission_proposal');
    }



    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
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
        return view('submission_proposal/edit', compact('data'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        // Validate the input for the thesis topics
        $this->validate(
            $request,
            [
                'topik_tesis1' => 'required',
                'topik_tesis2' => 'required',
                'topik_tesis3' => 'required',
            ],
            [
                'topik_tesis1.required' => 'Kolom topik tesis 1 wajib diisi',
                'topik_tesis2.required' => 'Kolom topik tesis 2 wajib diisi',
                'topik_tesis3.required' => 'Kolom topik tesis 3 wajib diisi',
            ]
        );

        // Find the submission proposal by ID
        $submission = SubmissionProposal::findOrFail($id);

        // Update the thesis topics
        $submission->topik_tesis1 = $request->topik_tesis1;
        $submission->topik_tesis2 = $request->topik_tesis2;
        $submission->topik_tesis3 = $request->topik_tesis3;

        // Save the changes
        $submission->save();

        // Flash a success message
        $request->session()->flash('success', 'Data berhasil diperbarui');

        // Redirect back to the submission proposal page
        return redirect('submission_proposal');
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
        $data = SubmissionProposal::where('nim', Session::get('username'))->get();

        return DataTables::of($data)
            ->addColumn('krs', function ($data) {
                $path = 'upload/pengajuan/krs/' . $data->file_krs;
                return view('submission_proposal.link_download', [
                    'data' => $data,
                    'title' => $data->file_krs,
                    'url_download' => $path
                ]);
            })
            ->addColumn('khs', function ($data) {
                $path = 'upload/pengajuan/khs/' . $data->file_khs;
                return view('submission_proposal.link_download', [
                    'data' => $data,
                    'title' => $data->file_khs,
                    'url_download' => $path
                ]);
            })
            ->addColumn('proposal', function ($data) {
                $path = 'upload/pengajuan/pp/' . $data->file_proposal;
                return view('submission_proposal.link_download', [
                    'data' => $data,
                    'title' => $data->file_proposal,
                    'url_download' => $path
                ]);
            })
            ->addColumn('status', function ($data) {
                return view('submission_proposal.status', [
                    'data' => $data
                ]);
            })
            ->addColumn('action', function ($data) {
                return view('layout._action_sp', [
                    'data' => $data,
                    'url_edit' => route('submission_proposal.edit', $data->id_pp)
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
}
