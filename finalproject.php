<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"> 
<head>
<style>
<! styling for tables, forms, buttons, and columns>
table {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

table td, table th {
  border: 1px solid #ddd;
  padding: 8px;
}

table tr:nth-child(even){background-color: #f2f2f2;}

table tr:hover {background-color: #ddd;}

table th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #04AA6D;
  color: white;
}

form {
  background-color: #e5f5f8;
  border-radius: 10px;
  font-family: Avenir;
  padding: 20px;
  width: 500px;
}

#form-prompt {
  font-size: 24px;
  margin-top: 0;
  margin-bottom: 0px;
}

button { margin-top: 10px; }

button:hover, input:hover, label:hover { cursor: pointer; }

* {
  box-sizing: border-box;
}

.column {
  float: left;
  width: 50%;
  padding: 5px;
}

/* Clearfix (clear floats) */
.row::after {
  content: "";
  clear: both;
  display: table;
}

</style>
</head>

<body>

<header class="w3-container">
	<h1>What bacteria are in your microbiome?</h1>
</header>

<!start of radio buttons so users can enter metadata>

<div class="row">

<div class="column">
<form method="post" style="width:100%"action "<?php echo $_SERVER['PHP_SELF'];?>">

<div>
 <p>Select your age:</p>

  <input type="radio" id="baby" name="age_cat" value="baby">
  <label for="baby">baby</label><br>
  <input type="radio" id="child" name="age_cat" value="child">
  <label for="child">child</label><br>
  <input type="radio" id="teen" name="age_cat" value="teen">
  <label for="teen">teen</label><br>
  <input type="radio" id="20s" name="age_cat" value="20s">
  <label for="20s">20s</label><br>
  <input type="radio" id="30s" name="age_cat" value="30s">
  <label for="30s">30s</label><br>
  <input type="radio" id="40s" name="age_cat" value="40s">
  <label for="40s">40s</label><br>
  <input type="radio" id="50s" name="age_cat" value="50s">
  <label for="50s">50s</label><br>
  <input type="radio" id="60s" name="age_cat" value="60s">
  <label for="60s">60s</label><br>
  <input type="radio" id="70+" name="age_cat" value="70+">
  <label for="70+">70+</label><br>
</div>

<div>
 <p>Select your sex:</p>

  <input type="radio" id="female" name="sex" value="female">
  <label for="female">female</label><br>
  <input type="radio" id="male" name="sex" value="male">
  <label for="male">male</label><br>
  <input type="radio" id="other" name="sex" value="other">
  <label for="other">other</label><br>
</div>

<div>

  <p>When was your last dose of antibiotics?</p>

  <input type="radio" id="I have not taken antibiotics in the past year." name="antibiotic_history" value="I have not taken antibiotics in the past year.">
  <label for="I have not taken antibiotics in the past year.">I have not taken antibiotics in the past year.</label><br>
  <input type="radio" id="Year" name="antibiotic_history" value="Year">
  <label for="Year">Year</label><br>
  <input type="radio" id="6 months" name="antibiotic_history" value="6 months">
  <label for="6 months">6 months</label><br>
  <input type="radio" id="Month" name="antibiotic_history" value="Month">
  <label for="Month">Month</label><br>
  <input type="radio" id="Week" name="antibiotic_history" value="Week">
  <label for="Week">Week</label><br>

</div>


<div>

  <p>Have you ever been diagnosed with diabetes?</p>

  <input type="radio" id="I do not have this condition" name="diabetes" value="I do not have this condition">
  <label for="I do not have this condition">I do not have this condition</label><br>
  <input type="radio" id="Self-diagnosed" name="diabetes" value="Self-diagnosed">
  <label for="Self-diagnosed">Self-diagnosed</label><br>
  <input type="radio" id="Diagnosed by a medical professional (doctor, physician assistant)" name="diabetes" value="Diagnosed by a medical professional (doctor, physician assistant)">
  <label for="Diagnosed by a medical professional (doctor, physician assistant)">Diagnosed by a medical professional (doctor, physician assistant)</label><br>
  <input type="radio" id="Diagnosed by an alternative medicine practitioner" name="diabetes" value="Diagnosed by an alternative medicine practitioner">
  <label for="Diagnosed by an alternative medicine practitioner">Diagnosed by an alternative medicine practitioner</label><br>

</div>

<div>

  <p>Have you ever been diagnosed with inflammatory bowel disease(IBD)?</p>

  <input type="radio" id="I do not have this condition" name="ibd" value="I do not have this condition">
  <label for="I do not have this condition">I do not have this condition</label><br>
  <input type="radio" id="Self-diagnosed" name="ibd" value="Self-diagnosed">
  <label for="Self-diagnosed">Self-diagnosed</label><br>
  <input type="radio" id="Diagnosed by a medical professional (doctor, physician assistant)" name="ibd" value="Diagnosed by a medical professional (doctor, physician assistant)">
  <label for="Diagnosed by a medical professional (doctor, physician assistant)">Diagnosed by a medical professional (doctor, physician assistant)</label><br>
  <input type="radio" id="Diagnosed by an alternative medicine practitioner" name="ibd" value="Diagnosed by an alternative medicine practitioner">
  <label for="Diagnosed by an alternative medicine practitioner">Diagnosed by an alternative medicine practitioner</label><br>

</div>

<div>
 <p>How long do you sleep on an average night?</p>

  <input type="radio" id="Less than 5 hours" name="sleep_duration" value="Less than 5 hours">
  <label for="Less than 5 hours">Less than 5 hours</label><br>
  <input type="radio" id="5-6 hours" name="sleep_duration" value="5-6 hours">
  <label for="5-6 hours">5-6 hours</label><br>
  <input type="radio" id="6-7 hours" name="sleep_duration" value="6-7 hours">
  <label for="6-7 hours">6-7 hours</label><br>
  <input type="radio" id="7-8 hours" name="sleep_duration" value="7-8 hours">
  <label for="7-8 hours">7-8 hours</label><br>
  <input type="radio" id="8 or more hours" name="sleep_duration" value="8 or more hours">
  <label for="8 or more hours">8 or more hours</label><br>
</div>  

<div>
    <button type="submit" name="submit">Submit</button>
  </div>

</form>
</div>

<! insertion of flowchart explaining project process>
<div class="column">
<img src="./images/flowchart.png" alt="methods_flowchart" style="width:100%">
</div>

<!insertion of piechart showing phylum proportions>
<div id="piechart" class=column></div>


<!return variables entered by user or try again if empty>
<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $age_cat = $_POST['age_cat'];
    $antibiotic_history = $_POST['antibiotic_history'];
    $diabetes = $_POST['diabetes'];
    $ibd = $_POST['ibd']; 
    $sleep_duration = $_POST['sleep_duration'];
    $sex = $_POST['sex']; 
    echo "<br>";
    if (empty($age_cat)) {
	echo "No age category was entered, try again."; 
    } else {
	echo "Age category entered: $age_cat.";
	echo "<br>"; 
    }
    if (empty($antibiotic_history)) {
	echo "No antibiotic history was entered, try again."; 
    } else {
	echo "Antibiotic history entered: $antibiotic_history.";
	echo "<br>"; 
    }
    if (empty($diabetes)) {
	echo "No diabetes diagnosis was entered, try again."; 
    } else {
	echo "Diabetes diagnosis entered: $diabetes.";
	echo "<br>"; 
    }
    if (empty($ibd)) {
	echo "No inflammatory bowel disease diagnosis was entered, try again."; 
    } else {
	echo "Inflammatory bowel disease diagnosis entered: $ibd.";
	echo "<br>"; 
    }
    if (empty($sleep_duration)) {
	echo "No sleep duration was entered, try again."; 
    } else {
	echo "Sleep duration entered: $sleep_duration.";
	echo "<br>"; 
    }
    if (empty($sex)) {
	echo "No sex was entered, try again."; 
    } else {
	echo "Sex entered: $sex.";
	echo "<br>"; 
    }
}

