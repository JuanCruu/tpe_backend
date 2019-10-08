<?php
require_once('controller/controlTask.php');
require_once('controller/loginController.php');
require_once('Router.php');

define("BASE_URL", 'http://'.$_SERVER["SERVER_NAME"].':'.$_SERVER["SERVER_PORT"].dirname($_SERVER["PHP_SELF"]).'/');
    define("LOGIN",  'login');
    define("VER",  'ver');
    define("ADMIN", 'admin');

    #,,,,,,,,,,.
    $r= new Router();
    $r->addRoute("login", "GET", "loginController", "showLogin");
    $r->addRoute("ver", "GET", "controlTask", "mostrarTareas");
    $r->addRoute("verify", "POST", "loginController", "verifyUser");
    #posible id faltante
    $r->addRoute("admin", "GET", "controlTask", "mostrarAdmin");
    $r->addRoute("logout", "POST", "loginController", "logout");
    $r->addRoute("agregar", "POST", "controlTask", "agregarJuego");

    $r->addRoute("editar/:ID", "GET", "controlTask", "editar");
    $r->addRoute("borrar/:ID", "GET", "controlTask", "borrar");
    $r->addRoute("confirmar/:ID", "POST", "controlTask", "confirmar");
    $r->addRoute("buscar/:ID", "GET", "controlTask", "buscar");
    $r->addRoute("juego/:ID", "GET", "controlTask", "juego");


    //Ruta por defecto.
    $r->setDefaultRoute("controlTask", "mostrarTareas");

    //run
    $r->route($_GET['action'], $_SERVER['REQUEST_METHOD']); 



   
  //  if($_GET['action']==''){
  //   $_GET['action']='ver';
  //  }
  //  $partesURL=explode('/',$_GET['action']);
   

  //  switch ($partesURL[0]) {
    
      
  //     case 'logout':
  //       $controller= new loginController();
  //       $controller-> logout();
  //     case 'ver':
  //       $controller=new controlTask();
  //       $controller-> mostrarTareas();
  //       break;
  //     case 'admin':
  //       $controller=new controlTask();
  //       $controller-> mostrarAdmin();
  //       break;
  //     case 'login':
  //       $controller=new loginController();
  //       $controller-> showLogin();
  //       break;
  //     case 'verify':
  //       $controller=new loginController();
  //       $controller-> verifyUser();
  //       break;
  //     case 'agregar':
  //       $controller=new controlTask();
  //       $controller->agregarJuego();
  //       break;
  //     case 'borrar':
  //       $controller=new controlTask();
  //       $controller->borrar($partesURL[1]);
  //       break;
  //     case 'editar':
  //       $controller=new controlTask();
  //       $controller->editar($partesURL[1]);
  //       break;
  //     case 'confirmar':
  //       $controller=new controlTask();
  //       $controller->confirmar($partesURL[1]);
  //       break;
  //     case 'juego':
  //       $controller=new controlTask();
  //       $controller->juego($partesURL[1]);
  //       break;
  //     case 'buscar':
  //       $controller=new controlTask();
  //       $controller->buscar($partesURL[1]);
  //       break;
  //  }

    
 
 ?>