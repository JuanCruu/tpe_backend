<?php
    require_once('controller/homeController.php');
    require_once('controller/loginController.php');
    require_once('controller/adminController.php');
    require_once('Router.php');
    ///////////////////////////////////////////////////
    define("BASE_URL", 'http://'.$_SERVER["SERVER_NAME"].':'.$_SERVER["SERVER_PORT"].dirname($_SERVER["PHP_SELF"]).'/');
    define("LOGIN",  'login');
    define("VER",  'ver');
    define("ADMIN", 'admin');
    /////////////////////////////////////////////////////
    
    $r= new Router();
    $r->addRoute("login", "GET", "loginController", "showLogin");
    $r->addRoute("ver", "GET", "homeController", "mostrarjuegos");
    $r->addRoute("verify", "POST", "loginController", "verifyUser");
    $r->addRoute("admin", "GET", "adminController", "mostrarAdmin");
    $r->addRoute("logout", "POST", "loginController", "logout");
    $r->addRoute("agregar", "POST", "adminController", "agregarJuego");
    $r->addRoute("editar/:ID", "GET", "adminController", "editar");
    $r->addRoute("borrar/:ID", "GET", "adminController", "borrar");
    $r->addRoute("confirmar/:ID", "POST", "adminController", "confirmar");
    $r->addRoute("buscar/:ID", "GET", "homeController", "buscar");
    $r->addRoute("juego/:ID", "GET", "homeController", "juego");

    /////////////////////////////////////////////////////
    //Ruta por defecto.
    $r->setDefaultRoute("homeController", "mostrarjuegos");
    //run
    $r->route($_GET['action'], $_SERVER['REQUEST_METHOD']); 
  

    

    
 
 ?>