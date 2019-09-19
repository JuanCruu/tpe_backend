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
}

?>