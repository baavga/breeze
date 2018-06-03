@extends('layout.super')

<head>
	<title>{{$product->name}}</title>
	<meta NAME="KEYWORDS" CONTENT="{{$product->name}} ">
	<meta name="description" content="{{$product->name}}">

</head>
<style>
	.image {
		position: relative;
	}

	h2 {
		position: absolute;
		top: 100px;
		left: 0;
		width: 100%;
	}

	h2 span {
		color: white;
		font: bold 24px/45px Helvetica, Sans-Serif;
		letter-spacing: -1px;
		background: rgb(0, 0, 0);
		/* fallback color */
		background: rgba(0, 0, 0, 0.7);
		padding: 10px;
	}

	h2 span.spacer {
		padding: 0 0px;
	}
</style> 
@section('content')
<!-- The four columns -->
<br><a href="/toys/{{$product->category->slug}}" class='btn btn-dark'>{{$product->category->name}}</a><br>

<div class="row">

	<div class="column" style="margin-left:15px !important; margin-top: 20px; margin-bottom:20px;cursor: pointer;">
		@if(count($product->image1)>0)
		<img class="rounded border border-secondary" src="/storage/{{$product->image1}}" alt="{{$product->name}}" style="width:50px;height:50px"
		 onclick="myFunction(this);"> @endif @if(count($product->image2)>0)
		<img class="rounded border border-secondary" src="/storage/{{$product->image2}}" alt="{{$product->name}}" style="width:50px;height:50px"
		 onclick="myFunction(this);"> @endif @if(count($product->image3)>0)
		<img class="rounded border border-secondary" src="/storage/{{$product->image3}}" alt="{{$product->name}}" style="width:50px;height:50px"
		 onclick="myFunction(this);"> @endif
	</div>
</div>
 
<script>
	function myFunction(imgs) {
			var expandImg = document.getElementById("expandedImg");
			var imgText = document.getElementById("imgtext");
			expandImg.src = imgs.src;
			imgText.innerHTML = imgs.alt;
			expandImg.parentElement.style.display = "block";
	}
</script>
<div class="row ">
	<div class="col-lg-8">
		<img id="expandedImg" src="/storage/{{$product->image1}}" style="width:600px;height:400px; " class="img-fluid" alt="{{$product->name}}">
	</div>
	<div class="col-lg-4">
		<h3>{{$product->name}}</h3>
		<h4>Үнэ: {{$product->price}} грн</h4>
		<p>{!!$product->shortdesc!!}</p> 
	</div>
	<!-- /.card -->
</div>
<div class="row" style="margin-left:0px !important;">
	<div class="card card-outline-secondary my-4 ">
		<div class="card-header">
				Податкової інформації
		</div>
		<div class="card-body">
			<p style="width:840px;"> {!!$product->body!!}</p>

			<hr>
		</div>
	</div>
	<!-- /.card -->
	{{-- featured --}}

	<div class="row" style="width:840px;margin-left:3px;">
		<h3><img style="width:35px" src="/storage/icons/poke.png" alt="">Рекомендовано</h3>
		@if(count($products)>0)
		<div class="row">
			@foreach($products as $producty)
			<div class="col-lg-4 col-md-6 mb-4">
				<div class="card">
					<div class="image">
						<a href="{{$producty->slug}}"><img class="card-img-top" style='height:200px;' src={{asset('storage/'.$producty->image1)}} alt=""></a>
						<a href="{{$producty->slug}}">
							<h2><span>{{$producty->price}} грн<span class='spacer'> </h2></a>
                  </div>
                  <div class="card-body">
                    <h4 class="card-title">
                    <a style = " text-decoration: none;"href="{{$producty->slug}}">{{$producty->name}}</a> 
                    </h4> 
                    <p class="card-text">{!!$producty->shortdesc!!}</p>
                  </div> 
                </div>
			  </div>  
            @endforeach 
			</div>   
		 @endif
	</div>
</div>
@endsection