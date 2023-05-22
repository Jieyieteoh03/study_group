<?php
    session_start();

    
    $database = new PDO(
    "mysql:host=devkinsta_db;dbname=study_group",
    "root",
    "LrJHyxBK8VE6Afq8");

    $name = $_POST["name"];
    $email = $_POST["email"];
    $message =$_POST["message"];

    if(empty($name) || empty($email) || empty($message)){
        $error = 'Please enter required field';
    }else if(strlen($message) < 10){
        $error = 'Must be 10 characters';
    }else{
        $success = 'Congrats';

        $sql = "INSERT INTO contact_form (`name`,`email`,`message`)
            VALUES (:name, :email, :message)";

        $query = $database->prepare($sql);

        $query->execute([
            'name' => $name,
            'email' => $email,
            'message' => $message
        ]);
    }
    
    if(isset($error)){
        $_SESSION['error']=$error;
        header("Location: index.php");
        exit;
    }

    if(isset($success)){
        $_SESSION['success']=$success;
        header("Location: index.php");
        exit;
    }
?>