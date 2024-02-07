<?php
session_start();
include_once("dbcon.php");
$username = $_POST["username"];
$password = $_POST["password"];

$userSql = "SELECT * FROM `tbl_user` WHERE username = '{$username}' AND password = '{$password}'";

$result = $conn->query($userSql);

if (strpos($username,"@admin") !== false && $result->num_rows > 0)
{
    // activate token
    $_SESSION['token'] = true;

    //get userID
    $row = $result->fetch_assoc();
    $userID = $row["userID"];
    $_SESSION['userID'] =  $userID;

    header("location: ../admin-files/enrollmentSystem.php");
} 
else if (strpos($username,"@student") !== false && $result->num_rows > 0) 
{
    //add student login directory
    echo "this is student";
}
else
{
    $_SESSION['message'] = 'Incorrect Username or Password';
    header('location: ../index.php');
}
