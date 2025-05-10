<?php
include_once '../../../../config/database.php';

class Post
{
    public $conn;
    public $response;
    function __construct()
    {
        $db = new Database();
        $this->conn = $db->connect();
    }
    public function Register($username,$email,$password)
    {
         $insert = "INSERT INTO register(username,email,password)  VALUES (?,?, ?)";
         $stmt = mysqli_prepare($this->conn, $insert);
 
         if (!$stmt) {
             return ["message" => "Query preparation error: " . mysqli_error($this->conn)];
         }
 
         mysqli_stmt_bind_param($stmt, "sss", $username,$email,$password);
         $result = mysqli_stmt_execute($stmt);
 
         if ($result) {
             return ["message" => "User Register successfully"];
         } else {
             return ["message" => "Product insertion failed"];
         }
    }
   
   

    public function trainbook($name, $email, $phone, $train_name, $from, $to, $tickets, $date, $price, $payment, $status)
    {
        $insert = "INSERT INTO train_book(name, email, phone, train_name, `from`, `to`, tickets, `date`, price, payment, status) 
        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

        
        $stmt = mysqli_prepare($this->conn, $insert);
    
        if (!$stmt) {
            return ["message" => "Query preparation error: " . mysqli_error($this->conn)];
        }
    
        mysqli_stmt_bind_param($stmt, "sssssssssss", $name, $email, $phone, $train_name, $from, $to, $tickets, $date, $price, $payment, $status);
    
        $result = mysqli_stmt_execute($stmt);
    
        if ($result) {
            return ["message" => "Plan added successfully"];
        } else {
            return ["message" => "Plan addition failed: " . mysqli_error($this->conn)];
        }
    }
    
   
    


    public function train($train_name, $price, $from, $to, $date, $file)
{
    $advertisementQuery = "INSERT INTO train_details (train_name, price, `from`, `to`, date, file) VALUES (?, ?, ?, ?, ?, ?)";
    $stmtadvertisement = mysqli_prepare($this->conn, $advertisementQuery);

    if (!$stmtadvertisement) {
        return "Failed to prepare SQL statement: " . mysqli_error($this->conn);
    }

    mysqli_stmt_bind_param($stmtadvertisement, 'ssssss', $train_name, $price, $from, $to, $date, $file);
    $advertisementExec = mysqli_stmt_execute($stmtadvertisement);

    if (!$advertisementExec) {
        return "SQL Error: " . mysqli_stmt_error($stmtadvertisement);
    }

    return "Data added successfully";
}


    
























 





}
?> 
