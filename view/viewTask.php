<?php
include_once('libs/smarty.class.php');

class viewTask{
    public function showTask($tareas){
         $smarty=new Smarty();
         $smarty->assign('datos',$tareas);

         $smarty->display('templates/home.tpl');
    }
    
}
?>