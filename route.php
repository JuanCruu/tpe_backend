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
      case 'admin':
        $controller=new controlTask();
        $controller-> mostrarAdmin();
      case 'agregar':
        $controller=new controlTask();
        $controller->agregarJuego();
      case 'borrar':
        $controller=new controlTask();
        $controller->borrar($partesURL[1]);

   }

    
 
 ?>