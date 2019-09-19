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
   }

    
 
 ?>