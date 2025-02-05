<form action="{{ route('submission_proposal.store') }}" enctype="multipart/form-data" method="POST">
    @csrf
    <div class="row">
        <div class="col-md-12">
            <div class="form-group">
                <label for="" class="control-label">Topik Tesis 1</label>
                <input type="text" name="topik_skripsi" class="form-control" id="topik_skripsi"
                    value=" {{ isset($data) ? $data->topik_skripsi : '' }}">
            </div>
            <div class="form-group">
                <label for="" class="control-label">Topik Tesis 2</label>
                <input type="text" name="topik_skripsi" class="form-control" id="topik_skripsi"
                    value=" {{ isset($data) ? $data->topik_skripsi : '' }}">
            </div>
            <div class="form-group">
                <label for="" class="control-label">Topik Tesis 3</label>
                <input type="text" name="topik_skripsi" class="form-control" id="topik_skripsi"
                    value=" {{ isset($data) ? $data->topik_skripsi : '' }}">
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12" align="right">
            <button type="button" class="btn btn-default" data-dismiss="modal">Tutup</button>
            <button type="submit" class="btn btn-primary">Simpan</button>
        </div>
    </div>
</form>