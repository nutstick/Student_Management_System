@extends('voyager::master')


@section('page_title','Welcome')

@section('page_header')
    <h1 class="page-title">
        Welcome
    </h1>
    @include('voyager::multilingual.language-selector')
@stop

@section('content')
    <div class="page-content container-fluid">
        <div class="row">
            <div class="col-md-12">

                <div class="panel panel-bordered" style="padding-bottom:5px;">
                
                </div>
            </div>
        </div>
    </div>
@stop

@section('javascript')
@stop