<?php
 require_once('api/ApiController.php');
 
 require_once('api/ApiJSON.php');

 require_once('Router.php');
 
 
 define("BASE_URL", 'http://'.$_SERVER["SERVER_NAME"].':'.$_SERVER["SERVER_PORT"].dirname($_SERVER["PHP_SELF"]).'/api');
 define("LOGIN",  'login');
 define("VER",  'ver');
 define("ADMIN", 'admin');
 
 $r=new Router();
 
 $r->addRoute("api/mostrarComentarios", "GET", "ApiController", "traerComentarios");
 $r->addRoute("api/comentar/:ID", "POST", "ApiController", "ponerComentario");
 $r->addRoute("api/eliminarcomentario/:ID", "DELETE", "ApiController", "borrarComentario");
 
 
 
 ?>

