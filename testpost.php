<?php

$servername = "localhost";
$username = "slowbs";
$password = "sodsongig4";
$dbname = "jotform";

$submission_id = $_POST['submission_id'];
/* $formID = $_POST['formID'];
$ip = $_POST['ip'];
$input3 = $_POST['input3']; */
$str = '';
$field_name = '';
$field_value = '';
$alter_field = '';

//ใส่ชื่อ Table ตรงนี้
$table_name ="form2";

foreach ($_POST as $key => $value){
    //echo "{$key} = {$value}\r\n";
    $str .= "`" .$key . '` = \'' . $value . '\', ';
    $field_name .= "`" .$key. "`, " ;
    $field_value .= "'" .$value. "', " ;
    $alter_field .= "`" .$key. "` VARCHAR (255), ";
}
    //echo substr($str, 0, -1);"
    //$string = "UPDATE " . $table_name . " SET " .substr($str, 0, -2). " where submission_id = '". $submission_id ."'";
    //$string = "INSERT INTO " . $table_name . " (SET) " .substr($str, 0, -2). " where submission_id = '". $submission_id ."'";
    //echo $string . "\n";
    //echo "(". substr($field_name, 0, -2) . ") VALUES (" . substr($field_name, 0, -2) . ")" ;
    //$sql = "INSERT INTO " .$table_name ." (". substr($field_name, 0, -2) . ") VALUES (" . substr($field_value, 0, -2) . ")" ;
    //echo $sql;
    //echo $str;

try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname;charset=utf8", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $sql = "SHOW TABLES LIKE '$table_name';";
    // use exec() because no results are returned
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    
    //ตรวจสอบเงื่อนไขว่า มี Table รองรับหรือไม่ ถ้าไม่ ระบบจะ create table ขึ้นมาก่อน
    if ($stmt->rowCount() < 1){
        /* echo "CREATE TABLE " .$table_name. 
        " (id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY, ".
        substr($alter_field, 0, -2) .")"; */

        $cretable = "CREATE TABLE " .$table_name. 
        " (id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY, ".
        substr($alter_field, 0, -2) .")";
        //echo $cretable;
        $sql = $cretable;
    // use exec() because no results are returned
        $stmt = $conn->prepare($sql);
        $stmt->execute();
    }
    $sql = "SELECT * FROM $table_name WHERE `submission_id` = '$submission_id'";
    // use exec() because no results are returned
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    //echo $stmt->rowCount() . " records UPDATED successfully";
    //ตรวจสอบว่าเคยมีการ submit จาก submission_id นี้หรือไม่ ถ้ามี จะทำการอัพเดท record เดิม
    if ($stmt->rowCount() > 0) {
        //echo "1";
        $string = "UPDATE " . $table_name . " SET " .substr($str, 0, -2). " where submission_id = '". $submission_id ."'";
        /* $sql = "UPDATE `table_name` SET name = '$input3', formID = '$formID', 
        ip = '$ip' where submission_id = '$submission_id'"
         or die(mysql_error()); */
         $sql = $string
         or die(mysql_error());
         $stmt = $conn->prepare($sql);
        $stmt->execute();
        echo $stmt->rowCount() . " records UPDATED successfully";
        //echo $string;
    
    //ถ้าไม่มี จะทำการ Insert record ใหม่
    } else {
        //echo "2";
        $string = "INSERT INTO " .$table_name ." (". substr($field_name, 0, -2) . ") VALUES (" . substr($field_value, 0, -2) . ")" ;
        $sql = $string
        //$sql = "INSERT into `table_name` (submission_id, formID, ip, name/* , email, phonenumber13, subject7, message6 */) VALUES
        //('$submission_id','$formID','$ip')"
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