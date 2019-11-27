<?php
require_once('ApiModel.php');
include_once('JSONView.php');



class ApiController{

  private $Apimodel;
  private $Apiview;
  private $data;

  public function __construct() {
    $this->Apimodel = new ApiModel();
    $this->Apiview = new JSONView();
  }

      
  
public function traerComentarios($params=[]){ 
  $comentarios = $this->Apimodel->AllComents($params[":ID"]);
  if(isset($comentarios)){
      return $this->Apiview->response($comentarios, 200);
    }else{
      return $this->Apiview->response(null, 404);
    }
}
    
public function BorrarComentario($params=null){
  if(count($params)==1){
    $respuesta= $this->Apimodel->DeleteComentario($params[":ID"]);
    if($respuesta==false){
      return $this->Apiview->response("borrado correctamente",200);
    }else{
      return $this->Apiview->response($respuesta,300);
    }
  }elseif($params==null){
    return $this->Apiview->responce("comentario no encontrado",200);
  }

}
public function PostearComentario($param=null){
  
  $data=$this->Apiview->getData();

    $comentario=$data->comentario;
    $juego=$data->id_juego_fk;
    $usuario=$data->id_usuario;
    $puntaje=$data->puntaje;
    

  $envio=$this->Apimodel->PostComent($comentario,$juego,$usuario,$puntaje);
  if($envio){
    return $this->Apiview->responce($envio,200);
  }

    #var_dump($comentario,$juego,$usuario);
  
}
      

    
  

      
    
     
    


    
  

}



?>