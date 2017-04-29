@extends('voyager::master')

<link rel="stylesheet" href="{{asset('css/student.css')}}">

@section('page_title','View '.$dataType->display_name_singular)

@section('page_header')
	<h1 class="page-title">
		<i class="{{ $dataType->icon }}"></i> Viewing {{ ucfirst($dataType->display_name_singular) }} &nbsp;

		@if (Voyager::can('edit_'.$dataType->name))
		<a href="{{ route('voyager.'.$dataType->slug.'.edit', $dataTypeContent->getKey()) }}" class="btn btn-info">
			<span class="glyphicon glyphicon-pencil"></span>&nbsp;
			Edit
		</a>
		<a href="{{ route('voyager.'.$dataType->slug.'.behavior', $dataTypeContent->getKey()) }}" class="btn btn-info">
			<span class="glyphicon glyphicon-education"></span>&nbsp;
			Behavior Record
		</a>
		@endif
		<a href="{{ route('voyager.'.$dataType->slug.'.index') }}" class="btn btn-warning">
			<span class="glyphicon glyphicon-list"></span>&nbsp;
			Return to List
		</a>        
	</h1>
	@include('voyager::multilingual.language-selector')
@stop

@section('content')
	<div class="page-content container-fluid">
		<div class="row">
			<div class="col-md-5">
        <img src="@if( strpos($dataTypeContent->image, 'http://') === false && strpos($dataTypeContent->image, 'https://') === false){{ Voyager::image( $dataTypeContent->image ) }}@else{{ $dataTypeContent->image }}@endif" style="width:100px">
			</div>
			<div class="col-md-7" style="margin-bottom: 0;">
        <div class="row">
          <div class="col-md-6">
            <div class="panel main-panel">
							<h3>General Information</h3>
              <style>
                dl.dl-horizontal > dt {
                  width: 140px!important;
                  text-align: left;
                }
                dl.dl-horizontal > dd {
                  margin-left: 150px!important;
                }
              </style>
							<dl class="dl-horizontal">
								<dt>Student ID</dt>
								<dd>{{ $dataTypeContent->SID }}</dd>
								<dt>Name</dt>
								<dd>{{ $dataTypeContent->SFname }} {{ $dataTypeContent->SLname }}</dd>
								<dt>Gender</dt>
								<dd>{{ $dataTypeContent->Sgender }}</dd>
								<dt>Birthdate</dt>
								<dd>{{ $dataTypeContent->Sbirth }}</dd>
								<dt>Nationality</dt>
								<dd>{{ $dataTypeContent->Snation }}</dd>
							</dl>
						</div>
          </div>
          <div class="col-md-6">
            <div class="panel main-panel">
							<h3 class="main-panel-title">Education Information</h3>
							<dl class="dl-horizontal">
								<dt>Enrollment date</dt>
								<dd>{{ $dataTypeContent->Senroll_date }}</dd>
								<dt>Education Status</dt>
								<dd>{{ $dataTypeContent->Sedu_stat }}</dd>
								<dt>Health Status</dt>
								<dd>{{ $dataTypeContent->Shealth_stat }}</dd>
								<dt>Behavior score</dt>
								<dd>{{ $dataTypeContent->Sbehav_score }}</dd>
								<dt>Detail</dt>
								<dd>{{ $dataTypeContent->Sdetail }}</dd>
							</dl>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="panel panel-bordered main-panel">
			<!-- Nav tabs -->
			<ul class="nav nav-tabs" role="tablist">
				<li role="presentation" class="active"><a href="#grade" aria-controls="grade" role="tab" data-toggle="tab">Grade Summary</a></li>
				<li role="presentation"><a href="#enrollment" aria-controls="enrollment" role="tab" data-toggle="tab">Enrollment</a></li>
				<li role="presentation"><a href="#behavior" aria-controls="behavior" role="tab" data-toggle="tab">Behavior Record</a></li>
				<li role="presentation"><a href="#competition" aria-controls="competition" role="tab" data-toggle="tab">Competition</a></li>
				<li role="presentation"><a href="#settings" aria-controls="settings" role="tab" data-toggle="tab">Settings</a></li>
			</ul>

			<!-- Tab panes -->
			<div class="tab-content">
				<div role="tabpanel" class="tab-pane active" id="grade">
					<div class="row">
						<div class="col-md-12">
							@foreach($gradePerTerms as $grade)
								<div class="container">
									<h3>Year {{$grade['year']}} - Term {{$grade['term']}}</h3>
										
									<table class="row table table-hover">
										<thead>
											<tr>
												@foreach($gradeType as $row => $label)
												<th>{{ $label }}</th>
												@endforeach
												<th class="actions">Actions</th>
											</tr>
										</thead>
										<tbody>
											@foreach($grade['courses'] as $data)
											<tr>
												@foreach($gradeType as $row => $label)
													<td>
														{{ $data->{$row} }}
													</td>
												@endforeach
												<td class="no-sort no-click" id="bread-actions">
													@if (Voyager::can('delete_'.$dataType->name))
														<a href="javascript:;" title="Delete" class="btn btn-sm btn-danger pull-right delete" data-id="{{ $data->id }}" id="delete-{{ $data->id }}">
															<i class="voyager-trash"></i> <span class="hidden-xs hidden-sm">Delete</span>
														</a>
													@endif
													@if (Voyager::can('edit_'.$dataType->name))
														<a href="{{ route('voyager.'.$dataType->slug.'.edit', $data->id) }}" title="Edit" class="btn btn-sm btn-primary pull-right edit">
															<i class="voyager-edit"></i> <span class="hidden-xs hidden-sm">Edit</span>
														</a>
													@endif
													@if (Voyager::can('read_'.$dataType->name))
														<a href="{{ route('voyager.'.$dataType->slug.'.show', $data->id) }}" title="View" class="btn btn-sm btn-warning pull-right">
															<i class="voyager-eye"></i> <span class="hidden-xs hidden-sm">View</span>
														</a>
													@endif
												</td>
											</tr>
											@endforeach
										</tbody>
									</table>
								</div>
							@endforeach
						</div>
					</div>
				</div>
				<div role="tabpanel" class="tab-pane" id="enrollment">
					<div class="row">
						<div class="col-md-12">
							<div class="row">
								<!--<i class="{{ $dataType->icon }}"></i> -->
								<div class="col-md-3">
									<h3>
										Enrollment
									</h3>
								</div>
								<div class="col-md-3 col-md-offset-6">
									<a href="{{ route('voyager.'.$dataType->slug.'.addEnroll', $dataTypeContent->getKey()) }}" class="btn btn-info" style="float: right;">
										<span class="glyphicon glyphicon-pencil"></span>&nbsp;
										Add enrollment
									</a>
								</div>
							</div>
							
							<table id="dataTable" class="row table table-hover">
								<thead>
									<tr>
										@foreach($enrollType as $row => $label)
										<th>{{ $label }}</th>
										@endforeach
										<th class="actions">Actions</th>
									</tr>
								</thead>
								<tbody>
									@foreach($enrollments as $data)
									<tr>
										@foreach($enrollType as $row => $label)
											<td>
												{{ $data->{$row} }}
											</td>
										@endforeach
										<td class="no-sort no-click" id="bread-actions">
											@if (Voyager::can('delete_'.$dataType->name))
												<a href="javascript:;" title="Delete" class="btn btn-sm btn-danger pull-right delete" data-id="{{ $data->id }}" id="delete-{{ $data->id }}">
													<i class="voyager-trash"></i> <span class="hidden-xs hidden-sm">Delete</span>
												</a>
											@endif
											@if (Voyager::can('edit_'.$dataType->name))
												<a href="{{ route('voyager.'.$dataType->slug.'.edit', $data->id) }}" title="Edit" class="btn btn-sm btn-primary pull-right edit">
													<i class="voyager-edit"></i> <span class="hidden-xs hidden-sm">Edit</span>
												</a>
											@endif
											@if (Voyager::can('read_'.$dataType->name))
												<a href="{{ route('voyager.'.$dataType->slug.'.show', $data->id) }}" title="View" class="btn btn-sm btn-warning pull-right">
													<i class="voyager-eye"></i> <span class="hidden-xs hidden-sm">View</span>
												</a>
											@endif
										</td>
									</tr>
									@endforeach
								</tbody>
							</table>
						</div>
					</div>
			</div>
				<div role="tabpanel" class="tab-pane" id="behavior">
					<div class="row">
						<div class="col-md-12">
							<div class="row">
								<!--<i class="{{ $dataType->icon }}"></i> -->
								<div class="col-md-3">
									<h3>
										Behavior records
									</h3>
								</div>
								<div class="col-md-3 col-md-offset-6">
									<a href="{{ route('voyager.'.$dataType->slug.'.behavior', $dataTypeContent->getKey()) }}" class="btn btn-info" style="float: right;">
										<span class="glyphicon glyphicon-pencil"></span>&nbsp;
										View summnary
									</a>
								</div>
							</div>
							
							<table id="dataTable2" class="row table table-hover">
								<thead>
									<tr>
										@foreach($behaviorType as $row => $label)
										<th>{{ $label }}</th>
										@endforeach
										<th class="actions">Actions</th>
									</tr>
								</thead>
								<tbody>
									@foreach($behaviors as $data)
									<tr>
										@foreach($behaviorType as $row => $label)
											<td>
												{{ $data->{$row} }}
											</td>
										@endforeach
										<td class="no-sort no-click" id="bread-actions">
											@if (Voyager::can('delete_'.$dataType->name))
												<a href="javascript:;" title="Delete" class="btn btn-sm btn-danger pull-right delete" data-id="{{ $data->id }}" id="delete-{{ $data->id }}">
													<i class="voyager-trash"></i> <span class="hidden-xs hidden-sm">Delete</span>
												</a>
											@endif
											@if (Voyager::can('edit_'.$dataType->name))
												<a href="{{ route('voyager.'.$dataType->slug.'.edit', $data->id) }}" title="Edit" class="btn btn-sm btn-primary pull-right edit">
													<i class="voyager-edit"></i> <span class="hidden-xs hidden-sm">Edit</span>
												</a>
											@endif
											@if (Voyager::can('read_'.$dataType->name))
												<a href="{{ route('voyager.'.$dataType->slug.'.show', $data->id) }}" title="View" class="btn btn-sm btn-warning pull-right">
													<i class="voyager-eye"></i> <span class="hidden-xs hidden-sm">View</span>
												</a>
											@endif
										</td>
									</tr>
									@endforeach
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<div role="tabpanel" class="tab-pane" id="competition">
				<div class="row">
						<div class="col-md-12">
							<div class="row">
								<!--<i class="{{ $dataType->icon }}"></i> -->
								<div class="col-md-3">
									<h3>
										Competition
									</h3>
								</div>
							</div>
							
							<table id="dataTable3" class="row table table-hover">
								<thead>
									<tr>
										@foreach($competitionType as $row => $label)
										<th>{{ $label }}</th>
										@endforeach
										<th class="actions">Actions</th>
									</tr>
								</thead>
								<tbody>
									@foreach($competitions as $data)
									<tr>
										@foreach($competitionType as $row => $label)
											<td>
												{{ $data->{$row} }}
											</td>
										@endforeach
										<td class="no-sort no-click" id="bread-actions">
											@if (Voyager::can('delete_'.$dataType->name))
												<a href="javascript:;" title="Delete" class="btn btn-sm btn-danger pull-right delete" data-id="{{ $data->id }}" id="delete-{{ $data->id }}">
													<i class="voyager-trash"></i> <span class="hidden-xs hidden-sm">Delete</span>
												</a>
											@endif
											@if (Voyager::can('edit_'.$dataType->name))
												<a href="{{ route('voyager.'.$dataType->slug.'.edit', $data->id) }}" title="Edit" class="btn btn-sm btn-primary pull-right edit">
													<i class="voyager-edit"></i> <span class="hidden-xs hidden-sm">Edit</span>
												</a>
											@endif
											@if (Voyager::can('read_'.$dataType->name))
												<a href="{{ route('voyager.'.$dataType->slug.'.show', $data->id) }}" title="View" class="btn btn-sm btn-warning pull-right">
													<i class="voyager-eye"></i> <span class="hidden-xs hidden-sm">View</span>
												</a>
											@endif
										</td>
									</tr>
									@endforeach
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<div role="tabpanel" class="tab-pane" id="settings">...</div>
			</div>
		</div>
	</div>
@stop

@section('javascript')
	@if ($isModelTranslatable)
	<script>
		$(document).ready(function () {
			$('.side-body').multilingual();
		});
	</script>
	<script src="{{ voyager_asset('js/multilingual.js') }}"></script>
	@endif
  
  <script>
    $(document).ready(function () {
      var table = $('#dataTable').DataTable({
        "order": []
        @if(config('dashboard.data_tables.responsive')), responsive: true @endif
      });
      var table2 = $('#dataTable2').DataTable({
        "order": []
        @if(config('dashboard.data_tables.responsive')), responsive: true @endif
      });
    });


    var deleteFormAction;
    $('td').on('click', '.delete', function (e) {
        var form = $('#delete_form')[0];

        if (!deleteFormAction) { // Save form action initial value
            deleteFormAction = form.action;
        }

        form.action = deleteFormAction.match(/\/[0-9]+$/)
            ? deleteFormAction.replace(/([0-9]+$)/, $(this).data('id'))
            : deleteFormAction + '/' + $(this).data('id');
        console.log(form.action);

        $('#delete_modal').modal('show');
    });
  </script>
@stop