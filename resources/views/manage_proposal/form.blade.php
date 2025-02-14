{!! Form::model($data, [
    'route' => ['updatestatus', $data->id_pp],
    'method' => 'POST' 
]) !!}
<div class="row">
    <div class="col-md-12">
        @if ($data->exists)
        <div class="form-group">
            {!! Form::hidden('nim', null, ['class' => 'form-control', 'id' => 'nim']) !!}
        </div> 
        @endif
        <div class="form-group">
            <label for="topik_tesis" class="control-label">Pilih Topik Tesis</label>
            {!! Form::select('topik_tesis', [
                'topik_tesis1' => 'Topik Tesis 1: ' . $data->topik_tesis1,
                'topik_tesis2' => 'Topik Tesis 2: ' . $data->topik_tesis2,
                'topik_tesis3' => 'Topik Tesis 3: ' . $data->topik_tesis3,
            ], null, ['class' => 'form-control', 'placeholder' => 'Pilih Topik']) !!}
        </div>
        <div class="form-group">
            <label for="" class="control-label">Status Proposal</label>
            {!! Form::select('status', ['proses' => 'proses', 'tolak' => 'tolak', 'terima' => 'terima'], null, ['class' => 'form-control', 'placeholder' => 'Pilih Status Proposal']) !!}
        </div>
    </div>
</div>
{!! Form::close() !!}