<?php
class juegoModel{
    
    private $db;

    public function __construct() {
        $this->db = new PDO('mysql:host=localhost;dbname=db_games;charset=utf8', 'root', '');
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
    public function crear( $titulo,$descripcion,$precio,$categoria,$imagen,$link){
        $query = $this->db->prepare('INSERT INTO juego(nombre, descripcion, precio, imagen, trailer, id_genero_fk) VALUE(?,?,?,?,?,?)');
        $query->execute([ $titulo,$descripcion,$precio,$imagen,$link,$categoria]);
    }
    function borarJuego($id) {
        $query = $this->db->prepare('DELETE FROM juego WHERE id = ?');
        $query->execute([$id]); 
    }
    function editarJuego($titulo,$precio,$imagen,$link,$categoria,$descripcion,$id){
        $query = $this->db->prepare('UPDATE juego SET nombre= ?, descripcion= ?, precio= ?,imagen= ?,trailer= ?, id_genero_fk= ?  WHERE id = ?');
        $query->execute(array($titulo,$descripcion,$precio,$imagen,$link,$categoria,$id));
        var_dump($query->errorinfo());
    }
    function getFor($nombre){
        $query = $this->db->prepare('SELECT j.* FROM juego AS j JOIN genero as c ON j.id_genero_fk = c.id_genero WHERE c.nombre = ?');
        $query->execute(array($nombre));
        return $query->fetchAll(PDO::FETCH_OBJ);
    }

        

       


}
?>