# username, password, and database for sql cnnection 
$server="localhost";
$username="aankrum";
$password="";
$database="aankrum";

# connecting to sql database 
$connect = mysqli_connect($server,$username,"",$database);

# query to return taxonomic classifications for specified metadata variables 
$query = "SELECT DISTINCT kingdom,phylum,class,orders,family,genus,species FROM organisms,sample,experiment WHERE organisms.run_id = experiment.run_id AND experiment.sample_id = sample.sample_id AND age_cat = \"". $age_cat . "\" AND antibiotic_history = \"". $antibiotic_history . "\" AND diabetes = \"". $diabetes . "\" AND sleep_duration = \"". $sleep_duration . "\" AND sex = \"". $sex . "\" AND ibd = \"". $ibd . "\"";
$result = mysqli_query($connect, $query)
	  or trigger_error("Query Failed! SQL: $query - Error: "
	  . mysqli_error($connect), E_USER_ERROR);

# data setup for tables
echo "<table style=\"width:100%\" border='1'>
<tr>
<th style=\"width:10%\">kingdom</th>
<th style=\"width:15%\">phylum</th>
<th style=\"width:15%\">class</th>
<th style=\"width:15%\">orders</th>
<th style=\"width:15%\">family</th>
<th style=\"width:20%\">genus</th>
<th style=\"width:10%\">species</th>
</tr>";


