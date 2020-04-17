<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- CSRF Token -->
  <meta name="csrf-token" content="{{ csrf_token() }}">

  <title>{{ config('app.name', 'Laravel') }}</title>

  <!-- Styles -->
  <link href="{{ asset('/css/app.css') }}" rel="stylesheet">
</head>
<body class="app">

  

    <div class="peers ai-s fxw-nw h-100vh">
      <div class="d-n@sm- peer peer-greed h-100 pos-r bgr-n bgpX-c bgpY-c bgsz-cv" style='background-image: url("/images/bg2.jpg")'>
        <div class="pos-a centerXY">
          <div class="bgc-white bdrs-50p pos-r" style='width: 120px; height: 120px;'>
            <img class="pos-a centerXY" src="/images/logo2.png" alt="">
          </div>
        </div>
      </div>
      <div class="col-12 col-md-4 peer pX-40 pY-80 h-100 bgc-white scrollable pos-r" style='min-width: 320px;'>
                              


<!--content-->

                                  <h4 class="fw-300 c-grey-900 mB-40">Ingresar</h4>
                            <form class="form-horizontal" method="POST" action="{{ route('login') }}">
                                {{ csrf_field() }}

                                <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
                                    <label for="email" class="text-normal text-dark">Correo Electrónico</label>
                                    <input id="email" type="email" class="form-control" name="email" value="{{ old('email') }}" required autofocus>

                                    @if ($errors->has('email'))
                                        <span class="form-text text-danger">
                                            <small>{{ $errors->first('email') }}</small>
                                        </span>
                                    @endif
                                </div>

                                <div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">
                                    <label for="password" class="text-normal text-dark">Contraseña</label>
                                    <input id="password" type="password" class="form-control" name="password" required>

                                    @if ($errors->has('password'))
                                        <span class="form-text text-danger">
                                            <small>{{ $errors->first('password') }}</small>
                                        </span>
                                    @endif
                                </div>

                                <div class="form-group">
                                    <div class="peers ai-c jc-sb fxw-nw">
                                        <div class="peer">
                                            <!--<div class="checkbox checkbox-circle checkbox-info peers ai-c">
                                                <input type="checkbox" id="remember" name="remember" class="peer" {{ old('remember') ? 'checked' : '' }}>
                                                <label for="remember" class=" peers peer-greed js-sb ai-c">
                                                    <span class="peer peer-greed">Remember Me</span>
                                                </label>
                                            </div>-->
                                        </div>
                                        <div class="peer">
                                            <button class="btn btn-primary">Login</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="peers ai-c jc-sb fxw-nw">
                                    <div class="peer">
                                        <a class="btn btn-link" href="{{ route('password.request') }}">
                                            Olvide mi contraseña?
                                        </a>
                                    </div>
                                    <div class="peer">
                                        <!--<a href="/register" class="btn btn-link">Create new account</a>-->
                                    </div>
                                </div>
                            </form>



<!-- content-->



      </div>
    </div>
  
</body>
</html>




