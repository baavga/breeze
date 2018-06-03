<a href="/"><h1 class="my-4"><img src={{asset("storage/icons/8A7NjnSZnuP5qYHXRH4oRdhiJ9NmJfMgQURQNOAR.png")}} alt="" style="width:225px;"></h1></a>

<style>
  .list-group-item{
    color:#212529;
    font-weight: bold;
  }
  .list-group-item:hover{
    color:brown; 
  }
  .fa-gripfire{
    font-size: 20px;
  }
</style>  
            @if(count($categories)>0)
            <div class="list-group">
              @foreach($categories as $category)
              <a href="/гермес/{{$category->slug}}" class="list-group-item"><img src={{asset("$category->image")}} style="width:30px" alt="Шалны халаалт үнэ"> {{$category->name}}</a>
              @endforeach
            </div>
            @endif  