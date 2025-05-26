<?php

namespace App\Http\Controllers;

use App\Grade;
use App\Student;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Session;
use App\Exports\GradeExport;
use App\Exports\Grade2Export;
use App\Exports\Grade3Export;
use App\Guidance;
use App\Prasidang;
use Maatwebsite\Excel\Facades\Excel;
use DataTables;

class GradeStudentController extends Controller
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
            $nims = Prasidang::select('nim')->distinct()->get();
            return view('grade_student/index', compact('data', 'nims'));
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
        //
    }

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
    public function export_excel()
    {
        return Excel::download(new GradeExport, 'Nilai_mhs_TI.xlsx');
    }
    public function export_excel2()
    {
        return Excel::download(new Grade2Export, 'Nilai_mhs_SI.xlsx');
    }
    public function export_excel3()
    {
        return Excel::download(new Grade2Export, 'Nilai_mhs_MI.xlsx');
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
        //
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
        //
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
        if (!Session::get('login')) {
            return response()->json(['error' => 'Unauthorized'], 401);
        }

        $hakAkses = Session::get('hak_akses');
        $idAuth = Session::get('id_auth');

        if ($hakAkses == 'dosen') {
            // Ambil id_grup dosen berdasarkan id_auth
            $dosen = DB::table('lecturers')->where('id_auth', $idAuth)->first();
            $idGrup = $dosen->id_grup ?? null;

            // Tampilkan mahasiswa yang dibimbing (satu grup) oleh dosen tersebut
            $data = DB::table('grades')
                ->join('students', 'grades.nim', '=', 'students.nim')
                ->where('students.id_grup', $idGrup)
                ->select('grades.*', 'students.nama', 'students.nim', 'students.id_grup')
                ->get();
        } else {
            // Jika bukan dosen, tampilkan semua data
            $data = DB::table('grades')
                ->join('students', 'grades.nim', '=', 'students.nim')
                ->select('grades.*', 'students.nama', 'students.nim', 'students.id_grup')
                ->get();
        }

        return DataTables::of($data)
            ->addIndexColumn()
            ->make(true);
    }


    // public function dataTable()
    // {
    //     if (Session::get('login')) {
    //         if (Session::get('hak_akses') == 'mahasiswa') {
    //             $ambil = DB::table('students')
    //                 ->join('auths', 'students.id_auth', '=', 'auths.id_auth')
    //                 ->select('students.*', 'auths.*')
    //                 ->where('auths.id_auth', Session::get('id_auth'))
    //                 ->first();
    //         } else if (Session::get('hak_akses') == 'dosen') {
    //             $ambil = DB::table('lecturers')
    //                 ->join('auths', 'lecturers.id_auth', '=', 'auths.id_auth')
    //                 ->select('lecturers.*', 'auths.*')
    //                 ->where('auths.id_auth', Session::get('id_auth'))
    //                 ->first();
    //         } else if (Session::get('hak_akses') == 'lppm') {
    //             $ambil = DB::table('institutions')
    //                 ->join('auths', 'institutions.id_auth', '=', 'auths.id_auth')
    //                 ->select('institutions.*', 'auths.*')
    //                 ->where('auths.id_auth', Session::get('id_auth'))
    //                 ->first();
    //         } else if (Session::get('hak_akses') == 'prodi') {
    //             $ambil = DB::table('departments')
    //                 ->join('auths', 'departments.id_auth', '=', 'auths.id_auth')
    //                 ->select('departments.*', 'auths.*')
    //                 ->where('auths.id_auth', Session::get('id_auth'))
    //                 ->first();
    //         }
    //     }
    //     $data = DB::table('grades')
    //         ->join('students', 'grades.nim', '=', 'students.nim')
    //         ->select('grades.*', 'students.*')
    //         ->get();
    //     return DataTables::of($data)
    //         ->addIndexColumn()
    //         ->make(true);
    // }
}
