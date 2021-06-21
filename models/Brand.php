<?php
class Brand
{
    // DB Stuff
    private $conn;
    private $table = 'brand';

    // Properties
    public $id_brand;
    public $nama_brand;
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
    public function ReadSingle()
    {
        $query = 'SELECT 
            id_brand,
            nama_brand,
            created_at
        FROM 
        ' . $this->table . '
        WHERE 
            id_brand = ?
        ORDER BY
            id_brand ASC
        ';

        // Prepare Query
        $stmt = $this->conn->prepare($query);

        // Bind Param
        $stmt->bindParam(1, $this->id_brand);     //1 refer to first '?'

        // Execute The query 
        $stmt->execute();

        return $stmt;
    }

    // Delete Data 
    public function Delete()
    {
        $query = 'DELETE FROM 
        ' . $this->table . '
        WHERE 
            id_brand = :id_brand
        ';

        //Prepare Query
        $stmt = $this->conn->prepare($query);

        //Validation input 
        $this->id_brand = htmlspecialchars(strip_tags($this->id_brand));

        //Bind Param
        $stmt->bindParam(':id_brand', $this->id_brand);

        //Execute Query 
        if ($stmt->execute()) {
            return true;
        }

        echo json_encode(
            array('message' => 'Something Went Wrong')
        );
        return false;
    }
}
