@extends('layouts.admin')
@section('title') Table @endsection
@section('subtitle') Barang Foto @endsection
@section('breadcrumb')
<nav align="center">
  <ol class="breadcrumb float-right" >
    <li class="breadcrumb-item">
      <a href="{{ url('home')}}"><i class="ion ion-home"></i> Home</a>
    </li>
    <li class="breadcrumb-item">
      <a href="{{ route('barangfoto.index')}}">Barang Foto</a>
    </li>
    <li class="breadcrumb-item active">
      Create
    </li>
  </ol>
</nav>
@endsection
@section('content')
<div class="col-md-12">
  <div class="card card-default widget">
    <div class="card-heading">
      <h3 class="card-title">Table Barang Foto</h3>
    </div>
    <div class="card-body">
      <form action="{{ route('barangfoto.store') }}" method="post" enctype="multipart/form-data">
        {{ csrf_field() }}
        <div class="form-group {{ $errors->has('barang_id') ? ' has-error' : '' }}">
          <label class="control-label">Barang</label>
          <select name="barang_id" class="form-control">
            @foreach($barang as $data)
            <option value="{{$data->id}}">{{$data->nama_barang}}</option>
            @endforeach
          </select>
          @if ($errors->has('barang_id'))
          <span class="help-block">
          <strong>{{ $errors->first('barang_id') }}</strong>
          </span>
          @endif
        </div>
        <div class="form-group {{ $errors->has('foto') ? ' has-error' : '' }}">
          <label class="control-label">Foto</label>
          <input multiple type="file" name="foto[]" class="form-control" accept="/img/" required>
          @if ($errors->has('foto'))
          <span class="help-block">
          <strong>{{ $errors->first('foto') }}</strong>
          </span>
          @endif
        </div>
        <div class="form-group">
          <button type="submit" class="btn btn-primary">Tambah</button>
        </div>
      </form>
    </div>
  </div>
</div>
<!-- /.col-md-12 -->
@endsection