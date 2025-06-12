@extends('layout/main')
@section('title','Beranda')
@section('breadcrumb')
<!-- Content Header (Page header) -->
<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0 text-dark">Selamat Datang {{ $data->nama }}</h1>
            </div><!-- /.col -->
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                </ol>
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div><!-- /.container-fluid -->
</div>
<!-- /.content-header -->
@endsection
@section('content')
<!-- Main content -->
<section class="content">
    <div class="container-fluid">
        <!-- Small boxes (Stat box) -->
        <div class="row">
            @if(Session::get('hak_akses') == 'lppm' || Session::get('hak_akses') == 'prodi' || Session::get('hak_akses') == 'dosen')
            <div class="col-lg-3 col-6">
                <!-- small box -->
                <div class="small-box bg-info">
                    <div class="inner">
                        <h3 id="jumlah_mhs"></h3>

                        <p>Jumlah Mahasiswa</p>
                    </div>
                    <div class="icon">
                        <i class="fas fa-user-graduate"></i>
                    </div>
                    <a class="small-box-footer">&nbsp;</a>
                </div>
            </div>
            <!-- ./col -->

            <div class="col-lg-3 col-6">
                <!-- small box -->
                <div class="small-box bg-dark">
                    <div class="inner">
                        <h3 id="jumlah_dosen"></h3>

                        <p>Jumlah Dosen</p>
                    </div>
                    <div class="icon">
                        <i class="fas fa-user-tie"></i>
                    </div>
                    <a class="small-box-footer">&nbsp;</a>
                </div>
            </div>
            <div class="col-lg-3 col-6">
                <!-- small box -->
                <div class="small-box bg-primary">
                    <div class="inner">
                        <h3 id="jumlah_sidang"></h3>

                        <p>Jumlah Mahasiswa Registrasi Berkas Sidang</p>
                    </div>
                    <div class="icon">
                        <i class="fas fa-graduation-cap"></i>
                    </div>
                    <a class="small-box-footer">&nbsp;</a>
                </div>
            </div>
            <div class="col-lg-3 col-6">
                <!-- small box -->
                <div class="small-box bg-success">
                    <div class="inner">
                        <h3 id="telahsidang"></h3>

                        <p>Jumlah Mahasiswa Sidang</p>
                    </div>
                    <div class="icon">
                        <i class="fas fa-graduation-cap"></i>
                    </div>
                    <a class="small-box-footer">&nbsp;</a>
                </div>
            </div>
            <div class="col-lg-3 col-6">
                <!-- small box -->
                <div class="small-box bg-danger">
                    <div class="inner">
                        <h3 id="belum_sidang"></h3>

                        <p>Jumlah Mahasiswa Belum Sidang</p>
                    </div>
                    <div class="icon">
                        <i class="fas fa-graduation-cap"></i>
                    </div>
                    <a class="small-box-footer">&nbsp;</a>
                </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-6">
                <!-- small box -->
                <div class="small-box bg-warning">
                    <div class="inner">
                        <h3 id="jumlah_grup"></h3>

                        <p>Jumlah Belum Registrasi Sidang</p>
                    </div>
                    <div class="icon">
                        <i class="fas fa-users"></i>
                    </div>
                    <a class="small-box-footer">&nbsp;</a>
                </div>
            </div>
            <div class="col-md-6">

            </div>
            <div class="col-md-6">
                <!-- PIE CHART -->
                <div class="card card-danger">
                    <div class="card-header">
                        <h3 class="card-title">Jenis Kelamin Mahasiswa</h3>

                        <div class="card-tools">
                            <button type="button" class="btn btn-tool" data-card-widget="collapse"><i
                                    class="fas fa-minus"></i>
                            </button>
                            <button type="button" class="btn btn-tool" data-card-widget="remove"><i
                                    class="fas fa-times"></i></button>
                        </div>
                    </div>
                    <div class="card-body">
                        <canvas id="pieChart"
                            style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
                    </div>
                    <!-- /.card-body -->
                </div>
                <!-- BAR CHART -->
                <div class="card card-primary">
                    <div class="card-header">
                        <h3 class="card-title">Rasio Pendaftaran Tesis dengan Mahasiswa yang Sidang</h3>
                        <div class="card-tools">
                            <button type="button" class="btn btn-tool" data-card-widget="collapse"><i class="fas fa-minus"></i></button>
                            <button type="button" class="btn btn-tool" data-card-widget="remove"><i class="fas fa-times"></i></button>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="chart">
                            <canvas id="thesisRatioChart" style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
                        </div>
                    </div>
                    <!-- /.card-body -->
                </div>
            </div>
            <div class="col-md-6">
                <div class="card card-dark">
                    <div class="card-header">
                        <h3 class="card-title">Grafik Statistik Thesis per Tahun</h3>
                    </div>
                    <div class="card-tools">
                        <canvas id="thesisChart"></canvas>
                    </div>
                </div>
                <!-- BAR CHART -->
                <div class="card card-success">
                    <div class="card-header">
                        <h3 class="card-title">Jumlah Lulusan Mahasiswa</h3>

                        <div class="card-tools">
                            <button type="button" class="btn btn-tool" data-card-widget="collapse"><i
                                    class="fas fa-minus"></i>
                            </button>
                            <button type="button" class="btn btn-tool" data-card-widget="remove"><i
                                    class="fas fa-times"></i></button>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="chart">
                            <canvas id="chartGrad"
                                style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
                        </div>
                    </div>
                    <!-- /.card-body -->
                </div>
            </div>
            @endif
            @if(Session::get('hak_akses') == 'mahasiswa')
            <div class="col-lg-3 col-6">
                <!-- small box -->
                <div class="small-box bg-info">
                    <div class="inner">
                        <h3>Status Akademik</h3>

                        <p>Aktif</p>
                    </div>
                    <div class="icon">
                        <i class="fas fa-user-tie"></i>
                    </div>
                    <a class="small-box-footer">&nbsp;</a>
                </div>
            </div>
            @endif

            <div class="col-md-12">
                <div class="card card-warning">
                    <div class="card-header">
                        <h5 class="m-0"><i class="fas fa-bullhorn"></i> Pengumuman</h5>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="timeline timeline-inverse" style="padding-left: 10px; padding-top: 10px;">
                                <!-- timeline time label -->
                                @foreach($dashboard as $notice)
                                <div class="time-label">
                                    <span class="bg-danger">
                                        {{ $notice->tanggal }}
                                    </span>
                                </div>
                                <!-- /.timeline-label -->
                                <!-- timeline item -->
                                <div>
                                    <i class="fas fa-bullhorn bg-primary"></i>
                                    <div class="timeline-item">
                                        <h3 class="timeline-header"><a href="#">{{ $notice->judul }}</a></h3>
                                        <div class="timeline-body">
                                            {{ $notice->isi }}
                                        </div>
                                    </div>
                                </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</section>
