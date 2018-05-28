@extends('layout.super')  
<head>
	<title>{{$post->title}}</title>
	<meta title="KEYWORDS" CONTENT="Бриз ХХК, Барилгын материал, {{$post->title}}, Сауна хийнэ, Бойлер зарна, шалны халаалт зарна">
    <meta title="description" content="{{$post->title}}">

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
     background: rgb(0, 0, 0); /* fallback color */
     background: rgba(0, 0, 0, 0.7);
     padding: 10px; 
  }
  h2 span.spacer {
     padding:0 0px;
  }
  
</style>
<link href={{asset("css/bootstrap.min.css")}} rel="stylesheet">
 @section('content')  
 
 
	<link rel="stylesheet" href={{asset("css/postDetail.css")}}>
	<div class="row " style="margin-top: 50px;">
		<div class="col-lg-8">
		<a href="/бойлер/howto" class = 'btn btn-dark'>Буцах</a><br>
		<h3>{{$post->title}}</h3><br>
		<img id="expandedImg" src="/storage/{{$post->image}}" style="width:600px;height:400px; " class = "img-fluid" alt = "{{$post->title}}" > 
	</div>
	<div class="col-lg-4" >
	</div>
	<!-- /.card -->  
</div> 
<div class="row" style="margin-left:0px !important;">
	<div class="card card-outline-secondary my-4 ">
		<div class="card-header">
			Мэдээлэл
		</div>
		<div class="card-body">
			<p style="width:840px;"> {!!$post->body!!}</p>
 
			<hr> 
	</div>
</div>
	<!-- /.card -->
	{{-- featured
	 --}}
	<div class="row" style="width:840px;margin-left:3px;">
    <h3><img style="width:35px" src="/storage/icons/poke.png" alt="{{$post->title}}">Танд санал болгох</h3>
	@if(count($products)>0)
            <div class="row">
                @foreach($products as $producty)
              <div class="col-lg-4 col-md-6 mb-4">
                <div class="card">
                  <div class="image">
				  <a href="/{{$producty->slug}}"><img class="card-img-top" style='height:200px;' src={{asset('storage/'.$producty->image1)}} alt=""></a> 
                   <a href="/{{$producty->slug}}"><h2><span>{{$producty->price}}₮<span class='spacer'> </h2></a>
                  </div>
                  <div class="card-body">
                    <h4 class="card-title">
                    <a style = " text-decoration: none;"href="/{{$producty->slug}}">{{$producty->name}}</a> 
                    </h4> 
                    <p class="card-text">{!!$producty->shortdesc!!}</p>
                  </div> 
                </div>
			  </div>  
            @endforeach 
			</div>   
		 @endif
	</div>
@endsection  