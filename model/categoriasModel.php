<?php
     #aca va la logica del los generos,alta ,baja, media modificacion
    class categoriasModel {

        private $db2;

        public function __construct(){
            $this->db2= new PDO ('mysql:host=localhost;dbname=db_juego;charset=utf8', 'root', '');
        }
        public function getCategorias() {
            
           $query = $this->db2->prepare('SELECT * FROM genero');
            $query->execute();
            return $query->fetchAll(PDO::FETCH_OBJ);
            var_dump($query->errorinfo());
        }
        function borrarCategoria($id) {
            $query = $this->db2->prepare('DELETE FROM genero WHERE id_genero = ?');
            $query->execute([$id]); 
        }
        public function agregarCategoria( $nombre){
            $query = $this->db2->prepare('INSERT INTO genero (nombre) VALUE(?)');
            $query->execute([ $nombre]);
        }
        function updateCategoria($id,$titulo){
            $query = $this->db2->prepare('UPDATE genero SET nombre= ? WHERE id_genero = ?');
            $query->execute(array($titulo,$id));
            var_dump($query->errorinfo());
        }
        function  getIdcategorias($id){
            $query = $this->db2->prepare('SELECT * FROM genero where id_genero =?');
            $query->execute(array($id));
            return $query->fetch(PDO::FETCH_OBJ);


        }
        
    }
    ?>