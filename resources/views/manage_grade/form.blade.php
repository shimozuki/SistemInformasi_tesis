{!! Form::model($nims, [
    'route' => ['manage_grade.store'],
    'method' => 'POST'
]) !!}
<div class="row">
    <div class="col-md-12">
        <div class="form-group">
            <label for="nim" class="control-label">NIM</label>
            {!! Form::select('nim', $nims->pluck('nim', 'nim'), null, ['class' => 'form-control', 'id' => 'nim']) !!}
        </div>
        <div class="form-group">
            <label for="nilai_bimbingan" class="control-label">Nilai Bimbingan</label>
            {!! Form::text('nilai_bimbingan', null, ['class' => 'form-control', 'id' => 'nilai_bimbingan']) !!}
        </div>
        <div class="form-group">
            <label for="nilai_sidang" class="control-label">Nilai Sidang</label>
            {!! Form::text('nilai_sidang', null, ['class' => 'form-control', 'id' => 'nilai_sidang']) !!}
        </div>
        <div class="form-group">
            <label for="image" class="control-label">Upload Image</label>
            {!! Form::file('image', ['class' => 'form-control-file', 'id' => 'image']) !!}
        </div>
    </div>
</div>
<div class="form-group">
    {!! Form::submit('Submit', ['class' => 'btn btn-primary']) !!}
</div>
{!! Form::close() !!}
