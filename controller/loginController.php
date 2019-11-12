<?php
include_once('./model/userModel.php');
include_once('./view/loginView.php');
include_once('./helpers/authHelper.php');


class loginController{

    private $view;
    private $model; 
    private $authHelper;

    public function __construct(){
        $this->view = new loginView();
        $this->model = new userModel();
        $this->authHelper = new authHelper();
    }
    public function showLogin(){
        $this->view->showLogin();
    }
    public function showformularioRegistro(){
        $this->view->showformularioRegistro();
    }
    public function crearUsuario(){
        
        $username = $_POST['username'];
        $password = $_POST['password'];
        $passwordR = $_POST['passwordR'];
       
        
        if(!empty($username)&&!empty($password)&&!empty($passwordR)){

            $lugar=$this->model->getbyUsername($username);

            if(($lugar==false)&&($password==$passwordR)){
                
                $password = password_hash($_POST['password'],PASSWORD_DEFAULT);
               # $passwordR = password_hash($_POST['passwordR'],PASSWORD_DEFAULT);
               $this->model->CrearUsuario($username,$password);
               header('Location: ' . VER);
               

            }elseif($lugar!=false){
                $this->view->showformularioRegistro("El nombre de usuario ya esta registrado");
                #Si encontro a un usuario con ese nombre en la BDD  
            }else{
                $this->view->showformularioRegistro("las contrasenias no son iguales");
                
            }
        }
    else{
        #entra aca por descarte(casualmente cuando,no se rellenaron todos los imputs)
        $this->view->showformularioRegistro("Rellene todos los campos");
    }

    }

    
    public function verifyUser(){
        $username = $_POST['username'];
        $password = $_POST['password'];

        $user= $this->model->getbyUsername($username);
       if (!empty($user) && password_verify($password, $user->password)){
           
            $this->authHelper->login($user);
            header("Location:" .  ADMIN);
        } else {
            $this->view->showLogin("Login incorrecto");
        }
    }
    public function logout() {
        $this->authHelper->logout();
        header('Location: ' . LOGIN);
    }
}
                
                

                 
                     
            
?>
           



                   



    
