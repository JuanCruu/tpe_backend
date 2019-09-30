<?php
require_once('libs/Smarty.class.php');

class LoginView {

    public function showLogin() {
        $smarty = new Smarty();
        $smarty->assign('titulo', 'Iniciar Sesión');
        $smarty->display('templates/login.tpl');
    }

}
