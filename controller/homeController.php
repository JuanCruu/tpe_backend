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
    private $userModel;

    function __construct(){

        $this->userModel=new userModel();
        $this->model=new juegoModel();
        $this->view=new viewHome();
        $this->authHelper = new AuthHelper();
        $this->categoriasModel=new categoriasModel();
    }
    function mostrarjuegos(){
        $sesion=$this->authHelper->checkSeason();
        
        $juegos = $this->model->getAll();
        $categorias=$this->categoriasModel->getCategorias();

        if($sesion){
            $usuario=$this->userModel->getbyUsername($sesion);
            $this->view->showGames($juegos,$categorias,$sesion,$usuario);
        }else{

            $this->view->showGames($juegos,$categorias,$sesion);
        }
    }  


    function juego($params=NULL){

        $sesion=$this->authHelper->checkSeason();
        $id=$params[':ID'];
        $juego = $this->model->getJuego($id);
        if($sesion){
            $usuario=$this->userModel->getbyUsername($sesion);
            $this->view->verJuego($juego,$sesion,$usuario);
        }else{
            $this->view->verJuego($juego);
        }
    }

    function buscar($params=NULL){
        $id=$params[':ID'];
        $juegos=$this->model->getFor($id);
        $categorias=$this->categoriasModel->getCategorias();
        $this->view->showGames($juegos,$categorias);
    }

        

   

}

?>