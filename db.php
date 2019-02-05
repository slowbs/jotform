<?php
// This function will run within each post array including multi-dimensional arrays 
function ExtendedAddslash(&$params)
{ 
        foreach ($params as &$var) {
            // check if $var is an array. If yes, it will start another ExtendedAddslash() function to loop to each key inside.
            is_array($var) ? ExtendedAddslash($var) : $var=addslashes($var);
            unset($var);
        }
} 

// Initialize ExtendedAddslash() function for every $_POST variable
ExtendedAddslash($_POST);      

$submission_id = $_POST['submission_id']; 
$formID =$_POST['formID'];
$ip =$_POST['ip'];
$name =$_POST['name'];
$email =$_POST['email'];
$phonenumber =$_POST['phonenumber13'][0] ."-". $_POST['phonenumber13'][1];
$subject =$_POST['subject7'];
$message =$_POST['message6'];

$db_host = 'localhost';
$db_username = 'slowbs';
$db_password = 'sodsongig4';
$db_name = 'jotform';

mysql_connect( $db_host, $db_username, $db_password) or die(mysql_error());
mysql_select_db($db_name); 

// search submission ID

$query = "SELECT * FROM `table_name` WHERE `submission_id` = '$submission_id'";
$sqlsearch = mysql_query($query);
$resultcount = mysql_numrows($sqlsearch);

if ($resultcount > 0) {
 
    mysql_query("UPDATE `table_name` SET 
                                `name` = '$name',
                                `email` = '$email',
                                `phone` = '$phonenumber',
                                `subject` = '$subject',
                                `message` = '$message'        
                             WHERE `submission_id` = '$submission_id'") 
     or die(mysql_error());
    
} else {

    mysql_query("INSERT INTO `table_name` (submission_id, formID, IP, 
                                                                          name, email, phone, subject, message) 
                               VALUES ('$submission_id', '$formID', '$ip', 
                                                 '$name', '$email', '$phonenumber', '$subject', '$message') ") 
    or die(mysql_error());  

}
?>