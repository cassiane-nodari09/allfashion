<?php

class Conexao {

    private $con = null;
    private $host = "localhost";
    private $user = "root";
    private $pass = "";        
    private $database = "allfashion";

    public function __construct() {
        //$this->conecta();
    }

    public function conecta() {
        $this->con = mysqli_connect($this->host, $this->user, $this->pass, $this->database) or die("Erro ao conectar ao servidor &raquo; " . mysqli_connect_errno());
        return $this->con;
    }

    public function desconecta() {
        $this->con->close();
    }

    public function executa ($sql) {
        // $this->con = new Conexao();
        $this->conecta();
        $re = $this->con->query($sql);
        $this->desconecta();
        return $re;
    }
}
