<?php
require_once('ApiModel.php');
include_once('ApiJSON.php');



class ApiController{

    private $Apimodel;
    private $Apiview;

    private $data;
    public function __construct() {
        $this->Apimodel = new ApiModel();
        $this->Apiview = new JSONView();
        $this->data = file_get_contents("php://input");

    }
    private function getData() {
      return json_decode($this->data);
  }
    public function traerComentarios($params=[]){ 
            
      $comentarios = $this->Apimodel->AllComents($params[":ID"]);
      return $this->Apiview->response($comentarios, 200);
    }
    private function traerComentario($params=[]){ 
            
      $comentarios = $this->Apimodel->TheComents($params[":ID"]);
      return $this->Apiview->response($comentarios, 200);
    }

    public function PostearComentario($params){ 
      
      $comentario=$_POST['textarea'];
      $juego=$_POST['juego'];
      
      
      var_dump($params,$comentario, $juego);


      #$this->Apimodel->PostComent( $comentario,$juego,$params[":ID"]);
      
    }

      
    
     
    


    
  

}



?>