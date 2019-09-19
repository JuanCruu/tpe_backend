<?php
class modelTask{
    private $db;

    public function __construct() {
        $this->db = new PDO('mysql:host=localhost;dbname=db_games;charset=utf8', 'root', '');
    }

    
    public function getAll() {
        $query = $this->db->prepare('SELECT * FROM juego');
        $query->execute();

        return $query->fetchAll(PDO::FETCH_OBJ);
    }
}
?>