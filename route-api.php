<?php
 require_once('api/ApiController.php');
 require_once('api/JSONView.php');
 require_once('Router.php');
 
 
 define("BASE_URL", 'http://'.$_SERVER["SERVER_NAME"].':'.$_SERVER["SERVER_PORT"].dirname($_SERVER["PHP_SELF"]).'/');
 define("LOGIN",  'login');
 define("VER",  'ver');
 define("ADMIN", 'admin');
 
 $r=new Router();
 
 $r->addRoute("Comentario/:ID","GET","ApiController","traerComentarios");
 $r->addRoute("Comentario","POST","ApiController","PostearComentario");
 
 $r->addRoute("Comentario/:ID","DELETE","ApiController","BorrarComentario");

 $r->route($_GET['resource'], $_SERVER['REQUEST_METHOD']); 
 
 
 
 

 
 
 ?>

