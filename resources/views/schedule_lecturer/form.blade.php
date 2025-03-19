{!! Form::model($data, [
'route' => ['updatejadwaldosen', $data->nidn]
]) !!}
<div class="row">
    <div class="col-md-12">
        <div class="form-group">
            <label for="" class="control-label">Jadwal</label>
            {!! Form::select('id_jadwal', $selectSchedule , null, ['class' => 'form-control', 'placeholder' => 'Pilih
            Jadwal']) !!}
        </div>
    </div>
</div>
{!! Form::close() !!}