<!-- /.content -->
@endsection
@push('js')
<!-- Sparkline -->
<script src="{{ asset('plugins/sparklines/sparkline.js')}}"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="{{ asset('dist/js/pages/dashboard.js')}}"></script>
<script>
    var pieData2 = {
        labels: [
            'Laki-Laki',
            'Perempuan'
        ],
        datasets: [{
            data: [<?= $row['l'] ?>, <?= $row['p'] ?>],
            backgroundColor: ['#f56954', '#00c0ef'],
        }]
    }

    var pieChartCanvas = $('#pieChart').get(0).getContext('2d')
    var pieData = pieData2
    var pieOptions = {
        maintainAspectRatio: false,
        responsive: true,
    }
    new Chart(pieChartCanvas, {
        type: 'doughnut',
        data: pieData2,
        options: pieOptions
    })
</script>
<script>
    $(function() {


        $.ajax({
            url: "{{ route('front.grad') }}",
            method: "GET",
            success: function(data) {
                var label = [],
                    value = [],
                    data = data.data;

                for (var i in data) {
                    label.push(data[i].tahun);
                    value.push(data[i].jumlah);
                }
                // Set new default font family and font color to mimic Bootstrap's default styling
                /*  Chart.defaults.global.defaultFontFamily = 'Nunito', '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
                 Chart.defaults.global.defaultFontColor = '#858796'; */

                // Area Chart Example
                var ctx = document.getElementById("chartGrad");
                var myLineChart = new Chart(ctx, {
                    type: 'bar',
                    data: {
                        labels: label,
                        datasets: [{
                            label: "Lulusan",
                            lineTension: 0.3,
                            backgroundColor: 'rgba(242, 190, 30, 0.5)',
                            borderColor: 'rgba(242, 190, 30, 1)',
                            pointRadius: 3,
                            pointBackgroundColor: "rgba(78, 115, 223, 1)",
                            pointBorderColor: "rgba(78, 115, 223, 1)",
                            pointHoverRadius: 3,
                            pointHoverBackgroundColor: "rgba(78, 115, 223, 1)",
                            pointHoverBorderColor: "rgba(78, 115, 223, 1)",
                            pointHitRadius: 10,
                            pointBorderWidth: 2,
                            data: value,
                        }],
                    },
                    options: {
                        maintainAspectRatio: false,
                        layout: {
                            padding: {
                                left: 10,
                                right: 25,
                                top: 25,
                                bottom: 0
                            }
                        },
                        scales: {
                            xAxes: [{
                                time: {
                                    unit: 'date'
                                },
                                gridLines: {
                                    display: false,
                                    drawBorder: false
                                },
                                ticks: {
                                    maxTicksLimit: 7
                                }
                            }],
                            yAxes: [{
                                ticks: {
                                    maxTicksLimit: 5,
                                    padding: 10
                                },
                                gridLines: {
                                    color: "rgb(234, 236, 244)",
                                    zeroLineColor: "rgb(234, 236, 244)",
                                    drawBorder: false,
                                    borderDash: [2],
                                    zeroLineBorderDash: [2]
                                }
                            }],
                        },
                        legend: {
                            display: false
                        },
                        tooltips: {
                            backgroundColor: "rgb(255,255,255)",
                            bodyFontColor: "#858796",
                            titleMarginBottom: 10,
                            titleFontColor: '#6e707e',
                            titleFontSize: 14,
                            borderColor: '#dddfeb',
                            borderWidth: 1,
                            xPadding: 15,
                            yPadding: 15,
                            displayColors: false,
                            intersect: false,
                            mode: 'index',
                            caretPadding: 10
                        }
                    }
                });
            }
        });
        $.ajax({
            url: '{{route("api.dashboard")}}',
            method: 'GET',
            success: function(data) {
                console.log(data);
                $('#jumlah_mhs').html(data.student);
                $('#jumlah_dosen').html(data.lecturer);
                $('#jumlah_grup').html(data.group);
                $('#jumlah_pendaftaran').html(data.successfulDefenses);
                $('#jumlah_sidang').html(data.thesisRegistrations);
                $('#belum_sidang').html(data.belumsidang);
                $('#telahsidang').html(data.telahsidang);

            }
        })
    })
