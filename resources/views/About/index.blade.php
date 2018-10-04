@extends('frontend.about')
@section('About')

@foreach($galeris as $data)
<section class="mainContent clearfix aboutUsInfo">
			<div class="container">
				<div class="page-header">
					<h3>{{$data->keterangan}}</h3>
				</div>
				<div class="row">
					<div class="col-md-6 order-sm-12">
						<img src="{{asset('/img/'.$data->gambar.'')}}" alt="about-us-img">
					</div>
					<div class="col-md-6 order-sm-1">
						<p class="lead">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
						<p>Mauris lobortis augue ex, ut faucibus nisi mollis ac. Sed volutpat scelerisque ex ut ullamcorper. Cras at velit quis sapien dapibus laoreet a id odio. Sed sit amet accumsan ante, eu congue metus. Aenean eros tortor, cursus quis feugiat sed, vestibulum vel purus. Etiam aliquam turpis quis blandit finibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec porttitor placerat lectus, facilisis ornare leo tincidunt vel. Duis rutrum felis felis, eget malesuada massa tincidunt a.</p>
						<ul class="unorder-list lists">
                        </ul>   
                        </div>
	</div>
</div>
</section>
@endforeach

@endsection