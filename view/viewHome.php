<?php
include_once('libs/smarty.class.php');
#encargado de mostrar la pagina principal
class viewHome{
    private $smarty;
    public function __construct(){
         $this->smarty= new Smarty();
         $this->smarty->assign('basehref', BASE_URL);
     }
     public function showGames($juegos,$categorias){
          $this->smarty->assign('categorias',$categorias);
          
          $this->smarty->assign('datos',$juegos);
        $this->smarty->display('templates/home.tpl');
   }
   function mostrarTareas(){
    $tareas = $this->model->getAll();
    $this->view->showGames($tareas);

    }
   public function verJuego($juego){
        $this->smarty->assign('juego',$juego);
        $this->smarty->display('templates/juego.tpl');
   }
}