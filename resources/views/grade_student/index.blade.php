@extends('layout/main')
@section('title', 'Nilai Mahasiswa')
@push('css')
<link rel="stylesheet" href="{{ asset('plugins/datatables-bs4/css/dataTables.bootstrap4.css')}}">
<link rel="stylesheet" href="{{ asset('plugins/sweetalert2/sweetalert2.min.css') }}">
@endpush
@section('breadcrumb')
<section class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1>Nilai Mahasiswa</h1>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                    <li class="breadcrumb-item active">Nilai Mahasiswa</li>
                </ol>
            </div>
        </div>
    </div><!-- /.container-fluid -->
</section>
@endsection
@section('content')
<section class="content">
    <div class="row">
        <div class="col-12">
            <!-- /.card -->
            <div class="card">
                @if (Session::get('hak_akses') == 'lppm')
                <div class="card-header">
                    <a href="{{ route('grade')}}" class="btn btn-primary">Export</a>
                    <button type="button" class="btn btn-success float-right" data-toggle="modal" data-target="#addGradeModal">
                        Add Grade
                    </button>
                    <a href="{{ route('export.pdf') }}" class="btn btn-primary" target="_blank">Export PDF Data Mahasiswa</a>
                </div>
                @endif
                <!-- /.card-header -->
                <div class="card-body table-responsive">
                    <table id="example1" class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Nim</th>
                                <th>Nama</th>
                                <th>Nilai Proposal</th>
                                <th>Nilai Bimbingan</th>
                                <th>Nilai Sidang</th>
                                <th>Berita Acara</th>
                            </tr>
                        </thead>
                        <tbody>
                        </tbody>
                        <tfoot>
                            <tr>
                                <th>No</th>
                                <th>Nim</th>
                                <th>Nama</th>
                                <th>Nilai Proposal</th>
                                <th>Nilai Bimbingan</th>
                                <th>Nilai Sidang</th>
                                <th>Berita Acara</th>
                            </tr>
                        </tfoot>
                    </table>
                </div>
                <!-- /.card-body -->
            </div>
            <!-- /.card -->
        </div>
        <!-- /.col -->
    </div>
    <!-- /.row -->
    @include('layout/_modal')
    <!-- Modal for Adding Grades -->
    <div class="modal fade" id="addGradeModal" tabindex="-1" role="dialog" aria-labelledby="addGradeModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="addGradeModalLabel">Add Grade</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    {!! Form::open(['route' => ['manage_grade.store'], 'method' => 'POST', 'enctype' => 'multipart/form-data']) !!}
                    <div class="form-group">
                        <label for="nim" class="control-label">NIM</label>
                        {!! Form::select('nim', $nims->pluck('nim', 'nim'), null, ['class' => 'form-control', 'id' => 'nim']) !!}
                    </div>
                    <div class="form-group">
                        <label for="nilai_pengajuan" class="control-label">Nilai Proposal</label>
                        {!! Form::text('nilai_pengajuan', null, ['class' => 'form-control', 'id' => 'nilai_pengajuan']) !!}
                    </div>
                    <div class="form-group">
                        <label for="nilai_bimbingan" class="control-label">Nilai Bimbingan</label>
                        {!! Form::text('nilai_bimbingan', null, ['class' => 'form-control', 'id' => 'nilai_bimbingan']) !!}
                    </div>
                    <div class="form-group">
                        <label for="nilai_sidang" class="control-label">Nilai Sidang</label>
                        {!! Form::text('nilai_sidang', null, ['class' => 'form-control', 'id' => 'nilai_sidang']) !!}
                    </div>

                    <!-- Tambahan Upload Berita Acara -->
                    <div class="form-group">
                        <label for="berita_acara" class="control-label">Upload Berita Acara (PDF)</label>
                        {!! Form::file('berita_acara', ['class' => 'form-control-file', 'accept' => 'application/pdf', 'id' => 'berita_acara']) !!}
                    </div>

                    <div class="form-group">
                        {!! Form::submit('Submit', ['class' => 'btn btn-primary']) !!}
                    </div>
                    {!! Form::close() !!}
                </div>
            </div>
        </div>
    </div>


</section>
@endsection
@push('js')
<script src="{{ asset('plugins/datatables/jquery.dataTables.js')}}"></script>
<script src="{{ asset('plugins/datatables-bs4/js/dataTables.bootstrap4.js')}}"></script>
<script src="{{ asset('plugins/sweetalert2/sweetalert2.min.js') }}"></script>
<script src="{{ asset('js/app.js') }}"></script>
<script>
    $(function() {
        $('#example1').DataTable({
            responsive: true,
            processing: true,
            serverSide: true,
            order: [
                [1, 'asc']
            ],
            ajax: {
                'url': "{{route('table.grade_student')}}",
                'type': 'POST',
                'headers': {
                    'X-CSRF-TOKEN': '{{ csrf_token() }}'
                }
            },
            columns: [{
                    data: 'DT_RowIndex',
                    name: 'id_nilai'
                },
                {
                    data: 'nim',
                    name: 'nim'
                },
                {
                    data: 'nama',
                    name: 'nama'
                },
                {
                    data: 'nilai_pengajuan',
                    name: 'nilai_pengajuan'
                },
                {
                    data: 'nilai_bimbingan',
                    name: 'nilai_bimbingan'
                },
                {
                    data: 'nilai_sidang',
                    name: 'nilai_sidang'
                },
                {
                    data: 'berita_acara',
                    name: 'berita_acara',
                    render: function(data, type, row, meta) {
                        if (data) {
                            return `<a href="${data}" class="btn btn-sm btn-primary" target="_blank">Download</a>`;
                        } else {
                            return '-';
                        }
                    }
                }
            ],
            columnDefs: [{
                "targets": [0, -1],
                "orderable": false,
                "searchable": false
            }]

        });
    });
</script>
@endpush