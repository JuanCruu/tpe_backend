<?php
require_once('libs/Smarty.class.php');

class loginView {

    private $smarty;

    public function __construct() {
        $this->smarty = new Smarty();
        $this->smarty->assign('basehref', BASE_URL);
    }

    public function showLogin($error = null) {
        $this->smarty->assign('titulo', 'Iniciar Sesión');
        $this->smarty->assign('error', $error);
        $this->smarty->display('templates/login.tpl');
    }
    public function showformularioRegistro($error=null){
        $this->smarty->assign('titulo', 'Crear cuenta');
        $this->smarty->assign('error', $error);
        $this->smarty->display('templates/registro.tpl');

    }
    public function showrecuperacion($error=null){
        $this->smarty->assign('titulo', 'Recuperar cuenta');
        $this->smarty->assign('error', $error);
        $this->smarty->display('templates/recuperarcuenta.tpl');


    }
        

}