<?php
class authHelper{
    
    public function login($user){

        session_start();
        $_SESSION ['USERNAME']=$user->user;
        
    }
    public function logout() {
        session_start();
        session_destroy();
    }
    public function checkLogeed(){
        session_start();
        if(!isset($_SESSION ['USERNAME'])){
            header('Location: ' . LOGIN);
            die();
         }
    }
}
?>