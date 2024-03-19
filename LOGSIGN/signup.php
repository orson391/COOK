<?php
include('../DATABASE/db.php');
session_start();

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST['username']; 
    $email = $_POST['email']; 
    $password = $_POST['password']; // Get the password from the form
    
   
    // Check if the username is already taken
    $username_check_sql = "SELECT * FROM users WHERE username = ?";
    $username_check_stmt = $conn->prepare($username_check_sql);
    $username_check_stmt->bind_param("s", $username);
    $username_check_stmt->execute();

    $username_check_result = $username_check_stmt->get_result();

    if ($username_check_result->num_rows > 0) {
        echo "Username already exists!";
        exit; // Stop execution if the username is taken
    }

    // Use prepared statements to insert user data securely
    $hashed_password = password_hash($password, PASSWORD_DEFAULT);
    $insert_sql = "INSERT INTO users (username, email, password) VALUES (?, ?, ?)";
    $insert_stmt = $conn->prepare($insert_sql);
    $insert_stmt->bind_param("sss", $username, $email,$hashed_password);

    if ($insert_stmt->execute()) {
        header("Location: /COOK/MENU/index.php");
        exit;
    } else {
        echo "Error registering user!";
    }

    $insert_stmt->close(); // Close the insert statement
    $username_check_stmt->close(); // Close the username check statement
    $conn->close(); // Close the database connection
}
?>