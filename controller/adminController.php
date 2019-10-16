<?php
    include_once('model/juegoMoldel.php');
    include_once('view/viewAdmin.php');
    include_once('helpers/authHelper.php');
    #se encarga de la logica de la seccion administrador.
class adminController{
    
    private $model;
    private $view;
    private $authHelper;

    function __construct(){
        $this->model=new juegoModel();
        $this->view=new viewAdmin();
        $this->authHelper = new AuthHelper();
    }

    function mostrarAdmin(){
         $this->authHelper-> checkLogeed();
         
         $tareas = $this->model->getAll();
         $this->view->admin($tareas);
        }
    function agregarJuego(){
            $categoria= 0;
            switch ($_POST['categoria']){
                case 'shooter':
                $categoria=1;
                    break;
                case 'carrera':
                $categoria=2;
                    break;
                case 'lucha':
                $categoria=3;
                    break;
                case 'mundo abierto':
                $categoria=4;
                    break;
                case 'indie':
                $categoria=5;
                    break;
                case 'estrategia':
                $categoria=6;
                    break;
            }
                $titulo = $_POST['titulo'];
                $descripcion = $_POST['descripcion'];
                $precio = $_POST['precio'];
                #categoria=$_POST['categoria'];
                $imagen=$_POST['imagen'];
                $link=$_POST['link'];
                if(isset($_POST['titulo'])){
    
                    $this->model->crear( $titulo,$descripcion,$precio,$categoria,$imagen,$link);
                    header ("Location: admin");
                }
                
        }
    function editar($params = NULL){
                $id = $params[':ID'];
               $eljuego= $this->model->getjuego($id);
                $this->view->formularioEditar($eljuego);
    
        }
    function confirmar($params=NULL){
                $id=$params[':ID'];
            if(isset($_POST['titulo'])){
                $categoria= 0;
                    switch ($_POST['categoria']){
                        case 'shooter':
                        $categoria=1;
                            break;
                        case 'carrera':
                        $categoria=2;
                            break;
                        case 'lucha':
                        $categoria=3;
                            break;
                        case 'mundo abierto':
                        $categoria=4;
                            break;
                        case 'indie':
                        $categoria=5;
                            break;
                        case 'estrategia':
                        $categoria=6;
                            break;
                    }
                $titulo = $_POST['titulo'];
                $descripcion = $_POST['descripcion'];
                $precio = $_POST['precio'];
                #$categoria=$_POST['categoria'];
                $imagen=$_POST['imagen'];
                $link=$_POST['link'];
                var_dump($_POST);
                $this->model->editarJuego( $titulo,$precio,$imagen,$link,$categoria,$descripcion,$id);
               header ("Location: ../admin");
                
            }
    
        }
    
    function borrar($params = NULL){
            $id = $params[':ID'];
            $this->model->borarjuego($id);
            header ("Location: ../admin"); 
            
        }
    #falta la parte de categorias
    #falta hacer los join en 
                            #agregarJuego() y confirmar()
}