@extends('frontend.index')
@section('product')

@foreach($barangs as $data)
<div class="slide col-md-3">
	<div class="productImage clearfix">
	<a href="{{ asset('/img/'.$data->foto.'')}} ">
		<img src="{{ asset('/img/'.$data->foto.'')}}" alt="featured-product-img" height="250px">
		<div class="productMasking">
			<ul class="list-inline btn-group" role="group">
			<li><a href="/product/{{$data->slug}}" class="nav-link-active"></a></li>
				<li><a href="/product/{{$data->slug}}" class="nav-link-active"><i class="fa fa-eye"></i></a></li>
				<li><a href="/product/{{$data->slug}}" class="nav-link-active"></i></a></li>
			</ul>
		</div>
	</div>
	<div class="productCaption clearfix">
			<h4>{{ $data->nama_barang }}</h4>
		<p>{!!str_limit($data->deskripsi)!!}</p>
		<h3>Rp. {{ $data->harga }}</h3>
	</div>
</div>
@endforeach

@endsection