<?php
//ปิด error ของ php
error_reporting(0);

$servername = "localhost";
$username = "slowbs";
$password = "sodsongig4";
$dbname = "jotform";

$submission_id = $_POST['submission_id'];
$formID = $_POST['formID'];
$field_name = $field_name2 = $field_name3 = $field_value = $field_value2 = $field_value3 = $alter_field = $alter_field2 = $alter_field3 = '';
$str2 = $insert = $update = $str = '';

//ใส่ชื่อ Table ตรงนี้
$table_name = "`".$formID."`";


foreach ($_POST as $key => $value){
    //เงื่อนไขตรวจว่าตัวแปรที่ส่งมา เป็น array หรือไม่
    if(is_array($value)) {
        $maxLength = count($value);
        for($i=0; $i<$maxLength; $i++){
        $str2 .= "`" .$key . $i."` = '" .$value[$i]."', ";
        $alter_field2 .= "`" .$key. $i. "` VARCHAR (255), ";
        $field_name2 .= "`" .$key. $i. "`, " ;
        $field_value2 .= "'" .$value[$i]. "', " ;
        }
      }
    else{
    //เก็บค่าลงในตัวแปร array
    $str .= "`" .$key . '` = \'' . $value . '\', ';
    $field_name .= "`" .$key. "`, " ;
    $field_value .= "'" .$value. "', " ;
    $alter_field .= "`" .$key. "` VARCHAR (255), ";
    }
}
$alter_field3 = $alter_field . $alter_field2 ."date DATETIME NOT NULL";
//echo $field_name3;
//ลองแสดงค่าโดยตัด 2 ตัวสุดท้ายออก
//echo substr($alter_field3, 0, -2);
$update = $str . $str2 . "`date` = NOW()";
$field_name3 = $field_name . $field_name2 . "`date`";
$field_value3 = $field_value . $field_value2 ."NOW()";

try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname;charset=utf8", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    //ตรวจสอบว่ามี Table รองรับหรือไม่ โดยเช็คได้จาก Show Tables หรือ select จากตาราง form_list
    //$sql = "SHOW TABLES LIKE '$table_name';";
    $sql = "SELECT * FROM form_list where formID = '$formID'";
    // use exec() because no results are returned
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    
    //ตรวจสอบเงื่อนไขว่า มี Table รองรับหรือไม่ ถ้าไม่ ระบบจะ create table ขึ้นมาก่อน
    if ($stmt->rowCount() < 1){
        $cretable = "CREATE TABLE " .$table_name. 
        " (id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY, ".
        //substr($alter_field3, 0, -2) .");
        $alter_field3 .");
        INSERT INTO form_list (formID) VALUES ('$formID')";
        $sql = $cretable;
    // use exec() because no results are returned
        $stmt = $conn->prepare($sql);
        $stmt->execute();
    }
    $sql = "SELECT * FROM $table_name WHERE `submission_id` = '$submission_id'";
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    //ตรวจสอบว่าเคยมีการ submit จาก submission_id นี้หรือไม่ ถ้ามี จะทำการอัพเดท record เดิม
    if ($stmt->rowCount() > 0) {
        $string = "UPDATE " . $table_name . " SET " .$update. " where submission_id = '". $submission_id ."'";
         $sql = $string
         or die(mysql_error());
         $stmt = $conn->prepare($sql);
        $stmt->execute();
        echo $stmt->rowCount() . " records UPDATED successfully";
    
    //ถ้าไม่มี จะทำการ Insert record ใหม่
    } else 
    {
        $string = "INSERT INTO " .$table_name ." (". $field_name3 . ") VALUES (" . $field_value3 . ")" ;
        $sql = $string
        or die(mysql_error());
        $stmt = $conn->prepare($sql);
        $stmt->execute();
        echo "Inserted successfully";
    }
}
catch(PDOException $e)
    {
    //ปิด error ของ pdo    
    echo $sql . "<br>" . $e->getMessage();
    }

$conn = null;

?>