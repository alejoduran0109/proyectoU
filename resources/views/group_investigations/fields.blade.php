<!-- Name Field -->
<div class="form-group col-sm-6">
    {!! Form::label('name', __('models/groupInvestigations.fields.name').':') !!}
    {!! Form::text('name', null, ['class' => 'form-control']) !!}
</div>

<!-- Description Field -->
<div class="form-group col-sm-6">
    {!! Form::label('description', __('models/groupInvestigations.fields.description').':') !!}
    {!! Form::text('description', null, ['class' => 'form-control']) !!}
</div>

<!-- Files Field -->
<div class="form-group col-sm-6">
    {!! Form::label('files', __('models/groupInvestigations.fields.files').':') !!}
    {!! Form::text('files', null, ['class' => 'form-control']) !!}
</div>

<!-- Code Group Field -->
<div class="form-group col-sm-6">
    {!! Form::label('code_group', __('models/groupInvestigations.fields.code_group').':') !!}
    {!! Form::text('code_group', null, ['class' => 'form-control']) !!}
</div>