<?php
class userModel{

    private $db;

    public function __construct(){
        $this->db= new PDO ('mysql:host=localhost;dbname=db_juego;charset=utf8', 'root', '');
    }

    public function ObtenerUsuarios(){
        
        $query= $this->db->prepare('SELECT * FROM usuarios');
        $query->execute();

        return $query->fetchAll(PDO::FETCH_OBJ);
        
    }
    public function getbyUsername($username){
        $query= $this->db->prepare('SELECT * FROM usuarios WHERE user=?');
        $query->execute(array($username));

        return $query->fetch(PDO::FETCH_OBJ);
    }
    public function CrearUsuario($username,$password,$admin=0){
        
        $query= $this->db->prepare('INSERT INTO usuarios (user,password,admin) VALUE(?,?,?)');
        $query->execute([$username,$password,$admin]);
    }
    public function BorrarUsuario($usuario){
        $query = $this->db->prepare('DELETE FROM usuarios WHERE user = ?');
        $query->execute([$usuario]);
    }
    
}
?>