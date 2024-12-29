<?php
session_start(); // Khởi tạo session
$mysqli = new mysqli("localhost", "root", "", "petshop");

if ($mysqli->connect_error) {
    die("Kết nối thất bại: " . $mysqli->connect_error);
}

// Kiểm tra xem user đã đăng nhập chưa
if (!isset($_SESSION['account_id'])) {
    die("Bạn chưa đăng nhập!");
}

$account_id = $_SESSION['account_id']; // Lấy ID của người dùng hiện tại
// Truy vấn để lấy account_name từ bảng account
$sql_account = "SELECT account_name FROM account WHERE account_id = '$account_id'";
$result_account = $mysqli->query($sql_account);

if ($result_account && $row = $result_account->fetch_assoc()) {
    $name = $row['account_name']; // Gán account_name vào biến $name
} else {
    die("Không tìm thấy tài khoản!");
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Xử lý lưu tin nhắn
    $user_name = isset($_POST['user_name']) ? $mysqli->real_escape_string($_POST['user_name']) : null;
    $message = isset($_POST['message']) ? $mysqli->real_escape_string($_POST['message']) : null;

    if ($message) {
        // Lưu cả user_id vào bảng messages
        $sql = "INSERT INTO messages (user_id, user_name, message) VALUES ('$account_id', '$name', '$message')";
        $mysqli->query($sql);
    }
}elseif ($_SERVER['REQUEST_METHOD'] === 'GET') {
    // Chỉ lấy tin nhắn thuộc về customer hiện tại (dựa trên account_id)
    $sql = "SELECT * FROM messages WHERE user_id = '$account_id' ORDER BY id ASC"; 
    $result = $mysqli->query($sql);

    $messages = [];
    while ($row = $result->fetch_assoc()) {
        $messages[] = $row;
    }

    // Trả về danh sách tin nhắn dưới dạng JSON
    header('Content-Type: application/json');
    echo json_encode($messages);
}

$mysqli->close();
?>
