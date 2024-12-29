<?php
// session_start();
$mysqli = new mysqli("localhost", "root", "", "petshop");

if ($mysqli->connect_error) {
    die("Kết nối thất bại: " . $mysqli->connect_error);
}

// Xử lý cập nhật phản hồi (reply)
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['reply_message'])) {
    $message_id = isset($_POST['message_id']) ? (int)$_POST['message_id'] : 0;
    $reply = isset($_POST['reply_message']) ? $mysqli->real_escape_string($_POST['reply_message']) : null;

    if ($message_id && $reply) {
        $sql = "UPDATE messages SET reply = '$reply' WHERE id = $message_id";
        $mysqli->query($sql);
    }
}

// Lấy danh sách tin nhắn
$sql = "SELECT * FROM messages ORDER BY created_at DESC";
$result = $mysqli->query($sql);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Danh sách tin nhắn</title>
    <style>
        table { width: 100%; border-collapse: collapse; margin-top: 20px; }
        th, td { padding: 10px; border: 1px solid #ccc; text-align: left; }
        th { background-color: #f4f4f4; }
        .reply-form { margin-top: 10px; }
        .reply-form textarea { width: 100%; height: 60px; margin-bottom: 10px; }
    </style>
</head>
<body>
    <h1>Danh sách tin nhắn</h1>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Tên người dùng</th>
                <th>Nội dung</th>
                <th>Phản hồi</th>
                <th>Thời gian</th>
                <th>Hành động</th>
            </tr>
        </thead>
        <tbody>
            <?php while ($row = $result->fetch_assoc()): ?>
            <tr>
                <td><?= $row['id'] ?></td>
                <td><?= htmlspecialchars($row['user_name']) ?></td>
                <td><?= htmlspecialchars($row['message']) ?></td>
                <td><?= $row['reply'] ? htmlspecialchars($row['reply']) : 'Chưa phản hồi' ?></td>
                <td><?= $row['created_at'] ?></td>
                <td>
                    <!-- Form phản hồi -->
                    <form method="post" class="reply-form">
                        <textarea name="reply_message" placeholder="Nhập phản hồi..."><?= htmlspecialchars($row['reply']) ?></textarea>
                        <input type="hidden" name="message_id" value="<?= $row['id'] ?>">
                        <button type="submit">Phản hồi</button>
                    </form>
                </td>
            </tr>
            <?php endwhile; ?>
        </tbody>
    </table>
</body>
</html>

<?php
$mysqli->close();
?>
