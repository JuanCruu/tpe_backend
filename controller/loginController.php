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
    public function verifyUser(){
        $username = $_POST['username'];
        $password = $_POST['password'];

        $user= $this->model->getbyUsername($username);
       if (!empty($user) && password_verify($password, $user->password)){
            echo "asds";
            header("Location:" .  ADMIN);
        } else{
            var_dump( $password);
            var_dump($user);
        }
    }
    
}
?>