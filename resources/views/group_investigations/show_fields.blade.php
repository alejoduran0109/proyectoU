<!-- Id Field -->
<div class="col-sm-12">
    {!! Form::label('id', __('models/groupInvestigations.fields.id').':') !!}
    <p>{{ $groupInvestigation->id }}</p>
</div>

<!-- Name Field -->
<div class="col-sm-12">
    {!! Form::label('name', __('models/groupInvestigations.fields.name').':') !!}
    <p>{{ $groupInvestigation->name }}</p>
</div>

<!-- Description Field -->
<div class="col-sm-12">
    {!! Form::label('description', __('models/groupInvestigations.fields.description').':') !!}
    <p>{{ $groupInvestigation->description }}</p>
</div>

<!-- Files Field -->
<div class="col-sm-12">
    {!! Form::label('files', __('models/groupInvestigations.fields.files').':') !!}
    <p>{{ $groupInvestigation->files }}</p>
</div>

<!-- Code Group Field -->
<div class="col-sm-12">
    {!! Form::label('code_group', __('models/groupInvestigations.fields.code_group').':') !!}
    <p>{{ $groupInvestigation->code_group }}</p>
</div>