# adding in the taxa if found based on user input 
if ($result = mysqli_query($connect, $query)) {
    while ($row = mysqli_fetch_row($result)) {
	 echo "<table>"; 
	 echo "<tr>"; 
	 echo "<td style=\"width:10%\">" . $row[0] . "</td>";
	 echo "<td style=\"width:15%\">" . $row[1] . "</td>"; 
	 echo "<td style=\"width:15%\">" . $row[2] . "</td>"; 
	 echo "<td style=\"width:15%\">" . $row[3] . "</td>"; 
	 echo "<td style=\"width:15%\">" . $row[4] . "</td>";
	 echo "<td style=\"width:20%\">" . $row[5] . "</td>"; 
	 echo "<td style=\"width:10%\">" . $row[6] . "</td>"; 
	 echo "</tr>";
	 echo "</table>";
    }
}else{
	echo "No results";
}


# queries for counting the amount of all phylas in the database 
$query2 = "SELECT phylum, COUNT(phylum) AS countof FROM organisms WHERE phylum=\"Firmicutes\"";
$result2 = mysqli_query($connect, $query2)
	  or trigger_error("Query Failed! SQL: $query2 - Error: "
	  . mysqli_error($connect), E_USER_ERROR);


$query3 = "SELECT phylum, COUNT(phylum) AS countof FROM organisms WHERE phylum=\"Bacteroidetes\"";
$result3 = mysqli_query($connect, $query3)
	  or trigger_error("Query Failed! SQL: $query3 - Error: "
	  . mysqli_error($connect), E_USER_ERROR);


$query4 = "SELECT phylum, COUNT(phylum) AS countof FROM organisms WHERE phylum=\"\"";
$result4 = mysqli_query($connect, $query4)
	  or trigger_error("Query Failed! SQL: $query4 - Error: "
	  . mysqli_error($connect), E_USER_ERROR);


$query5 = "SELECT phylum, COUNT(phylum) AS countof FROM organisms WHERE phylum=\"Proteobacteria\"";
$result5 = mysqli_query($connect, $query5)
	  or trigger_error("Query Failed! SQL: $query5 - Error: "
	  . mysqli_error($connect), E_USER_ERROR);

$query6 = "SELECT phylum, COUNT(phylum) AS countof FROM organisms WHERE phylum=\"Actinobacteria\"";
$result6 = mysqli_query($connect, $query6)
	  or trigger_error("Query Failed! SQL: $query6 - Error: "
	  . mysqli_error($connect), E_USER_ERROR);

$query7 = "SELECT phylum, COUNT(phylum) AS countof FROM organisms WHERE phylum=\"Tenericutes\"";
$result7 = mysqli_query($connect, $query7)
	  or trigger_error("Query Failed! SQL: $query7 - Error: "
	  . mysqli_error($connect), E_USER_ERROR);

$query8 = "SELECT phylum, COUNT(phylum) AS countof FROM organisms WHERE phylum=\"Verrucomicrobia\"";
$result8 = mysqli_query($connect, $query8)
	  or trigger_error("Query Failed! SQL: $query8 - Error: "
	  . mysqli_error($connect), E_USER_ERROR);

$query9 = "SELECT phylum, COUNT(phylum) AS countof FROM organisms WHERE phylum=\"Cyanobacteria\"";
$result9 = mysqli_query($connect, $query9)
	  or trigger_error("Query Failed! SQL: $query9 - Error: "
	  . mysqli_error($connect), E_USER_ERROR);

$query10 = "SELECT phylum, COUNT(phylum) AS countof FROM organisms WHERE phylum=\"Lentisphaerae\"";
$result10 = mysqli_query($connect, $query10)
	  or trigger_error("Query Failed! SQL: $query10 - Error: "
	  . mysqli_error($connect), E_USER_ERROR);

