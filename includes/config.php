<?php
// Thông tin kết nối cơ sở dữ liệu
$servername = "localhost";
$username = "root"; // Thay đổi tên người dùng của bạn
$password = ""; // Thay đổi mật khẩu của bạn
$dbname = "library"; // Thay đổi tên cơ sở dữ liệu của bạn

try {
    // Tạo kết nối PDO
    $dbh = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    // Thiết lập chế độ lỗi
    $dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    echo "Kết nối thất bại: " . $e->getMessage();
}
?>
