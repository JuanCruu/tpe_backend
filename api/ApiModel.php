<?php

    class ApiModel{
        private $db3;

        public function __construct(){
            $this->db3= new PDO ('mysql:host=localhost;dbname=db_juego;charset=utf8', 'root', '');
        }
        public function AllComents($param){
            
            $query = $this->db3->prepare('SELECT * FROM comentario where id_juego_fk=?');
            $query->execute([$param]);
           return $query->fetchAll(PDO::FETCH_OBJ);
            
        }
        public function PostComent($comentario,$juego,$id_usuario){
            $query = $this->db3->prepare('INSERT INTO comentario (comentario, id_juego_fk, id_usuario) VALUE(?,?,?)');
            $query->execute([$comentario,$juego,$id_usuario]);
            return $query->fetchAll(PDO::FETCH_OBJ);

        }
        public function DeleteComentario($id){
            $query = $this->db3->prepare('DELETE FROM comentario where id_comentario=?');
            $query->execute([$id]);
            return  $query->fetch(PDO::FETCH_OBJ);
        }
            
            
          
    

    }
?>