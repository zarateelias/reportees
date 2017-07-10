<?php
class Conexion
{

function __construct($database){

$this->conectar($database);
}

    private function conectar($database){
    $conexion = @mysql_connect('localhost', 'root', '');
    mysql_select_db($database, $conexion);
    }
}