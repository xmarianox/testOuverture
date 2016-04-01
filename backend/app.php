<?php
/**
 * Created by Mariano Molina on 01/04/16.
 */
// set connection vars
$user 	  = 'root';
$password = 'root';
$db 	  = 'ouverture';
$host 	  = 'localhost';
$port 	  = 8889;

// connection
$mysqli = new mysqli("$host:$port", $user, $password, $db);

// Check connection
if ($mysqli->connect_error) {
	die("Connection failed: " . $mysqli->connect_error);
}
// set array
$json = array();

if (empty($_GET['products'])) {
	die(json_encode(die('connection error')));
}

if ($_GET['products'] == 'getlatest') {
	if ($result = $mysqli->query("SELECT * FROM products")) {
	    while($row = $result->fetch_array(MYSQLI_ASSOC)) {
	    	$prod = array(
	    		'id' => $row['id'],
	    		'name' => $row['name'],
	    		'description' => $row['description']
	    	);
	    	array_push($json, $prod);
	    }
	    var_dump($json);
	    //echo json_encode($json, JSON_FORCE_OBJECT);
	}
	$result->close();
	$mysqli->close();
}

?>