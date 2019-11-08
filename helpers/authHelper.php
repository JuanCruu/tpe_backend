<?php
    include_once('./model/userModel.php');

class authHelper{
    
    private $model;

    public function __construct(){
      $this->model=new userModel;  
    }
    
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
        }else{
            $nombre=$_SESSION ['USERNAME'];
            $Admin=$this->model->getbyUsername($nombre);
                if($Admin->admin==0){
                    header('Location: ' . VER);
                    die();
                }
            }

    }
    
    
}
?>