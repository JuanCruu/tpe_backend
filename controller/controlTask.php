<?php
include_once('model/modelTask.php');
include_once('view/viewTask.php');

class controlTask{
    
    private $model;
    private $view;


    function __construct(){
        $this->model=new modelTask();
        $this->view=new viewTask();
    }
    function mostrarTareas(){
    $tareas = $this->model->getAll();
    $this->view->showTask($tareas);

    }
    function mostrarAdmin(){
     $tareas = $this->model->getAll();
     $this->view->admin($tareas);
    }
    function agregarJuego(){
        if(isset($_POST['titulo'])){

            $titulo = $_POST['titulo'];
            $descripcion = $_POST['descripcion'];
            $precio = $_POST['precio'];
            $categoria=$_POST['categoria'];
            $imagen=$_POST['imagen'];
            $link=$_POST['link'];

            $this->model->crear( $titulo,$descripcion,$precio,$categoria,$imagen,$link);
            
        }
    }
    function borrar($id){
        $this->model->borarjuego($id);
        
        
    }

}

?>