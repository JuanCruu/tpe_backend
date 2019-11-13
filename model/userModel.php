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
    public function CrearUsuario($username,$password,$answer){
        $admin=0;
        $query= $this->db->prepare('INSERT INTO usuarios (user,password,admin,answer) VALUE(?,?,?,?)');
        $query->execute([$username,$password,$admin,$answer]);
    }
    public function BorrarUsuario($usuario){
        $query = $this->db->prepare('DELETE FROM usuarios WHERE user = ?');
        $query->execute([$usuario]);
    }
    public function Promover_Destituir($usuario,$privilegio){
        $query = $this->db->prepare('UPDATE  usuarios SET admin = ?  WHERE user = ?');
        $query->execute([$privilegio,$usuario]);
    }
    public function resetPassword($password,$username){
        $query = $this->db->prepare('UPDATE  usuarios SET password = ?  WHERE user = ?');
        $query->execute([$password,$username]);

    }

        

    
}
?>