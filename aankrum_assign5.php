<!DOCTYPE html>
<html>
<body>

<! page heading>
<h2>Welcome to our COVID cases website!</h2>

<!field for user to enter in state and date and save to variables>
<form method="post" action="<?php echo $_SERVER['PHP_SELF'];?>">
  Enter the date you are looking for: <input type="text" name="date">
  Enter the state you are looking for:  <input type="text" name="state">
  <input type="submit">
</form>

<!return date and state the user entered, or ask user to try again if empty>
<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $date = $_POST['date'];
    $state = $_POST['state'];
    echo "<br>";
    if (empty($date)) {
	echo "No date was provided, please try again."; 
    } else {
	echo "Date provided was $date.";
	echo "<br>"; 
    }
    if (empty($state)) {
        echo "No state was provided, please try again.";
    } else {
	echo "State provided was  $state. ";
	echo "<br>"; 
    }
}

# variables for username, password, and database to use to connect to sql
$server="localhost";
$username="aankrum";
$password="";
$database="aankrum";

# connect to sql database 
$connect = mysqli_connect($server,$username,"",$database);

# run query using user provided date and state 
$query = "SELECT positive FROM all_states_history WHERE state = \"". $state . "\" AND date = \"". $date . "\"";
$result = mysqli_query($connect, $query)
	  or trigger_error("Query Failed! SQL: $query - Error: "
	  . mysqli_error($connect), E_USER_ERROR);

# return result if found
if ($result = mysqli_query($connect, $query)) {
    while ($row = mysqli_fetch_row($result)) {
	 printf("<br>The number of positive COVID cases in %s on %s was: %s", $state, $date, $row[0]);
    }
    mysqli_free_result($result);
}else{
	echo "No results";
}

# close connection
mysqli_close($connect);
?>

</body>
</html>
