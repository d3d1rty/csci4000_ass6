<?php
  // Richard Davis
  // CSCI4000
  // 05 May 2016
  // Assignment 6

  // connects db
  require_once('richard_davis_database.php');

  // gets minimum GPA
  $student_id = filter_input(INPUT_GET, 's_id');

  // sets query to show all records in table
  $query = "SELECT studentID, name, email, GPA
            FROM student
            WHERE studentID = :student_id";

  // prepares query for execution creating PDO
  $statement = $db->prepare($query);

  // binds value for minimum GPA to query
  $statement->bindValue(':student_id', $student_id);

  // executes prepared statement
  $statement->execute();

  // returns an array for all the records in the query
  $s = $statement->fetch();

  // frees connection so other sql statements can be executed
  $statement->closeCursor();

  echo $s['studentID']."|".$s['name']."|".$s['email']."|".$s['GPA'];
?>
