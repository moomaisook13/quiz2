<?php
    include('connectDB.php');

    $username = $_POST['username'];
    $password = $_POST['password'];

    $sql = "select * from users where username = '". $username."' and password = '". $password."'";
    //$sql = "select * from users where username = '{$username}' and password = '{$password}'";

    // echo $sql;

    // $sql = "select * from users where username = 'test' and password = '123'";

    $result = mysqli_query($con, $sql);
    $count = mysqli_num_rows($result);

    if($count == 1){
        echo json_encode('Completed');
    }else{
        echo json_encode('Error');
    }



?>