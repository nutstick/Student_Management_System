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
                    @if($row->field == 'Cadvisor')
                    <a href="{{ '/admin/teachers/' . $dataTypeContent->{$row->field} }}">
                      {{ $dataTypeContent->advisor }}
                    </a>
                    @else
                    {{ $dataTypeContent->{$row->field} }}
                    @endif
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
				<li role="presentation" class="active"><a href="#students" aria-controls="students" role="tab" data-toggle="tab">Students</a></li>
			</ul>
			<!-- Tab panes -->
			<div class="tab-content">
				<div role="tabpanel" class="tab-pane active" id="students">
          <div class="row">
            <div class="col-md-12">
              <table id="dataTable" class="row table table-hover">
                <thead>
                  <tr>
                    @foreach($studentType as $row => $label)
                    <th>{{ $label }}</th>
                    @endforeach
                    <th class="actions">Actions</th>
                  </tr>
                </thead>
                <tbody>
                  @foreach($students as $data)
                  <tr>
                    @foreach($studentType as $row => $label)
                      <td>
                        {{ $data->{$row} }}
                      </td>
                    @endforeach
                    <td class="no-sort no-click" id="bread-actions">
                      @if (Voyager::can('delete_'.$dataType->name))
                        <a href="javascript:;" title="Delete" class="btn btn-sm btn-danger pull-right delete-student" data-id="{{ $data->id }}" id="delete-{{ $data->id }}">
                          <i class="voyager-trash"></i> <span class="hidden-xs hidden-sm">Delete</span>
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

  <div class="modal fade modal-danger" id="confirm_delete_student_modal">
      <div class="modal-dialog">
          <div class="modal-content">

              <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal"
                          aria-hidden="true">&times;</button>
                  <h4 class="modal-title"><i class="voyager-warning"></i> Are You Sure</h4>
              </div>

              <div class="modal-body">
                  <h4>Are you sure you want to delete '<span class="confirm_delete_name"></span>'</h4>
              </div>

              <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                  <button type="button" class="btn btn-danger" id="confirm_delete_student">Yes, Delete it!
                  </button>
              </div>
          </div>
      </div>
  </div>
@stop

@section('javascript')
  <script type="text/javascript" src="{{asset('js/dataTables.buttons.min.js')}}"></script>
  <script type="text/javascript" src="{{asset('js/merge.rows.js')}}"></script>
  <script type="text/javascript" src="{{asset('js/buttons.bootstrap.min.js')}}"></script>
  <script type="text/javascript" src="{{asset('js/buttons.html5.min.js')}}"></script>
  <script>
    $(document).ready(function () {
      var table = $('#dataTable').DataTable({
        "dom":' <"search"Bf><"top">rt<"bottom"ip><"clear"l>',
        "buttons": [
          {
            className: "btn btn-info",
            text: '<i class="glyphicon glyphicon-pencil" style="padding-right: 12px;"></i>Add student',
            action: function ( e, dt, node, config ) {
              $('#add').modal('show');
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

    $('#add').on('click', '#add_student', function(e) {
      var params = {
        SID: $('#SID').val(),
        _token: "{{ csrf_token() }}"
      }
      $.post('{{ route('competitions.student.add', $id) }}', params, function (response) {
        if ( response
          && response == 'success' ) {
          location.reload();
        } else {
          toastr.error("Error add student.");
        }
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
    var deleteFormAction;
    $('td').on('click', '.delete-student', function (e) {
        var target = e.target;
        var id = $(target).data('id');
        deleteFormAction = id;

        $('#confirm_delete_student_modal').modal('show');
    });
    $('#confirm_delete_student_modal').on('click', '#confirm_delete_student', function (e) {
      var params = {
        id: deleteFormAction,
        _token: "{{ csrf_token() }}"
      }
      $.post('{{ route('competitions.student.remove', $id) }}', params, function (response) {
        if ( response
          && response == 'success' ) {
          location.reload();
        } else {
          toastr.error("Error removing student.");
        }
      });
    })
  </script>
@stop