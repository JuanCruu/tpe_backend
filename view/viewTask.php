<?php
include_once('libs/smarty.class.php');

class viewTask{
    public function admin($tareas){
        $smarty=new Smarty();
        $smarty->assign('datos',$tareas);
        $smarty->display('templates/admin.tpl');
     }
    public function showTask($tareas){
         $smarty=new Smarty();
         $smarty->assign('datos',$tareas);
         $smarty->display('templates/home.tpl');
    }
    public function verJuego($juego){
         #smarty creara la pagina.tpl con los datos del  juego que le pase por parametros
         $smarty=new Smarty();
         $smarty->assign('juego',$juego);
         $smarty->display('templates/juego.tpl');
    }
    public function formularioEditar(){
     $smarty=new Smarty();
     $smarty->display('templates/form.editar.tpl');   
    }
    public function otro($nose){
         echo "adasdasdas";
    }
}
?>