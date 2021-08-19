<?php header("Access-Control-Allow-Origin: *");

/* Conexion a la BBDD */
$db = mysqli_connect('localhost', 'id17330925_tamara_bellresto', '}ReByk%D5*SZvbX|', 'id17330925_bellresto');

mysqli_set_charset($db, 'utf8mb4');

/* Sentencia SQL que se ejecutara en la BBDD. */
$query = "SELECT * FROM platos
INNER JOIN moneda ON platos.monedas_id_fk=monedas.moneda_id";

$res = mysqli_query($db, $query);

/* Array en JSON con los resultados de la query. */
$salida = [];

while($fila = mysqli_fetch_assoc($res)) {
    $salida[] = mysqli_result($fila);
}

/* Generamos el JSON usando json_encode. */
echo json_encode($salida);

?>

