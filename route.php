<?php
require_once('controller/controlTask.php');
require_once('controller/login.controller.php');

   if($_GET['action']==''){
    $_GET['action']='ver';
   }
   $partesURL=explode('/',$_GET['action']);
    
   switch ($partesURL[0]) {
    
      case 'login':# no anda nada
        $controller = new LoginController();
        $controller->showLogin();
        break;
      case 'ver':
        $controller=new controlTask();
        $controller-> mostrarTareas();
        break;
      case 'admin':
        $controller=new controlTask();
        $controller-> mostrarAdmin();
        break;
      case 'agregar':
        $controller=new controlTask();
        $controller->agregarJuego();
        break;
      case 'borrar':
        $controller=new controlTask();
        $controller->borrar($partesURL[1]);
        break;
      case 'editar': #no anda el model
        $controller=new controlTask();
        $controller->editar();
        break;
      case 'juego':
        $controller=new controlTask();
        $controller->juego($partesURL[1]);
        break;
      case 'buscar':#no funciona el join
        $controller=new controlTask();
        $controller->buscar($partesURL[1]);
        break;
   }

    
 
 ?>