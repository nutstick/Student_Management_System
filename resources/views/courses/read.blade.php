@extends('voyager::master')

<link rel="stylesheet" href="{{asset('css/student.css')}}" />
<link rel="stylesheet" href="{{asset('css/buttons.bootstrap.min.css')}}" />

@section('page_title','View '.$dataType->display_name_singular)

@section('page_header')
	<h1 class="page-title">
		<i class="{{ $dataType->icon }}"></i> Viewing {{ ucfirst($dataType->display_name_singular) }} &nbsp;

		@if (Voyager::can('edit_'.$dataType->name))
		<a href="{{ route('voyager.'.$dataType->slug.'.edit', $dataTypeContent->getKey()) }}" class="btn btn-info">
			<span class="glyphicon glyphicon-pencil"></span>&nbsp;
			Edit
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
			<div class="col-md-12">
        <div class="panel panel-bordered main-panel">
          <table class="row table table-hover">
            <thead>
              <tr>
                @foreach($dataType->browseRows as $row)
                <th>{{ $row->field }}</th>
                @endforeach
              </tr>
            </thead>
            <tbody>
              <tr>
                @foreach($dataType->browseRows as $row)
                  <td>
                    {{ $dataTypeContent->{$row->field} }}
                  </td>
                @endforeach
              </tr>
            </tbody>
          </table>
        </div>
			</div>
		</div>
		<div class="panel panel-bordered main-panel">
			<!-- Nav tabs -->
			<ul class="nav nav-tabs" role="tablist">
				<li role="presentation" class="active"><a href="#sections" aria-controls="sections" role="tab" data-toggle="tab">Sections</a></li>
				<li role="presentation"><a href="#enrollment" aria-controls="enrollment" role="tab" data-toggle="tab">Enrollment</a></li>
			</ul>
			<!-- Tab panes -->
			<div class="tab-content">
				<div role="tabpanel" class="tab-pane active" id="sections">
          <div class="row">
            <div class="col-md-12">
              <table id="dataTable" class="row table table-hover">
                <thead>
                  <tr>
                    @foreach($sectionType as $row => $label)
                    <th>{{ $label }}</th>
                    @endforeach
                    <th class="actions">Actions</th>
                  </tr>
                </thead>
                <tbody>
                  @foreach($sections as $data)
                  <tr>
                    @foreach($sectionType as $row => $label)
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
      </div>
    </div>
	</div>
@stop

@section('javascript')
  <script type="text/javascript" src="{{asset('js/dataTables.buttons.min.js')}}"></script>
  <script type="text/javascript" src="{{asset('js/buttons.bootstrap.min.js')}}"></script>
  <script type="text/javascript" src="{{asset('js/buttons.html5.min.js')}}"></script>
  <script>
    $(document).ready(function () {
      var table = $('#dataTable').DataTable({
        "dom":' <"search"Bf><"top">rt<"bottom"ip><"clear"l>',
        "buttons": [
          {
            className: "btn btn-info",
            text: '<i class="glyphicon glyphicon-pencil" style="padding-right: 12px;"></i>Create',
            action: function ( e, dt, node, config ) {
              alert( 'Button activated' );
            }
          }
        ],
        "order": [],
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