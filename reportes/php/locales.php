<?php
include('conexion.php');
new conexion("reporteria");


$registro = mysql_query("select * from locales");
$a=array();

$auxiliar="";
while($registro2 = mysql_fetch_assoc($registro)){
    $locales="<p>id locales".$registro2['id_local']."nombre local".$registro2['nombre_local']."id cliente". $registro2['id_cliente']."</p></br>";
    $auxiliar=$auxiliar.$locales;
}

echo $auxiliar;

