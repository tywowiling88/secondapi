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
    public $updated_at;

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

    public function Create()
    {
        $query = 'INSERT INTO ' . $this->table . ' 
        SET 
            id_brand = :id_brand, 
            nama_brand = :nama_brand,
            created_at = :created_at';

        //Preapare Query
        $stmt = $this->conn->prepare($query);

        //Validation Input 
        $this->id_brand = htmlspecialchars(strip_tags($this->id_brand));
        $this->nama_brand = htmlspecialchars(strip_tags($this->nama_brand));
        $this->created_at = htmlspecialchars(strip_tags($this->created_at));

        //Bind Param
        $stmt->bindParam(':id_brand', $this->id_brand);
        $stmt->bindParam(':nama_brand', $this->nama_brand);
        $stmt->bindParam(':created_at', $this->created_at);

        // Execute The Query 
        if ($stmt->execute()) {
            return true;
        }

        echo json_encode(
            array('message' => 'Something Went Wrong')
        );

        return false;
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

    // Update Data
    public function Update()
    {
        $query = 'UPDATE ' . $this->table . '
        SET 
            nama_brand = :nama_brand, 
            created_at = :created_at
        WHERE 
            id_brand = :id_brand
        ';

        //Prepare Query
        $stmt = $this->conn->prepare($query);

        //Validation input 
        $this->id_brand = htmlspecialchars(strip_tags($this->id_brand));
        $this->nama_brand = htmlspecialchars(strip_tags($this->nama_brand));
        $this->created_at = htmlspecialchars(strip_tags($this->created_at));

        //Bind Param 
        $stmt->bindParam(':id_brand', $this->id_brand);
        $stmt->bindParam(':nama_brand', $this->nama_brand);
        $stmt->bindParam(':created_at', $this->created_at);

        if ($stmt->execute()) {
            return true;
        }

        echo json_encode(
            array('message' => 'Something Went Wrong')
        );

        return false;
    }
}
