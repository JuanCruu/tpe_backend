<?php
include_once('./model/juegoModel.php');
include_once('./model/categoriasModel.php');
include_once('./view/viewHome.php');

# encargado de la logica de la pagina principal

class homeController{

    private $categoriasModel;
    private $model;
    private $view;
    private $authHelper;

    function __construct(){
        $this->model=new juegoModel();
        $this->view=new viewHome();
        $this->authHelper = new AuthHelper();
        $this->categoriasModel=new categoriasModel();
    }
    function mostrarjuegos(){
        $juegos = $this->model->getAll();
        $categorias=$this->categoriasModel->getCategorias();
        $this->view->showGames($juegos,$categorias);
    }  
    function juego($params=NULL){
        $id=$params[':ID'];
        $juego = $this->model->getJuego($id);
        $this->view->verJuego($juego);
        
    }
    function buscar($params=NULL){
        $id=$params[':ID'];
        $juegos=$this->model->getFor($id);
        $categorias=$this->categoriasModel->getCategorias();
        $this->view->showGames($juegos,$categorias);
    }

   

}

?>