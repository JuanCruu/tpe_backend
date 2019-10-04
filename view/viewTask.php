<?php
include_once('libs/smarty.class.php');

class viewTask{
     private $smarty;
     public function __construct(){
          $this->smarty= new Smarty();
          $this->smarty->assign('basehref', BASE_URL);
      }
    public function admin($tareas){
 
        $this->smarty->assign('datos',$tareas);
        $this->smarty->display('templates/admin.tpl');
     }
    public function showTask($juegos){
         $this->smarty->assign('datos',$juegos);
         $this->smarty->display('templates/home.tpl');
    }
    public function verJuego($juego){
         #smarty creara la pagina.tpl con los datos del  juego que le pase por parametros
         $this->smarty->assign('juego',$juego);
         $this->smarty->display('templates/juego.tpl');
    }
    public function formularioEditar($eljuego){
     $this->smarty->assign('juego',$eljuego);
     $this->smarty->display('templates/form.editar.tpl');   
    }
    public function otro($nose){
         echo "adasdasdas";
    }
}
?>