@extends('layout/main')
@section('title', 'Prasidang')
@push('css')
<link rel="stylesheet" href="{{ asset('plugins/datatables-bs4/css/dataTables.bootstrap4.css')}}">
<link rel="stylesheet" href="{{ asset('plugins/sweetalert2/sweetalert2.min.css') }}">
@endpush
@section('breadcrumb')
<section class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1>Data Prasidang</h1>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                    <li class="breadcrumb-item active">Data Pracasidang</li>
                </ol>
            </div>
        </div>
    </div><!-- /.container-fluid -->
</section>
@endsection
@section('content')
<section class="content">
    @if (Session::has('success'))
    <div class="row">
        <div class="col-12">
            <div class="alert alert-success">
                {{ Session::get('success') }}
            </div>
        </div>
    </div>
    @elseif(Session::has('error'))
    <div class="row">
        <div class="col-12">
            <div class="alert alert-danger">
                {{ Session::get('error') }}
            </div>
        </div>
    </div>
    @endif
    <div class="container-fluid">
        <div class="row">
            <!-- /.col -->
            <div class="col-md-12">
                <!-- /.card -->
                <div class="card">
                    <!-- /.card-header -->
                    <ul class="nav nav-tabs mb-3" id="prasidangTabs" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="belum-tab" data-toggle="tab" href="#belumSidang" role="tab"
                                aria-controls="belumSidang" aria-selected="true">Belum Sidang</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="telah-tab" data-toggle="tab" href="#telahSidang" role="tab"
                                aria-controls="telahSidang" aria-selected="false">Telah Sidang</a>
                        </li>
                    </ul>

                    <div class="card-body table-responsive">
                        <table id="example1" class="table table-bordered table-striped">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Nama</th>
                                    <th>Nim</th>
                                    <th>Judul</th>
                                    <th>File Kartu Bimbingan</th>
                                    <th>File Tesis</th>
                                    <th>File Bebas plagiasi</th>
                                    <th>File Bebas administrasi</th>
                                    <th>pasfoto</th>
                                    <th>Status</th>
                                    <th>Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                            </tbody>
                            <tfoot>
                                <tr>
                                    <th>No</th>
                                    <th>Nama</th>
                                    <th>Nim</th>
                                    <th>Judul</th>
                                    <th>File Kartu Bimbingan</th>
                                    <th>File Tesis</th>
                                    <th>File Bebas plagiasi</th>
                                    <th>File Bebas administrasi</th>
                                    <th>pasfoto</th>
                                    <th>Status</th>
                                    <th>Aksi</th>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
                    <!-- /.card-body -->
                </div>
                <!-- /.card -->
            </div>
            @include('layout/_modal')
</section>
@endsection
@push('js')
<script src="{{ asset('plugins/datatables/jquery.dataTables.js')}}"></script>
<script src="{{ asset('plugins/datatables-bs4/js/dataTables.bootstrap4.js')}}"></script>
<script src="{{ asset('plugins/sweetalert2/sweetalert2.min.js') }}"></script>
<script src="{{ asset('js/app.js') }}"></script>
<script>
    let table; // Biar bisa destroy/reinit

    function loadTable(status = 'belum') {
        if (table) table.destroy(); // Destroy jika sudah ada
        table = $('#example1').DataTable({
            responsive: true,
            processing: true,
            serverSide: true,
            order: [
                [2, 'asc']
            ],
            ajax: {
                url: "{{ route('table.manage_prasidang') }}",
                type: 'POST',
                headers: {
                    'X-CSRF-TOKEN': '{{ csrf_token() }}'
                },
                data: {
                    status: status
                } // Ini yg beda tiap tab
            },
            columns: [{
                    data: 'DT_RowIndex',
                    name: 'id_pcs'
                },
                {
                    data: 'nama',
                    name: 'nama'
                },
                {
                    data: 'nim',
                    name: 'nim'
                },
                {
                    data: 'judul_tesis_bahasa_indonesia',
                    name: 'judul_tesis_bahasa_indonesia'
                },
                {
                    data: 'file_kartu_bimbingan',
                    name: 'file_kartu_bimbingan'
                },
                {
                    data: 'file_tesis',
                    name: 'file_tesis'
                },
                {
                    data: 'plagiasi',
                    name: 'plagiasi'
                },
                {
                    data: 'bebas_administrasi',
                    name: 'bebas_administrasi'
                },
                {
                    data: 'pasfoto',
                    name: 'pasfoto'
                },
                {
                    data: 'status',
                    name: 'status'
                },
                {
                    data: 'action',
                    name: 'action'
                }
            ],
            columnDefs: [{
                "targets": [0, -1],
                "orderable": false,
                "searchable": false
            }]
        });
    }

    $(function() {
        loadTable('belum'); // Default load

        // Ganti isi DataTable ketika tab diklik
        $('a[data-toggle="tab"]').on('shown.bs.tab', function(e) {
            let target = $(e.target).attr('href');
            if (target === "#belumSidang") {
                loadTable('belum');
            } else if (target === "#telahSidang") {
                loadTable('telah');
            }
        });
    });
</script>
@endpush