<form action="{{ route('add_data') }}" method="POST" enctype="multipart/form-data">
    @csrf
    <div class="row">
        <div class="col-md-12">
            <div class="form-group">
                <label for="file_tesis" class="control-label">File Tesis</label>
                <input type="file" name="file_tesis" class="form-control" id="file_tesis"
                    accept="application/pdf, application/msword" required>
            </div>
            <div class="form-group">
                <label for="angkatan" class="control-label">Angkatan</label>
                <input type="number" name="angkatan" class="form-control" id="angkatan" required>
            </div>
            <div class="form-group">
                <label for="agama" class="control-label">Agama</label>
                <input type="text" name="agama" class="form-control" id="agama" required>
            </div>
            <div class="form-group">
                <label for="konsentrasi" class="control-label">Konsentrasi</label>
                <input type="text" name="konsentrasi" class="form-control" id="konsentrasi" required>
            </div>
            <div class="form-group">
                <label for="judul_tesis_bahasa_inggris" class="control-label">Judul Tesis (Bahasa Inggris)</label>
                <input type="text" name="judul_tesis_bahasa_inggris" class="form-control" id="judul_tesis_bahasa_inggris" required>
            </div>
            <div class="form-group">
                <label for="judul_tesis_bahasa_indonesia" class="control-label">Judul Tesis (Bahasa Indonesia)</label>
                <input type="text" name="judul_tesis_bahasa_indonesia" class="form-control" id="judul_tesis_bahasa_indonesia" required>
            </div>
            <div class="form-group">
                <label for="file_kartu_bimbingan" class="control-label">Upload Kartu Bimbingan</label>
                <input type="file" name="file_kartu_bimbingan" class="form-control" id="file_kartu_bimbingan"
                    accept="application/pdf" required>
            </div>
            <div class="form-group">
                <label for="file_halaman" class="control-label">Upload Halaman Pengesahan</label>
                <input type="file" name="file_halaman" class="form-control" id="file_halaman"
                    accept="application/pdf" required>
            </div>
            <div class="form-group">
                <label for="bebas_administrasi" class="control-label">Upload surat keterangan bebas administrasi</label>
                <input type="file" name="bebas_administrasi" class="form-control" id="bebas_administrasi"
                    accept="application/pdf" required>
            </div>
            <div class="form-group">
                <label for="plagiasi" class="control-label">Upload surat Bebas Plagiasi</label>
                <input type="file" name="plagiasi" class="form-control" id="plagiasi"
                    accept="application/pdf" required>
            </div>
            <div class="form-group">
                <label for="pasfoto" class="control-label">Foto Ukuran 4x6 (latrar biru)</label>
                <input type="file" name="pasfoto" class="form-control" id="pasfoto"
                    accept="application/pdf" required>
            </div>
            <div class="row">
                <div class="col-md-12" align="right">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Tutup</button>
                    <button type="submit" class="btn btn-primary">Simpan</button>
                </div>
            </div>
        </div>
    </div>
</form>