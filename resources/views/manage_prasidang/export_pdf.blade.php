<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Laporan Mahasiswa Sidang</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <style type="text/css">
        .garis1 {
            border-top: 3px solid black;
            height: 2px;
            border-bottom: 1px solid black;
        }

        #ttd {
            text-align: right;
            margin-right: 10px;
            margin-top: 50px;
        }

        .table th,
        .table td {
            text-align: center;
            vertical-align: middle;
        }

        .table-total {
            font-weight: bold;
            background-color: #f8f9fa;
        }
    </style>
</head>

<body>
    <div class="container">
        <table>
            <tr>
                <td style="padding-right: 20px; padding-left: 10px">
                    <img src="https://uts.ac.id/wp-content/uploads/2021/01/UTS-1000-Universal-Square-Color.png" width="80" height="80">
                </td>
                <td>
                    <center>
                        <font size="4">KEMENTRIAN PENDIDIKAN DAN KEBUDAYAAN</font><br>
                        <font size="4">UNIVERSITAS TEKNOLOGI SUMBAWA</font><br>
                        <font size="2">Jl.RAYA OLAT MARAS BATU ALANG KABUPATEN SUMBAWA</font><br>
                        <font size="2">Tlp.082147004028 Website : https://uts.ac.id/en/welcome</font><br>
                    </center>
                </td>
            </tr>
        </table>

        <hr class="garis1" />

        <div style="margin-top: 25px; margin-bottom: 25px;">
            <center><strong><u>LAPORAN MAHASISWA SIDANG DAN BELUM MELAKUKAN SIDANG TESIS</u></strong></center>
        </div>

        <div class="table-responsive mb-4">
            <h4>Mahasiswa Sudah Sidang</h4>
            <table class="table table-bordered">
                <thead class="thead-light">
                    <tr>
                        <th>No</th>
                        <th>NIM</th>
                        <th>Nama</th>
                    </tr>
                </thead>
                <tbody>
                    @php $no = 1; @endphp
                    @foreach($sudahSidang as $output)
                    <tr>
                        <td>{{ $no++ }}</td>
                        <td>{{ $output->nim }}</td>
                        <td>{{ $output->nama }}</td>
                    </tr>
                    @endforeach
                </tbody>
                <tfoot>
                    <tr class="table-total">
                        <td colspan="4">Total Mahasiswa Sudah Sidang: {{ count($sudahSidang) }}</td>
                    </tr>
                </tfoot>
            </table>
        </div>

        <div class="table-responsive">
            <h4>Mahasiswa Belum Sidang</h4>
            <table class="table table-bordered">
                <thead class="thead-light">
                    <tr>
                        <th>No</th>
                        <th>NIM</th>
                        <th>Nama</th>
                        <th>Status</th>
                    </tr>
                </thead>
                <tbody>
                    @php $no = 1; @endphp
                    @foreach($belumSidang as $output)
                    <tr>
                        <td>{{ $no++ }}</td>
                        <td>{{ $output->nim }}</td>
                        <td>{{ $output->nama }}</td>
                        <td>Belum Sidang</td>
                    </tr>
                    @endforeach
                </tbody>
                <tfoot>
                    <tr class="table-total">
                        <td colspan="4">Total Mahasiswa Belum Sidang: {{ count($belumSidang) }}</td>
                    </tr>
                </tfoot>
            </table>
        </div>

        <div id="ttd">
            <p>Sumbawa, {{ \Carbon\Carbon::now()->translatedFormat('d F Y') }}</p>
            <p>Rektor</p>
            <p><strong>Hj. Niken Saptarini Widyawati, S.E., M.Sc.</strong></p>
        </div>
    </div>
</body>

</html>