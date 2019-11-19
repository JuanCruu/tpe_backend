<?php

    class ApiModel{
        private $db3;

        public function __construct(){
            $this->db3= new PDO ('mysql:host=localhost;dbname=db_juego;charset=utf8', 'root', '');
        }
        public function AllComents(){
            $query = $this->db3->prepare('SELECT * FROM comentario');
            $query->execute();

            return $query->fetchAll(PDO::FETCH_OBJ);
        }
    }
?>