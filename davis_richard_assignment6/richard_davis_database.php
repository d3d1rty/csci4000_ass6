<?php
  // Richard Davis
  // CSCI4000
  // 06 May 2016
  // Assignment 6

  // db information
  $dsn = 'mysql:host=localhost;dbname=richard_davis_assignment_db';
  // db credentials for web app
  $username = 'richardweb';
  $password = 'richardchocolate';
  // attempts to connect to db using credentials
  // displays error message if fails
  try {
    $db = new PDO($dsn, $username, $password);
  } catch (PDOException $e) {
      $error_message = $e->getMessage();
      include('richard_davis_database_error.php');
      exit();
  }

?>

