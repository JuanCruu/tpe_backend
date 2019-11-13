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
        $answer = $_POST['Pregunta'];

       
        
        if(!empty($username)&&!empty($password)&&!empty($passwordR)&&!empty($answer)){

            $lugar=$this->model->getbyUsername($username);

            if(($lugar==false)&&($password==$passwordR)){
                
                $password = password_hash($_POST['password'],PASSWORD_DEFAULT);
                $this->model->CrearUsuario($username,$password,$answer);
                #//////////////////////////////////////////////////////////////////////
                #una vez registrado el usuario vuelvo a buscar su nombre en la db para 
                #retornar su nombre a la funcion login(que solo se activa si el parametro es un objeto)
                $usuarioregistrado=$this->model->getbyUsername($username);
                $this->authHelper->login($usuarioregistrado);
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
            header("Location:" .  VER);
        } else {
            $this->view->showLogin("Login incorrecto");
        }
    }
    public function logout() {
        $this->authHelper->logout();
        header('Location: ' . VER);
    }
    public function recuperacion(){
        $this->view->showrecuperacion();
    }
    public function recuperar(){
        
        $username = $_POST['username'];
        $password = $_POST['Newpassword'];
        $passwordR = $_POST['NewpasswordR'];
        $answer = $_POST['Pregunta'];

        if(!empty($username)&&!empty($password)&&!empty($passwordR)&&!empty($answer)){

            $Usuario=$this->model->getbyUsername($username);

                if(($Usuario->user==$username)&&($password==$passwordR)&&($Usuario->answer==$answer)){
                    $Newpassword = password_hash($password,PASSWORD_DEFAULT);
                    $this->model->resetPassword($Newpassword,$username);
                    #???????????????????????????????????????????????
                    $usuarioregistrado=$this->model->getbyUsername($username);
                    $this->authHelper->login($usuarioregistrado);
                    header('Location: ' . VER);
                }

        }else{
            $this->view->showrecuperacion("Rellenar todos los campos");

        }

    }

    
    
}
                
                

                 
                     
            
?>
           



                   



    
