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



  <!--PLANTILLA---------------------------------------------------------------------->

    <link href="{{asset('css/bootstrap.min.css')}}" rel="stylesheet">
    <link href="{{asset('font-awesome/css/font-awesome.css')}}" rel="stylesheet">

    <!-- Toastr style -->
    <link href="{{asset('css/plugins/toastr/toastr.min.css')}}" rel="stylesheet">

    <!-- Gritter -->
    <link href="{{asset('js/plugins/gritter/jquery.gritter.css')}}" rel="stylesheet">

    <link href="{{asset('css/animate.css')}}" rel="stylesheet">
    <link href="{{asset('css/style.css')}}" rel="stylesheet">





<!-- Mainly scripts -->
    <script src="{{asset('js/jquery-3.1.1.min.js')}}"></script>
    <script src="{{asset('js/bootstrap.min.js')}}"></script>
    <script src="{{asset('js/plugins/metisMenu/jquery.metisMenu.js')}}"></script>
    <script src="{{asset('js/plugins/slimscroll/jquery.slimscroll.min.js')}}"></script>

    <!-- Flot -->
    <script src="{{asset('js/plugins/flot/jquery.flot.js')}}"></script>
    <script src="{{asset('js/plugins/flot/jquery.flot.tooltip.min.js')}}"></script>
    <script src="{{asset('js/plugins/flot/jquery.flot.spline.js')}}"></script>
    <script src="{{asset('js/plugins/flot/jquery.flot.resize.js')}}"></script>
    <script src="{{asset('js/plugins/flot/jquery.flot.pie.js')}}"></script>

    <!-- Peity -->
    <script src="{{asset('js/plugins/peity/jquery.peity.min.js')}}"></script>
    <script src="{{asset('js/demo/peity-demo.js')}}"></script>

    <!-- Custom and plugin javascript -->
    <script src="{{asset('js/inspinia.js')}}"></script>
    <script src="{{asset('js/plugins/pace/pace.min.js')}}"></script>

    <!-- jQuery UI -->
    <script src="{{asset('js/plugins/jquery-ui/jquery-ui.min.js')}}"></script>

    <!-- GITTER -->
    <script src="{{asset('js/plugins/gritter/jquery.gritter.min.js')}}"></script>

    <!-- Sparkline -->
    <script src="{{asset('js/plugins/sparkline/jquery.sparkline.min.js')}}"></script>

    <!-- Sparkline demo data  -->
    <script src="{{asset('js/demo/sparkline-demo.js')}}"></script>

    <!-- ChartJS-->
    <script src="{{asset('js/plugins/chartJs/Chart.min.js')}}"></script>

    <!-- Toastr -->
    <script src="{{asset('js/plugins/toastr/toastr.min.js')}}"></script>

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<style type="text/css">
  .minimalize-styl-2 {
    padding: 4px 4px;
    margin: 14px 5px 5px 20px;
    font-size: 14px;
    float: left;
}

.nav > li > p {
    color: #a7b1c2;
    font-weight: 600;
    padding: 14px 20px 14px 25px;
}

.stylea{
  color: #676a6c;
  font-weight: bold;
 font-size: 1.5em;
}
</style>
<!--PLANTILLA------------------------------------------------------------------------>


