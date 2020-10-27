<?php

header("Content-Type: application/json");

$servername = "localhost";
$username = "root";
$password = "";

try {
  $conn = new PDO("mysql:host=$servername;dbname=voting", $username, $password);
  // set the PDO error mode to exception
  $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch(PDOException $e) {
  echo "Connection failed: " . $e->getMessage();
}

if (isset($_POST['vote'])) {
    $vote = $_POST['vote'];
    $ip = $_SERVER['REMOTE_ADDR'];
    $conn->exec("INSERT INTO votes (vote, ip) VALUES (".$vote.", '".$ip."')");
}

$sql = "SELECT vote, count(*) as 'count' FROM votes GROUP BY vote";

$data = array();
foreach($conn->query($sql) as $row) {
    $data[$row['vote']] = $row['count'];
}

print (json_encode($data));

?>