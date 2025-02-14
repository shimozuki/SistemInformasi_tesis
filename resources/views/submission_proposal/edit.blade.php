<form action="{{ route('submission_proposal.update', $data->id_pp) }}" enctype="multipart/form-data" method="POST">
    @csrf
    <div class="row">
        <div class="col-md-12">
            <div class="form-group">
                <label for="" class="control-label">Topik Tesis 1</label>
                <input type="text" name="topik_tesis1" class="form-control" id="topik_skripsi"
                    value=" {{ $data->topik_tesis1 }}">
            </div>
            <div class="form-group">
                <label for="" class="control-label">Topik Tesis 2</label>
                <input type="text" name="topik_tesis2" class="form-control" id="topik_skripsi"
                    value=" {{ $data->topik_tesis2 }}">
            </div>
            <div class="form-group">
                <label for="" class="control-label">Topik Tesis 3</label>
                <input type="text" name="topik_tesis3" class="form-control" id="topik_skripsi"
                    value="{{ $data->topik_tesis3 }}">
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12" align="right">
            <button type="button" class="btn btn-default" data-dismiss="modal">Tutup</button>
            <button type="submit" class="btn btn-primary">Edit</button>
        </div>
    </div>
</form>