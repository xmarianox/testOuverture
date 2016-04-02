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

function getLatest() {
	global $host, $port, $user, $password, $db;

	// connection
	$mysqli = new mysqli("$host:$port", $user, $password, $db);

	// Check connection
	if ($mysqli->connect_error):
		die("Connection failed: " . $mysqli->connect_error);
	endif;

	// set array
	$products = array();

	if ($result = $mysqli->query("SELECT * FROM products")):
		while($row = $result->fetch_array(MYSQLI_ASSOC)):
			$prod = array(
				'id' => $row['id'],
				'name' => utf8_encode($row['name']),
				'description' => utf8_encode($row['description'])
			);
			array_push($products, $prod);
		endwhile;

		// var_dump($products);
		$json = json_encode($products, JSON_FORCE_OBJECT);
		switch (json_last_error()):
			case JSON_ERROR_NONE:
				return $json;
				break;
			case JSON_ERROR_DEPTH:
				return 'Maximum stack depth exceeded'; // or trigger_error() or throw new Exception()
				break;
			case JSON_ERROR_STATE_MISMATCH:
				return 'Underflow or the modes mismatch'; // or trigger_error() or throw new Exception()
				break;
			case JSON_ERROR_CTRL_CHAR:
				return 'Unexpected control character found';
				break;
			case JSON_ERROR_SYNTAX:
				return 'Syntax error, malformed JSON'; // or trigger_error() or throw new Exception()
				break;
			case JSON_ERROR_UTF8:
				$clean = utf8_encode($products);
				return safe_json_encode($clean);
				break;
			default:
				return 'Unknown error'; // or trigger_error() or throw new Exception()
				break;
		endswitch;
	endif;

	$result->close();
	$mysqli->close();
}

if (empty($_GET['products'])):
	echo json_encode(die('wrong parameters'));
endif;

if ($_GET['products'] == 'getlatest'):
	echo getLatest();
endif;

?>