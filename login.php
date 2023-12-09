<?php
session_start();

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);


$host = 'localhost';
$dbUser = 'root'; // Change this to your MySQL username
$dbPass = ''; // Change this to your MySQL password
$dbName = 'login_user';
$newPort = 3306;

$conn = new mysqli($host, $dbUser, $dbPass, $dbName, $newPort);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$username = isset($_POST['username']) ? $_POST['username'] : '';
$password = isset($_POST['password']) ? $_POST['password'] : '';



// Sanitize user input (optional, but recommended)
$username = mysqli_real_escape_string($conn, $username);

$stmt = $conn->prepare("SELECT id, password FROM user_table WHERE username = ?");
$stmt->bind_param("s", $username);
$stmt->execute();
$stmt->store_result();

if ($stmt->num_rows > 0) {
    $stmt->bind_result($id, $hashedPasswordFromDatabase);
    $stmt->fetch();

    // Output fetched values for debugging
    echo "Fetched Username: " . $username . "<br>";
    echo "Fetched Hashed Password: " . $hashedPasswordFromDatabase . "<br>";
    echo "Submitted Username: " . $username . "<br>";
    echo "Submitted Password: " . $password . "<br>";
    
    if (password_verify($password, $hashedPasswordFromDatabase)) {
        echo "Password verified: The entered password matches the stored hashed password!";
    } else {
        echo "Password does not match the stored hashed password!";
    }

    if(password_verify($password, $hashedPasswordFromDatabase)){
        $_SESSION['loggedin'] = true;
        $_SESSION['id'] = $id;
        $_SESSION['username'] = $username;
        
        header('Location: blogpage.php');
        exit();
    } else {
        echo "Passwords do not match. hehe";
    }
} else {
    echo "No user found. tehee";
}

$stmt->close();
$conn->close();
?>
