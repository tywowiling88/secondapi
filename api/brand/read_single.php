<?php
// Headers
header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');

include_once '\xampp\htdocs\secondapi\config\Database.php';
include_once '\xampp\htdocs\secondapi\models\Brand.php';

// Instantiate DB & connect
$database = new Database();
$db = $database->connect();

// Create Object Brand 
$brand = new Brand($db);

// Get id_brand from URL 
$error_m = json_encode(
    array('message' => 'Data Not Found')
);
$brand->id_brand = isset($_GET['id_brand']) ? $_GET['id_brand'] : $error_m;

$result = $brand->ReadSingle();

$row = $result->fetch(PDO::FETCH_ASSOC);

// Set Properties 
$brand->nama_brand = $row['nama_brand'];
$brand->created_at = $row['created_at'];

// Create an array and put the properties and value inside
$brand_array = array(
    'nama_brand' => $brand->nama_brand,
    'created_at' => $brand->created_at
);

if ($brand->nama_brand != null && $brand->created_at != null) {
    echo json_encode(
        $brand_array
    );
} else {
    echo json_encode(
        $error_m
    );
}
