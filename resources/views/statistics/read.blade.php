@extends('voyager::master')

{!! Charts::assets() !!}
<link rel="stylesheet" href="{{asset('css/student.css')}}" />
<link rel="stylesheet" href="{{asset('css/buttons.bootstrap.min.css')}}" />

@section('page_title','View Stat summary')

@section('page_header')
	<h1 class="page-title">
		<i class="voyager-bar-chart"></i> Viewing Statistic &nbsp;
	</h1>
	@include('voyager::multilingual.language-selector')
@stop

@section('content')
	<div class="page-content container-fluid">
		<div class="row">
			<div class="col-sm-12">
        <div class="panel panel-bordered main-panel">
          {!! $chart3->render() !!}
        </div>
			</div>
			<div class="col-sm-6">
        <div class="panel panel-bordered main-panel">
          {!! $chart2->render() !!}
        </div>
			</div>
			<div class="col-sm-6">
        <div class="panel panel-bordered main-panel">
          {!! $chart1->render() !!}
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
@stop