<?php
    include_once('./model/categoriasModel.php');
    include_once('./model/juegoModel.php');
    include_once('./model/userModel.php');
    include_once('./view/viewAdmin.php');
    include_once('./helpers/authHelper.php');

    #se encarga de la logica de la seccion administrador.

class adminController{

    private $categoriasModel;
    private $modeljuegos;
    private $view;
    private $authHelper;
    private $usermodel;


    function __construct(){
        $this->categoriasModel=new categoriasModel();
        $this->modeljuegos=new juegoModel();
        $this->view=new viewAdmin();
        $this->usermodel= new userModel();
        $this->authHelper = new AuthHelper();
        $this->authHelper-> checkLogeed();
    }
    function mostrarAdmin(){
        
         $juegos = $this->modeljuegos->getAll();
         $categorias=$this->categoriasModel->getCategorias();
         $usuarios=$this->usermodel->ObtenerUsuarios();
        
         $this->view->admin($juegos,$categorias,$usuarios);
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
    public function borrarimagen($params=null){
        $id=$params[':ID'];
        $imagen = $this->modeljuegos->getjuego($id);
        var_dump($imagen->imagen);
        unlink($imagen->imagen);

        $this->modeljuegos->borrarimagen($id);
        header ("Location: ../juego/".$id); 
    }   
    ///#categorias/////////////////////////////////////////////////
  
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
              
      ///#usuario///////////////////////
      public function borrarUsuario($params=null){
        $usuario=$params[':ID'];
        $this->usermodel->borrarUsuario($usuario);
        header ("Location: ../admin");
  
      }
      public function Promover_Destituir($params=null){
          $usuario=$params[':ID'];
          
          $privilegio;#variable la cual contendra el valor booleano que tendra el usuario (si va ser admin o dejara de serlo)
  
          #
          $User=$this->usermodel->getbyUsername($usuario);
          #para no hacer dos funciones exactamente iguales con un valor diferente pense en esto como una perilla de luz.
          if( $User->admin==1){
              $privilegio=0;
          }elseif($User->admin==0){
              $privilegio=1;
          }
          #si el usuario era un admnistrador dejara de serlo y perdera acceso a la zona de administracion y
          #Si era usuario se volvera admnistrador;
          #(esto ya del vamos no es nada seguro,un administrador podria volver a todos usuarios y ya nadie podria entrar a la zona de admnistracion para sacarle.
          # es mas hasta el mismo se podria destituir solo y ya nadie podria administrar nada...)
          $this->usermodel->Promover_Destituir($usuario,$privilegio);
          header ("Location: ../admin");
  
      }
        
          
  
  
  
              
          
  
  
  
             
                  
      
           
  
           
  
         
         
  }