</head>
<body>
  
  <div id="wrapper">
      <nav class="navbar-default navbar-static-side" role="navigation">
          <div class="sidebar-collapse">
              <ul class="nav metismenu" id="side-menu">
                  <li class="nav-header">
                      <div class="dropdown profile-element"> <span>
                              <img alt="image" class="img-circle" height="50px" width="50px" src="{{Auth::user()->avatar}}" />
                               </span>
                          <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                              <span class="clear"> <span class="block m-t-xs"> <strong class="font-bold">{{ Auth::user()->name }}</strong>
                              </span> <span class="text-muted text-xs block">{{ Auth::user()->email }} <b class="caret"></b></span> </span> </a>
                          <ul class="dropdown-menu animated fadeInRight m-t-xs">
                              <li><a href="{{route('Profile.index')}}">Mi perfil</a></li>
                              <li class="divider"></li>
                              <li>
                                <a href="{{ route('logout') }}"
                                            onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                            Salir
                                        </a>

                                        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                            {{ csrf_field() }}
                                        </form>
                              </li>
                          </ul>
                      </div>
                      <div class="logo-element">
                          TASK
                      </div>
                  </li>
            <!--      <li>
                  <p style="background-color: #4D6379"><i class="fa fa-key" aria-hidden="true"></i> <span class="nav-label">Dashboard</span></p>
                </li>-->

                    <li>
                    <a href="{{route('home')}}"><i class="fa fa-home" aria-hidden="true"></i> <span class="nav-label">Dashboard</span></a>
                    </li>
                    <li class="">
                      <a href=""><i class="fa fa-thumb-tack" aria-hidden="true"></i> <span class="nav-label">Tareas</span> <span class="fa arrow"></span></a>
                      <ul class="nav nav-second-level collapse" style="height: 0px;">
                          @if(Task::rol() == "Administrador")
                          <li><a href="{{route('Admin-Task')}}">Administrar tareas</a></li>
                          <li><a href="{{route('My-Admin-Task')}}">Administrar mis tareas</a></li>
                        @else
                          <li><a href="{{route('My-Admin-Task')}}">Administrar mis tareas</a></li>
                          @endif
                      </ul>
                     </li>
                      <!--AVATAR-->
                     <li>
                      <a href="{{route('Avatars.index')}}"><i class="fa fa-smile-o" aria-hidden="true"></i> <span class="nav-label">Avatar</span></a>
                    </li>
                      <!--AVATAR-->
                      <!--USUARIOS-->
                    <li>
                      <a href="{{route('Users.index')}}"><i class="fa fa-users" aria-hidden="true"></i> <span class="nav-label">Usuarios</span></a>
                    </li>
                      <!--USUARIOS-->
                  <!--NOTIFICACIONES-->
                    <li>
                    <a href=""><i class="fa fa-comment-o" aria-hidden="true"></i> <span class="nav-label">Notificaciones</span> <span class="fa arrow"></span></a>
                      <ul class="nav nav-second-level collapse">
                          <li><a href="{{route('Notifications.index')}}">Mis notificaciones</a></li>
                          <li><a href="{{route('Notifications-Sent')}}">Notificaciones enviadas</a></li>
                          <!--<li><a href="http://mobile-yetitask.djfrankremixer.com/notificaciones-sistema">Notificaciones del sistema</a></li>-->
                          </ul>
                    </li>
                      <!--NOTIFICACIONES-->
                   <!--PERFIL-->
                    <li>
                    <a href=""><i class="fa fa-user" aria-hidden="true"></i> <span class="nav-label">Mi perfil</span> <span class="fa arrow"></span></a>
                      <ul class="nav nav-second-level collapse">
                          <li><a href="http://mobile-yetitask.djfrankremixer.com/Perfil/2">Mi perfil</a></li>
                          <li><a href="http://mobile-yetitask.djfrankremixer.com/Perfil/2/edit">Editar perfil</a></li>
                      </ul>
                  </li>
                    <!--PERFIL-->
                    <!--PERFIL-->
                    <li>
                    <a href=""><i class="fa fa-folder-open" aria-hidden="true"></i> <span class="nav-label">Grupos</span> <span class="fa arrow"></span></a>
                      <ul class="nav nav-second-level collapse">
                          <li><a href="{{route('Groups.index')}}">Mis grupos</a></li>
                          
                      </ul>
                  </li>
                    <!--PERFIL-->
                    <!--INVITACIONES-->
                    <li>
                      <a href="{{route('invitations.index')}}"><i class="fa fa-telegram" aria-hidden="true"></i> <span class="nav-label">Invitaciones</span></a>
                    </li>
                    <!--INVITACIONES-->
              </ul>
          </div>
      </nav>

      <div id="page-wrapper" class="gray-bg">
          <div class="row border-bottom">
          <nav class="navbar navbar-static-top  " role="navigation" style="margin-bottom: 0">
          <div class="navbar-header">
            <!--  <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i> </a>-->
              <a class="stylea navbar-minimalize minimalize-styl-2 " href="#"> <img width="45" height="45" src="{{asset('FUNDAMENTAL/ICONO-SIN-LETRA.png')}}" alt="">&nbsp  {!!Task::name_group()!!} </a>
              <a href="" class=" minimalize-styl-2"></a>
          </div>
              <ul class="nav navbar-top-links navbar-right">

                  <li>
                              <a href="{{ route('logout') }}"
                                  onclick="event.preventDefault();
                                           document.getElementById('logout-form').submit();">
                                  <i class="fa fa-sign-out"></i> Salir
                              </a>

                              <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                  {{ csrf_field() }}
                              </form>
                  </li>
              </ul>

          </nav>
          </div>

          <div class="wrapper wrapper-content">
                  <!--AQUI VA EL CONTENIDO -->
                      @yield('content')
                  <!--AQUI VA EL CONTENIDO-->
          </div>


          <div class="footer">
                  <div class="pull-right">
                      10GB of <strong>250GB</strong> Free.
                  </div>
                  <div>
                      <strong>Copyright</strong> Example Company &copy; 2014-2017
                  </div>
          </div>

      </div>
    </div>

 

<!--PLANTILLA----------------------------------------------->


<!--PLANTILLA----------------------------------------------->







</body>
</html>
