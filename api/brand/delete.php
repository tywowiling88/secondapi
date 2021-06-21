<?php
header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');
header('Access-Control-Allow-Methods: DELETE');
header('Access-Control-Allow-Headers: Access-Control-Allow-Headers,Content-Type, Access-Control-Allow-Methods');

include_once '\xampp\htdocs\secondapi\config\Database.php';
include_once '\xampp\htdocs\secondapi\models\Brand.php';

// Instantiate DB & connect
$database = new Database();
$db = $database->connect();

// Create Object Brand 
$brand = new Brand($db);

$data = json_decode(file_get_contents("php://input"));

$brand->id_brand = $data->id_brand;

if ($brand->Delete()) {
    echo json_encode(
        array('message' => 'Delete Data Success')
    );
} else {
    echo json_encode(
        array('message' => 'Delete Data Failed')
    );
}