$query11 = "SELECT phylum, COUNT(phylum) AS countof FROM organisms WHERE phylum=\"Euryarchaeota\"";
$result11 = mysqli_query($connect, $query11)
	  or trigger_error("Query Failed! SQL: $query11 - Error: "
	  . mysqli_error($connect), E_USER_ERROR);

$query12 = "SELECT phylum, COUNT(phylum) AS countof FROM organisms WHERE phylum=\"Synergistetes\"";
$result12 = mysqli_query($connect, $query12)
	  or trigger_error("Query Failed! SQL: $query12 - Error: "
	  . mysqli_error($connect), E_USER_ERROR);

$query13 = "SELECT phylum, COUNT(phylum) AS countof FROM organisms WHERE phylum=\"Fusobacteria\"";
$result13 = mysqli_query($connect, $query13)
	  or trigger_error("Query Failed! SQL: $query13 - Error: "
	  . mysqli_error($connect), E_USER_ERROR);

# saving row variables for each query to use in pie chart 
if ($result13 = mysqli_query($connect, $query13)) {
    while ($row = mysqli_fetch_row($result13)) {
	 $row13 = $row; } 
}else{
	echo "No results";
}

if ($result12 = mysqli_query($connect, $query12)) {
    while ($row = mysqli_fetch_row($result12)) {
	 $row12 = $row; } 
}else{
	echo "No results";
}

if ($result11 = mysqli_query($connect, $query11)) {
    while ($row = mysqli_fetch_row($result11)) {
	 $row11 = $row; } 
}else{
	echo "No results";
}

if ($result10 = mysqli_query($connect, $query10)) {
    while ($row = mysqli_fetch_row($result10)) {
	 $row10 = $row; } 
}else{
	echo "No results";
}

if ($result9 = mysqli_query($connect, $query9)) {
    while ($row = mysqli_fetch_row($result9)) {
	 $row9 = $row; } 
}else{
	echo "No results";
}

if ($result8 = mysqli_query($connect, $query8)) {
    while ($row = mysqli_fetch_row($result8)) {
	 $row8 = $row; } 
}else{
	echo "No results";
}

if ($result7 = mysqli_query($connect, $query7)) {
    while ($row = mysqli_fetch_row($result7)) {
	 $row7 = $row; } 
}else{
	echo "No results";
}

if ($result6 = mysqli_query($connect, $query6)) {
    while ($row = mysqli_fetch_row($result6)) {
	 $row6 = $row; } 
}else{
	echo "No results";
}

if ($result5 = mysqli_query($connect, $query5)) {
    while ($row = mysqli_fetch_row($result5)) {
	 $row5 = $row; } 
}else{
	echo "No results";
}

if ($result4 = mysqli_query($connect, $query4)) {
    while ($row = mysqli_fetch_row($result4)) {
	 $row4 = $row; } 
}else{
	echo "No results";
}

if ($result3 = mysqli_query($connect, $query3)) {
    while ($row = mysqli_fetch_row($result3)) {
	 $row3 = $row; } 
}else{
	echo "No results";
}

# construction of pie chart
if ($result2 = mysqli_query($connect, $query2)) {
    while ($row2 = mysqli_fetch_row($result2)) {
	echo "
	
	
	<script type=\"text/javascript\" src=\"https://www.gstatic.com/charts/loader.js\"></script>

	<script type=\"text/javascript\">
	google.charts.load('current', {'packages':['corechart']});
	google.charts.setOnLoadCallback(drawChart);

	function drawChart() {
  	var data = google.visualization.arrayToDataTable([
  	['Task', 'Hours per Day'],
	['Firmicutes', $row2[1]],
	['Unknown', $row4[1]],
	['Proteobacteria', $row5[1]],
	['Actinobacteria', $row6[1]],
	['Tenericutes', $row7[1]],
	['Verrucomicrobia', $row8[1]],
	['Cyanobacteria', $row9[1]],
	['Lentisphaerae', $row10[1]],
	['Euryarchaeota', $row11[1]],
	['Synergistetes', $row12[1]],
	['Fusobacteria', $row13[1]],
  	['Bacteroidetes', $row3[1]]
	]);

  	var options = {'title':'', 'width':550, 'height':400};

  	var chart = new google.visualization.PieChart(document.getElementById('piechart'));
  	chart.draw(data, options);
	}
	</script>";
	}
}else{
	echo "no results"; 
}
# close connection
mysqli_close($connect);
?>


</body>
</html>


