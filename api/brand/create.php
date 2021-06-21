<?php
header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');
header('Access-Control-Allow-Methods: POST');
header('Access-Control-Allow-Headers: Access-Control-Allow-Headers,Content-Type, Access-Control-Allow-Methods');

include_once '\xampp\htdocs\secondapi\config\Database.php';
include_once '\xampp\htdocs\secondapi\models\Brand.php';

// Instantiate DB & connect
$database = new Database();
$db = $database->connect();

// Create Object Brand 
$brand = new Brand($db);

$data = json_decode(file_get_contents("php://input"));

// Set the value in database from value json input
$brand->id_brand = $data->id_brand;
$brand->nama_brand = $data->nama_brand;
$brand->created_at = $data->created_at;

if ($brand->Create()) {
    echo json_encode(
        array('message' => 'Create Data Success')
    );
} else {
    echo json_encode(
        array('message' => 'Create Data Failed')
    );
}
