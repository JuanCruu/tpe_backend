<?php
include_once('libs/smarty.class.php');

class viewAdmin{
     private $smarty;
     
     public function __construct(){
          $this->smarty= new Smarty();
          $this->smarty->assign('basehref', BASE_URL);
      }
    public function admin($tareas){
 
        $this->smarty->assign('datos',$tareas);
        $this->smarty->display('templates/admin.tpl');
     }
    
    public function formularioEditar($eljuego){
     $this->smarty->assign('juego',$eljuego);
     $this->smarty->display('templates/form.editar.tpl');   
    }
   
}
?>