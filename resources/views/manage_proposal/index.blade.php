@extends('layout/main')
@section('title','Kelola Pengajuan')
@push('css')
<link rel="stylesheet" href="{{ asset('plugins/datatables-bs4/css/dataTables.bootstrap4.css')}}">
<link rel="stylesheet" href="{{ asset('plugins/sweetalert2/sweetalert2.min.css') }}">
@endpush
@section('breadcrumb')
<section class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1>Kelola Pengajuan Tesis</h1>
      </div>
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="#">Home</a></li>
          <li class="breadcrumb-item active">Kelola Pengjauan Proposal</li>
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
      <div class="col-md-12">
        <div class="card">
          <div class="card-header p-2">
            <ul class="nav nav-pills">
              <li class="nav-item"><a class="nav-link active" href="#data" data-toggle="tab">Pengajuan</a></li>
              @if (Session::get('hak_akses') == 'prodi')
              <li class="nav-item"><a class="nav-link" href="#laporan" data-toggle="tab">Laporan</a></li>
              @else
              <li class="nav-item"><a class="nav-link" href="#riwayat" data-toggle="tab">Riwayat</a></li>
              @endif
            </ul>
          </div><!-- /.card-header -->
          <div class="card-body">
            <p>
              <span style="color: green;">●</span> <strong>Diterima</strong><br>
              <span style="color: red;">●</span> <strong>Ditolak</strong><br>
              <span style="color: black;">●</span> <strong>Sedang Proses</strong>
            </p>
            <div class="tab-content">
              <div class="active tab-pane" id="data">
                <div class="row">
                  <div class="col-12">
                    <!-- /.card -->
                    <div class="card">
                      <!-- /.card-header -->
                      <div class="card-body table-responsive">
                        <table id="example1" class="table table-bordered table-striped" style="width: 100%;">
                          <thead>
                            <tr>
                              <th>No</th>
                              <th>Nim</th>
                              <th>Nama</th>
                              <th>Topik Tesis 1</th>
                              <th>Topik Tesis 2</th>
                              <th>Topik Tesis 3</th>
                              <th>Tanggal</th>
                              <th>Aksi</th>
                            </tr>
                          </thead>
                          <tbody>
                          </tbody>
                          <tfoot>
                            <tr>
                              <th>No</th>
                              <th>Nim</th>
                              <th>Nama</th>
                              <th>Topik Tesis 1</th>
                              <th>Topik Tesis 2</th>
                              <th>Topik Tesis 3</th>
                              <th>Tanggal</th>
                              <th>Aksi</th>
                            </tr>
                          </tfoot>
                        </table>
                      </div>
                      <!-- /.card-body -->
                    </div>
                    <!-- /.card -->
                  </div>
                </div>
              </div>
              <div class="tab-pane" id="laporan">
                <div class="row">
                  <div class="col-12">
                    <div class="card">
                      <div class="card-header">
                        <h3 class="card-title">Laporan Data</h3>
                      </div>
                      <div class="card-body">
                        <div class="row mb-3">
                          <div class="col-md-4">
                            <label for="start_date">Start Date:</label>
                            <input type="date" id="start_date" class="form-control">
                          </div>
                          <div class="col-md-4">
                            <label for="end_date">End Date:</label>
                            <input type="date" id="end_date" class="form-control">
                          </div>
                          <div class="col-md-4 d-flex align-items-end">
                            <button id="filter_button" class="btn btn-primary">Filter</button>
                            <button id="exportButton" class="btn btn-success ms-2">Export to Excel</button> <!-- Added margin -->
                          </div>
                        </div>
                        <table id="example3" class="table table-bordered table-striped" style="width: 100%;">
                          <thead>
                            <tr>
                              <th>No</th>
                              <th>Nim</th>
                              <th>Nama</th>
                              <th>Topik Tesis</th>
                              <th>Tanggal</th>
                            </tr>
                          </thead>
                          <tbody>
                          </tbody>
                          <tfoot>
                            <tr>
                              <th>No</th>
                              <th>Nim</th>
                              <th>Nama</th>
                              <th>Topik Tesis</th>
                              <th>Tanggal</th>
                            </tr>
                          </tfoot>
                        </table>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="tab-pane" id="riwayat">
                <div class="row">
                  <div class="col-12">
                    <!-- /.card -->
                    <div class="card">
                      <!-- /.card-header -->
                      <div class="card-body table-responsive">
                        <table id="example2" class="table table-bordered table-striped" style="width: 100%;">
                          <thead>
                            <tr>
                              <th>No</th>
                              <th>Nim</th>
                              <th>Nama</th>
                              <th>Aksi</th>
                            </tr>
                          </thead>
                          <tbody>
                          </tbody>
                          <tfoot>
                            <tr>
                              <th>No</th>
                              <th>Nim</th>
                              <th>Nama</th>
                              <th>Aksi</th>
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
              </div>
            </div>
          </div><!-- /.card-body -->
        </div>
        <!-- /.nav-tabs-custom -->
      </div>
      <!-- /.col -->
    </div>
  </div>
  @include('layout/_modal')
