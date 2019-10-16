<?php
include_once('model/juegoMoldel.php');
include_once('view/viewHome.php');

# encargado de la logica de la pagina principal

class homeController{
    
    private $model;
    private $view;
    private $authHelper;

    function __construct(){
        $this->model=new juegoModel();
        $this->view=new viewHome();
        $this->authHelper = new AuthHelper();
    }
    function mostrarjuegos(){
        $tareas = $this->model->getAll();
        $this->view->showTask($tareas);
    }  
    function juego($params=NULL){
        $id=$params[':ID'];
        $juego = $this->model->getJuego($id);
        $this->view->verJuego($juego);
        
    }
    function buscar($params=NULL){
        $id=$params[':ID'];
        $juegos=$this->model->getFor($id);
        $this->view->showTask($juegos);
    }

   

}

?>