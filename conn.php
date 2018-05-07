<?php

$conn = mysqli_connect("localhost","id5654220_sweetme","inventory");
if (!$conn) {
	die("Connection failed: " . mysqli_error());
}
mysql_select_db ($con, "id5654220_pos");

?>