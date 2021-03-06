<?php
class JSONView {

  protected $data;

  public function __construct(){

    $this->data = file_get_contents("php://input");
  }
  
public function response($data, $status) {
    header("Content-Type: application/json");
    header("HTTP/1.1 {$status} " . $this->_requestStatus($status));
    echo json_encode($data);
}

public function _requestStatus($code){
    $status = array(
      200 => "OK",
      404 => "Not found",
      500 => "Internal Server Error"
    );
  return (isset($status[$code]))? $status[$code] : $status[500];
}
public function getData() {
  return json_decode($this->data);
}

    
}
?>