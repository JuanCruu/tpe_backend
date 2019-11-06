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
        $this->authHelper-> checkLogeed();
    }
    function mostrarAdmin(){
        
         $juegos = $this->modeljuegos->getAll();
         $categorias=$this->categoriasModel->getCategorias();
         $this->view->admin($juegos,$categorias);
        }
    ///#juegos/////////////////////////////////////////////////////
    function agregarJuego(){
       
       $titulo = $_POST['titulo'];
       $descripcion = $_POST['descripcion'];
       $precio = $_POST['precio'];
       $categoria=$_POST['categoria'];
       #$imagen=$_POST['imagen'];
       $link=$_POST['link'];
        if(isset($_POST['titulo'])){

            if($_FILES['input_name']['type'] == "image/jpg" || $_FILES['input_name']['type'] == "image/jpeg" 
            || $_FILES['input_name']['type'] == "image/png" ) {
            
                $imagen=$_FILES['input_name']['tmp_name'];
                $this->modeljuegos->crear( $titulo,$descripcion,$precio,$categoria,$imagen,$link);
                header ("Location: admin");
            }


            
        }
    }
    function borrar($params = NULL){
        $id = $params[':ID'];
        $this->modeljuegos->borarjuego($id);
        header ("Location: ../admin"); 
        
   }
   function editar($params = NULL){
       $id = $params[':ID'];
        $eljuego= $this->modeljuegos->getjuego($id);
        $categorias=$this->categoriasModel->getCategorias();
          $this->view->formularioEditar($eljuego,$categorias);

   }
       
   function confirmar($params=NULL){
       $id=$params[':ID'];
       if(isset($_POST['titulo'])){
           $titulo = $_POST['titulo'];
           $descripcion = $_POST['descripcion'];
           $precio = $_POST['precio'];
           $categoria=$_POST['categoria'];
           #$imagen=$_POST['imagen'];
           $link=$_POST['link'];
           var_dump($_POST);

           if($_FILES['input_name']['type'] == "image/jpg" || $_FILES['input_name']['type'] == "image/jpeg" 
           || $_FILES['input_name']['type'] == "image/png" ) {
               $imagen=$_FILES['input_name']['tmp_name'];
            }    
            $this->modeljuegos->editarJuego( $titulo,$precio,$imagen,$link,$categoria,$descripcion,$id);
            header ("Location: ../admin");
           

   }
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
  function editarCategoria($params=null){
      $id=$params[':ID'];
      $idGenero=$this->categoriasModel->getIdcategorias($id);
      $this->view->formCategoria($idGenero);
  }
  function confirmarCategoria($params=null){
      $id=$params[':ID'];
       if(isset($_POST['titulo'])){
           $titulo = $_POST['titulo'];
           $this->categoriasModel->updateCategoria($id,$titulo);
          header ("Location: ../admin");
           
       }
    }
            

        



            
        



           
                
    
         

         

       
       
}
