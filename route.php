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
    #home
    $r->addRoute("ver", "GET", "homeController", "mostrarjuegos");
    $r->addRoute("buscar/:ID", "GET", "homeController", "buscar");
    $r->addRoute("juego/:ID", "GET", "homeController", "juego");
    #login
    $r->addRoute("login", "GET", "loginController", "showLogin");
    $r->addRoute("verify", "POST", "loginController", "verifyUser");
    $r->addRoute("logout", "POST", "loginController", "logout");
    #admin/juego
    $r->addRoute("admin", "GET", "adminController", "mostrarAdmin");
    $r->addRoute("agregar", "POST", "adminController", "agregarJuego");
    $r->addRoute("editar/:ID", "GET", "adminController", "editar");
    $r->addRoute("borrar/:ID", "GET", "adminController", "borrar");
    $r->addRoute("confirmar/:ID", "POST", "adminController", "confirmar");
    #admin/categoria
    $r->addRoute("borrarCategoria/:ID", "GET", "adminController", "borrarCategoria");
    $r->addRoute("agregarCategoria", "POST", "adminController", "agregarCategoria");
    $r->addRoute("editarCategoria/:ID", "GET", "adminController", "editarCategoria");

    /////////////////////////////////////////////////////
    //Ruta por defecto.
    $r->setDefaultRoute("homeController", "mostrarjuegos");
    //run
    $r->route($_GET['action'], $_SERVER['REQUEST_METHOD']); 
  




    


    

    
 
 ?>