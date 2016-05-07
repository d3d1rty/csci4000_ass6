<?php
  // Richard Davis
  // CSCI4000
  // 05 May 2016
  // Assignment 6

  // connects db
  require_once('richard_davis_database.php');

  // gets minimum GPA
  $minGPA = filter_input(INPUT_GET, 'minGPA');

  // sets query to show all records in table
  $query = "SELECT studentID, name, email, GPA
            FROM student
            WHERE GPA > :minGPA";

  // prepares query for execution creating PDO
  $statement = $db->prepare($query);

  // binds value for minimum GPA to query
  $statement->bindValue(':minGPA', $minGPA);

  // executes prepared statement
  $statement->execute();

  // returns an array for all the records in the query
  $students = $statement->fetchAll();

  // frees connection so other sql statements can be executed
  $statement->closeCursor();
?>

  <h3>Student List (Students with GPA's higher than <?php echo $minGPA; ?>):</h3>
<table>
  <tr>
    <th>Student ID</th>
    <th>Name</th>
    <th>Email</th>
    <th>GPA</th>
  </tr>
<!-- iterates through student table, printing rows in tabular format -->
<?php foreach ($students as $s) { ?>
  <tr>
    <td class="s_id"><? echo $s['studentID']; ?></td>
    <td class="s_name"><? echo $s['name']; ?></td>
    <td class="s_email"><? echo $s['email']; ?></td>
    <td class="s_gpa"><? echo $s['GPA']; ?></td>
  </tr>
<?php } ?>
</table>
