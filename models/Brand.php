<?php
class Brand
{
    // DB Stuff
    private $conn;
    private $table = 'brand';

    // Properties
    public $id;
    public $name;
    public $created_at;

    // Constructor with DB
    public function __construct($db)
    {
        $this->conn = $db;
    }

    //Read All Data 
    public function Read()
    {
        $query = 'SELECT 
            id_brand, 
            nama_brand,
            created_at
        FROM 
        ' . $this->table . '
        ORDER BY
            id_brand ASC
        ';

        //Prepare query 
        $stmt = $this->conn->prepare($query);

        //Execute The Query
        $stmt->execute();

        return $stmt;
    }

    // Read Single Data 
    public function 
}
