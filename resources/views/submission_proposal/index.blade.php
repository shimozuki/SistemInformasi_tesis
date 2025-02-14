@extends('layout/main')
@section('title', 'Pengajuan Proposal')
@push('css')
<link rel="stylesheet" href="{{ asset('plugins/datatables-bs4/css/dataTables.bootstrap4.css')}}">
<link rel="stylesheet" href="{{ asset('plugins/sweetalert2/sweetalert2.min.css') }}">
@endpush
@section('breadcrumb')
<section class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1>Data Pengajuan Topik</h1>
      </div>
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="#">Home</a></li>
          <li class="breadcrumb-item active">Data Pengajuan Topik</li>
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
      <div class="col-md-3">
        <!-- Profile Image -->
        <div class="card card-primary card-outline">
          <div class="card-body box-profile">
            <div class="text-center">
              <img class="profile-user-img img-fluid img-circle" src="{{asset('dist/img/avatar.png')}}"
                alt="User profile picture">
            </div>
            <h3 class="profile-username text-center">{{$data->nama}}</h3>
            <p class="text-muted text-center">
            </p>
            <ul class="list-group list-group-unbordered mb-3">
              <li class="list-group-item">
                <p class="text text-center">HP : {{$data->no_hp}} </p>
                <p class="text text-center">Nilai Proposal : {{ $data2 != NULL ? $data2->nilai_pengajuan : '-' }}</p>
              </li>
            </ul>

            <a href="#" class="btn btn-primary btn-block"><b>Follow</b></a>
          </div>
          <!-- /.card-body -->
        </div>
        <!-- /.card -->
      </div>
      <!-- /.col -->
      <div class="col-9">
        <!-- /.card -->
        <div class="card">
          <div class="card-header">
            <a href="{{ route('submission_proposal.create')}}" class="btn btn-primary modalnofooter-show"
              title="Tambah Data">Tambah</a>
          </div>
          <!-- /.card-header -->
          <div class="card-body table-responsive">
            <table id="example1" class="table table-bordered table-striped">
              <thead>
                <tr>
                  <th>No</th>
                  <th>Topik Tesis 1</th>
                  <th>Topik Tesis 2</th>
                  <th>Topik Tesis 3</th>
                  <th>Tanggal Pengajuan</th>
                  <th>Status</th>
                  <th>Aksi</th>
                </tr>
              </thead>
              <tbody>
              </tbody>
              <tfoot>
                <tr>
                  <th>No</th>
                  <th>Topik Tesis 1</th>
                  <th>Topik Tesis 2</th>
                  <th>Topik Tesis 3</th>
                  <th>Tanggal Pengajuan</th>
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
      @include('layout/_modal_without_footer')
</section>
@endsection
@push('js')
<script src="{{ asset('plugins/datatables/jquery.dataTables.js')}}"></script>
<script src="{{ asset('plugins/datatables-bs4/js/dataTables.bootstrap4.js')}}"></script>
<script src="{{ asset('plugins/sweetalert2/sweetalert2.min.js') }}"></script>
<script src="{{ asset('js/app.js') }}"></script>
<script>
  $(document).ready(function() {
    $('body').on('click', '.modalnofooter-show', function(e) {
      e.preventDefault();
      var me = $(this),
        url = me.attr('href'),
        form = $('.modal-body form'),
        title = me.attr('title');
      $.ajax({
        url: url,
        dataType: 'html',
        success: function(response) {
          $('#modal-body-nofooter').html(response);
        }
      });

      $('#modal-nofooter').modal('show');
    });
  });
</script>
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
        'url': "{{route('table.submission_proposal')}}",
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
  });
</script>
@endpush