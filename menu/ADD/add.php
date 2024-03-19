<?php
include('../../DATABASE/db.php'); 
session_start();

// Check if the user is logged in
if (!isset($_SESSION['username'])) {
    // Redirect to the login page
    header("Location: /COOK/LOGSIGN/login.php");
    exit();
}

// Check if the form was submitted via POST method
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Retrieve form data
    $title = $_POST['title']; 
    $description = $_POST['description']; 
    $ingredients = $_POST['ingredients'];
    $instructions = $_POST['instructions'];
    $user_name = $_SESSION['username'];

    // Use prepared statements to insert recipe data securely
    $insert_sql = "INSERT INTO recipes (title, description, ingredients, instructions, user_name) VALUES (?, ?, ?, ?, ?)";
    $insert_stmt = $conn->prepare($insert_sql);
    
    // Bind parameters
    $insert_stmt->bind_param("sssss", $title, $description, $ingredients, $instructions, $user_name);

    // Execute the prepared statement
    if ($insert_stmt->execute()) {
        // Redirect to the menu page after successful insertion
        header("Location: /COOK/MENU/index.html");
        exit;
    } else {
        // Display an error message if insertion fails
        echo "Error adding recipe!";
    }

    // Close the prepared statement
    $insert_stmt->close();
}

// Close the database connection
$conn->close();
?>
