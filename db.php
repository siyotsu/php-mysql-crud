<?php
session_start();

$host = getenv('MYSQL_HOST');
$root_user = getenv('MYSQL_ROOT_USER');
$root_password = getenv('MYSQL_ROOT_PASSWORD');
$db   = getenv('MYSQL_DATABASE');

$conn = mysqli_connect($host, $root_user, $root_password, $db);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

mysqli_set_charset($conn, "utf8");

?>
