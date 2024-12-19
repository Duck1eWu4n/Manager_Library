<?php
// DB credentials
define('DB_HOST', '127.0.0.1');
define('DB_USER', 'root');
define('DB_PASS', '');
define('DB_NAME', 'library');

try {
    $dbh = new PDO(
        "mysql:host=" . DB_HOST . ";dbname=" . DB_NAME,
        DB_USER,
        DB_PASS,
        array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES 'utf8'")
    );
    echo "Connected successfully to the database.";
} catch (PDOException $e) {
    exit("Error: " . $e->getMessage());
}
?>
