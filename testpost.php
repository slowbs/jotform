<?php

$servername = "localhost";
$username = "slowbs";
$password = "jotform";
$dbname = "jotform";

$submission_id = $_POST['submission_id'];
$formID = $_POST['formID'];
$ip = $_POST['ip'];
$input3 = $_POST['input3'];

try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname;charset=utf8", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $sql = "SELECT * FROM `table_name` WHERE `submission_id` = '$submission_id'";
    // use exec() because no results are returned
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    //echo $stmt->rowCount() . " records UPDATED successfully";

    if ($stmt->rowCount() > 0) {
        //echo "1";
        $sql = "UPDATE `table_name` SET name = '$input3', formID = '$formID', 
        ip = '$ip' where submission_id = '$submission_id'"
         or die(mysql_error());
         $stmt = $conn->prepare($sql);
        $stmt->execute();
        echo $stmt->rowCount() . " records UPDATED successfully";
        
    } else {
        //echo "2";
        $sql = "INSERT into `table_name` (submission_id, formID, ip, name/* , email, phonenumber13, subject7, message6 */) VALUES
        ('$submission_id','$formID','$ip','$input3')"
         or die(mysql_error());
         $stmt = $conn->prepare($sql);
        $stmt->execute();
        echo "Inserted successfully";
    }
}

catch(PDOException $e)
    {
    echo $sql . "<br>" . $e->getMessage();
    }

$conn = null;



//echo $input3
?>