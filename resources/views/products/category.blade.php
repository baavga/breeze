@extends('layout.super')

@section('content')
      {{-- Product loop --}}
      @if(count($products)>0)
      <div class="row">
          @foreach($products as $product)
        <div class="col-lg-4 col-md-6 mb-4">
          <div class="card h-100">
          <a href="#"><img class="card-img-top" src="storage/{{$product->image}}" alt=""></a> 
            <div class="card-body">
              <h4 class="card-title">
              <a href="#">{{$product->name}}</a> 
              </h4>
              <h5>₮{{$product->price}}</h5>
              <p class="card-text">{!!$product->shortdesc!!}</p>
            </div> 
          </div>
        </div>  
      @endforeach
      @endif

      {{-- end product loop --}}
@endsection