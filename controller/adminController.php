<?php
    include_once('./model/categoriasModel.php');
    include_once('./model/juegoModel.php');
    include_once('./view/viewAdmin.php');
    include_once('./helpers/authHelper.php');
    #se encarga de la logica de la seccion administrador.

class adminController{

    private $categoriasModel;
    private $modeljuegos;
    private $view;
    private $authHelper;

    function __construct(){

        $this->categoriasModel=new categoriasModel();
        $this->modeljuegos=new juegoModel();
        $this->view=new viewAdmin();
        $this->authHelper = new AuthHelper();
    }
    function mostrarAdmin(){
         $this->authHelper-> checkLogeed();
         $juegos = $this->modeljuegos->getAll();
         $categorias=$this->categoriasModel->getCategorias();
         $this->view->admin($juegos,$categorias);
        }
    ///#juegos/////////////////////////////////////////////////////
    function agregarJuego(){
       var_dump($_POST['categoria']);

            $titulo = $_POST['titulo'];
            $descripcion = $_POST['descripcion'];
            $precio = $_POST['precio'];
            $categoria=$_POST['categoria'];
            $imagen=$_POST['imagen'];
            $link=$_POST['link'];
            if(isset($_POST['titulo'])){

                $this->modeljuegos->crear( $titulo,$descripcion,$precio,$categoria,$imagen,$link);
                header ("Location: admin");
            }
                
        }
    function editar($params = NULL){
                $id = $params[':ID'];
               $eljuego= $this->modeljuegos->getjuego($id);
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
                $this->modeljuegos->editarJuego( $titulo,$precio,$imagen,$link,$categoria,$descripcion,$id);
               header ("Location: ../admin");
                
            }
    
        }
    
    function borrar($params = NULL){
        $id = $params[':ID'];
        $this->modeljuegos->borarjuego($id);
        header ("Location: ../admin"); 
            
       }
       ///#categorias/////////////////////////////////////////////////////////////
   
       function borrarCategoria($params=null){
           $id=$params[':ID'];
           $this->categoriasModel->borrarCategoria($id);
           header ("Location: ../admin"); 
       }
       function agregarCategoria(){
           $nombre=$_POST['categoria'];
           $this->categoriasModel->agregarCategoria($nombre);
           header ("Location: admin"); 
       }

         

       
       
}
