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

// Get all data from read function
$result = $brand->Read();

// Count the data 
$num = $result->rowCount();

if ($num > 0) {
    //if data is not empty 
    $brand_arr = array();

    while ($row = $result->fetch(PDO::FETCH_ASSOC)) {
        extract($row);

        $brand_item = array(
            'id_brand' => $id_brand,
            'nama_brand' => $nama_brand,
            'created_at' => $created_at
        );

        //push the extract data
        array_push($brand_arr, $brand_item);
    }

    echo json_encode($brand_arr);
} else {
    //if data is empty 
    echo json_encode(
        array('message' => 'There is no data')
    );
}
