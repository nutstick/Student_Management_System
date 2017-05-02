@extends('voyager::master')

{!! Charts::assets() !!}
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
				<li role="presentation" class="active"><a href="#statics" aria-controls="statics" role="tab" data-toggle="tab">Statics</a></li>
				<li role="presentation"><a href="#enrollments" aria-controls="enrollments" role="tab" data-toggle="tab">Enrollments</a></li>
			</ul>
			<!-- Tab panes -->
			<div class="tab-content">
				<div role="tabpanel" class="tab-pane active" id="statics">
          <div class="row">
            <div class="col-md-12">
              {!! $chart->render() !!}
            </div>
          </div>
        </div>
        <div role="tabpanel" class="tab-pane" id="enrollments">
          <div class="row">
            <div class="col-md-12">
              <table id="dataTable2" class="row table table-hover">
                <thead>
                  <tr>
                    @foreach($enrollType as $row => $label)
                    <th>{{ $label }}</th>
                    @endforeach
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
            text: '<i class="glyphicon glyphicon-pencil" style="padding-right: 12px;"></i>Create',
            action: function ( e, dt, node, config ) {
              window.location = "{{ route('voyager.sections.create') }}"
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