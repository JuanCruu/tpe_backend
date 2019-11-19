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
    public function traerComentarios($params = null){

      $comentarios = $this->Apimodel->AllComents();
      $this->Apiview->response($comentarios, 200);
    }


    
  

}



?>