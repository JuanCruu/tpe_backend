<?php
class userModel{

    private $db;

    public function __construct(){
        $this->db= new PDO ('mysql:host=localhost;dbname=db_games;charset=utf8', 'root', '');
    }


    public function getbyUsername($username){
        $query= $this->db->prepare('SELECT * FROM usuarios WHERE user=?');
        $query->execute(array($username));

        return $query->fetch(PDO::FETCH_OBJ);
    }
    public function crearHash( ){
        $query = $this->db->prepare('INSERT INTO usuarios () VALUE()');
        $query->execute([]);
    }
}
?>