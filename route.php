<?php
require_once('controller/controlTask.php');

   if($_GET['action']==''){
    $_GET['action']='ver';
   }
   $partesURL=explode('/',$_GET['action']);
    
   switch ($partesURL[0]) {
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
      case 'juego':
        $controller=new controlTask();
        $controller->juego($partesURL[1]);

   }

    
 
 ?>