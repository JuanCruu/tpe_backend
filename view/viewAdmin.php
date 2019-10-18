<?php
include_once('libs/smarty.class.php');

class viewAdmin{
     private $smarty;
     
     public function __construct(){
          $this->smarty= new Smarty();
          $this->smarty->assign('basehref', BASE_URL);
      }
    public function admin($juegos,$categorias){
        
        $this->smarty->assign('categorias',$categorias);
        $this->smarty->assign('datos',$juegos);
        $this->smarty->display('templates/admin.tpl');
     }
    
    public function formularioEditar($eljuego,$categorias){
     $this->smarty->assign('juego',$eljuego);
     $this->smarty->assign('categorias',$categorias);
     $this->smarty->display('templates/form.editar.tpl');   


    }
    public function formCategoria($idGenero){
     $this->smarty->assign('genero',$idGenero);
     $this->smarty->display('templates/form.editar.categoria.tpl');   

    }
   
}
?>