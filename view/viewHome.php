<?php
include_once('libs/smarty.class.php');
#encargado de mostrar la pagina principal
class viewHome{
    private $smarty;
    public function __construct(){
         $this->smarty= new Smarty();
         $this->smarty->assign('basehref', BASE_URL);
     }
     public function showGames($juegos,$categorias,$sesion=null,$usuario=null){
          $this->smarty->assign('usuario',$usuario);
          $this->smarty->assign('sesion',$sesion);
          $this->smarty->assign('categorias',$categorias);
          $this->smarty->assign('datos',$juegos);
        $this->smarty->display('templates/home.tpl');
     }
     public function mostrarTareas(){
          $tareas = $this->model->getAll();
          $this->view->showGames($tareas);

     }
   public function verJuego($juego,$sesion=null,$usuario=null){
     $this->smarty->assign('usuario',$usuario);
     $this->smarty->assign('juego',$juego);
     $this->smarty->assign('sesion',$sesion);
     $this->smarty->display('templates/juego.tpl');
     }
}