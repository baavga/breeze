<!DOCTYPE html>
<html lang="en"> 
        @include('layout.head') 
<body>
@include('layout.nav') 
<div class="container ">
    <div class="row">
        <div class="col-lg-3">
            @include('layout.category') 
        </div>
         <div class="col-lg-9"> 
            @yield('content')
         </div>
    </div>

        
</div>
  
@include('layout.footer')
</body>
</html>