</section>
@endsection
@push('js')
<script src="{{ asset('plugins/datatables/jquery.dataTables.js')}}"></script>
<script src="{{ asset('plugins/datatables-bs4/js/dataTables.bootstrap4.js')}}"></script>
<script src="{{ asset('plugins/sweetalert2/sweetalert2.min.js') }}"></script>
<script src="{{ asset('plugins/select2/js/select2.full.min.js')}}"></script>
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
        'url': "{{route('table.manage_proposal')}}",
        'type': 'POST',
        'headers': {
          'X-CSRF-TOKEN': '{{ csrf_token() }}'
        }
      },
      columns: [{
          data: 'DT_RowIndex',
          name: 'id_pp'
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
          data: 'topik_tesis1',
          name: 'topik_tesis1',
          render: function(data, type, row) {
            return `<span class="${row.status_topik1 === 'terima' ? 'text-success' : 'text-danger'}">${data}</span>`;
          }
        },
        {
          data: 'topik_tesis2',
          name: 'topik_tesis2',
          render: function(data, type, row) {
            return `<span class="${row.status_topik2 === 'terima' ? 'text-success' : 'text-danger'}">${data}</span>`;
          }
        },
        {
          data: 'topik_tesis3',
          name: 'topik_tesis3',
          render: function(data, type, row) {
            return `<span class="${row.status_topik3 === 'terima' ? 'text-success' : 'text-danger'}">${data}</span>`;
          }
        },
        {
          data: 'created_at',
          name: 'created_at'
        },
        {
          data: 'action',
          name: 'action'
        }
      ]
    });
  });
</script>
<script>
  $(function() {
    $('#example2').DataTable({
      responsive: true,
      processing: true,
      serverSide: true,
      order: [
        [1, 'asc']
      ],
      ajax: {
        'url': "{{route('table.riwayatpp')}}",
        'type': 'POST',
        'headers': {
          'X-CSRF-TOKEN': '{{ csrf_token() }}'
        }
      },
      columns: [{
          data: 'DT_RowIndex',
          name: 'nim'
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
          data: 'action',
          name: 'action'
        }
      ],
      columnDefs: [{
        "targets": [0, -1],
        "orderable": false,
        "searchable": true
      }]

    });
  });
</script>
<script>
  $(function() {
    var table = $('#example3').DataTable({
      responsive: true,
      processing: true,
      serverSide: true,
      order: [
        [1, 'asc']
      ],
      ajax: {
        'url': "{{ route('table.laporan') }}",
        'type': 'POST',
        'headers': {
          'X-CSRF-TOKEN': '{{ csrf_token() }}'
        },
        'data': function(d) {
          d.start_date = $('#start_date').val(); // Get start date
          d.end_date = $('#end_date').val(); // Get end date
        }
      },
      columns: [{
          data: 'DT_RowIndex',
          name: 'DT_RowIndex',
          orderable: false,
          searchable: false
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
          data: 'accepted_thesis_topic',
          name: 'accepted_thesis_topic'
        },
        {
          data: 'created_at',
          name: 'created_at'
        } // Ensure this matches your server-side data
      ]
    });

    // Filter button click event
    $('#filter_button').click(function() {
      table.draw(); // Redraw the table with the new date filters
    });
  });

  $('#exportButton').on('click', function() {
    const startDate = $('#start_date').val();
    const endDate = $('#end_date').val();

    $.ajax({
      url: "{{ route('export.excel') }}",
      type: 'POST',
      data: {
        start_date: startDate,
        end_date: endDate,
        _token: '{{ csrf_token() }}' // Include CSRF token
      },
      xhrFields: {
        responseType: 'blob'
      },
      success: function(data) {
        const url = window.URL.createObjectURL(new Blob([data]));
        const a = document.createElement('a');
        a.href = url;
        a.download = 'laporan_pendaftaran_tesis.xlsx';
        document.body.appendChild(a);
        a.click();
        a.remove();
        window.URL.revokeObjectURL(url);
      },
      error: function(xhr, status, error) {
        console.error('Export failed:', error);
        alert('Export failed. Please try again.');
      }
    });
  });
</script>
@endpush