</script>
<script>
    $(function() {
        // Lakukan request AJAX ke API untuk mendapatkan data
        $.ajax({
            url: '{{ route("api.thesis-ratio-yearly-detail") }}', // Pastikan route ini benar
            method: 'GET',
            success: function(data) {
                console.log(data); // Debug: Lihat data yang diterima dari server

                // Pastikan data memiliki struktur yang benar
                if (data && Array.isArray(data)) {
                    var years = data.map(item => item.year);
                    var thesisRegistrations = data.map(item => item.thesisRegistrations);
                    var successfulDefenses = data.map(item => item.successfulDefenses);

                    // Mendapatkan elemen canvas dan membuat grafik
                    var ctx = document.getElementById('thesisChart').getContext('2d');
                    new Chart(ctx, {
                        type: 'bar',
                        data: {
                            labels: years,
                            datasets: [{
                                    label: 'Pendaftaran Tesis',
                                    backgroundColor: '#007bff',
                                    data: thesisRegistrations
                                },
                                {
                                    label: 'Sidang Berhasil',
                                    backgroundColor: '#28a745',
                                    data: successfulDefenses
                                }
                            ]
                        },
                        options: {
                            responsive: true,
                            maintainAspectRatio: false,
                            scales: {
                                yAxes: [{
                                    ticks: {
                                        beginAtZero: true
                                    }
                                }],
                                xAxes: [{
                                    ticks: {
                                        autoSkip: false
                                    }
                                }]
                            }
                        }
                    });
                } else {
                    console.error('Data yang diterima tidak valid:', data);
                }
            },
            error: function(xhr, status, error) {
                console.error('Terjadi kesalahan dalam pengambilan data:', xhr, error);
            }
        });
    });
</script>
<script>
    $(function() {
        $.ajax({
            url: '{{ route("api.thesis-ratio") }}',
            method: 'GET',
            success: function(data) {
                console.log(data);

                var ctx = document.getElementById("thesisRatioChart").getContext('2d');
                var thesisRatioChart = new Chart(ctx, {
                    type: 'bar',
                    data: {
                        labels: ['Pendaftaran Tesis', 'Mahasiswa yang Sidang'],
                        datasets: [{
                            label: 'Jumlah',
                            data: [data.thesisRegistrations, data.successfulDefenses],
                            backgroundColor: ['#007bff', '#28a745'],
                            borderColor: ['#007bff', '#28a745'],
                            borderWidth: 1
                        }]
                    },
                    options: {
                        scales: {
                            yAxes: [{
                                ticks: {
                                    beginAtZero: true
                                }
                            }]
                        }
                    }
                });

                // Menampilkan rasio
                var ratio = data.ratio.toFixed(2);
                var ratioText = `Rasio: ${ratio}`;
                var ratioElement = document.createElement('div');
                ratioElement.className = 'text-center';
                ratioElement.innerHTML = ratioText;
                document.getElementById('thesisRatioChart').parentNode.appendChild(ratioElement);
            }
        });
    });
</script>
@endpush