<?php
class juegoModel{
    
    private $db;

    public function __construct() {
        $this->db = new PDO('mysql:host=localhost;dbname=db_juego;charset=utf8', 'root', '');
    }
    public function getAll() {
        $query = $this->db->prepare('SELECT * FROM juego');
        $query->execute();
        return $query->fetchAll(PDO::FETCH_OBJ);
    }
    public function getjuego($id) {
        $query = $this->db->prepare('SELECT * FROM juego WHERE id = ?');#obtener id del juego mediante a hreft juego/id=(lo que imprima el juego)
        $query->execute(array($id));
        return $query->fetch(PDO::FETCH_OBJ);
    }
    public function crear( $titulo,$descripcion,$precio,$categoria,$imagen=null,$link){
        $pathImg = null;
        if ($imagen)
        $pathImg = $this->subirImagen($imagen);

        $query = $this->db->prepare('INSERT INTO juego(nombre, descripcion, precio, imagen, trailer, id_genero_fk) VALUE(?,?,?,?,?,?)');
        $query->execute([ $titulo,$descripcion,$precio,$pathImg,$link,$categoria]);
    }
    private function subirImagen($imagen){
        $target = 'img/juego/' . uniqid() . '.jpg';
        move_uploaded_file($imagen, $target);
        return $target;
    }
    function borarJuego($id) {
        $query = $this->db->prepare('DELETE FROM juego WHERE id = ?');
        $query->execute([$id]); 
    }
    function editarJuego($titulo,$precio,$imagen=null,$link,$categoria,$descripcion,$id){
        $pathImg = null;
        if ($imagen){
             $pathImg = $this->subirImagen($imagen);
             $query = $this->db->prepare('UPDATE juego SET nombre= ?, descripcion= ?, precio= ?,imagen= ?,trailer= ?, id_genero_fk= ?  WHERE id = ?');
             $query->execute(array($titulo,$descripcion,$precio,$pathImg,$link,$categoria,$id));
            var_dump($query->errorinfo());
        }else{
            $query = $this->db->prepare('UPDATE juego SET nombre= ?, descripcion= ?, precio= ?,trailer= ?, id_genero_fk= ?  WHERE id = ?');
            $query->execute(array($titulo,$descripcion,$precio,$link,$categoria,$id));
        }
        
    }
    function getFor($nombre){
        $query = $this->db->prepare('SELECT j.* FROM juego AS j JOIN genero as c ON j.id_genero_fk = c.id_genero WHERE c.nombre = ?');
        $query->execute(array($nombre));
        return $query->fetchAll(PDO::FETCH_OBJ);
    }

        

       


}
?>