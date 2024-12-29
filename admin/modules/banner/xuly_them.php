<?php
session_start();
include('../config/config.php'); // Kết nối tới cơ sở dữ liệu

if (isset($_FILES['image'])) {
    $image = $_FILES['image'];

    // Kiểm tra xem hình ảnh có được tải lên không
    if ($image['error'] == 0) {
        $target_dir = "uploads/"; // Thư mục lưu trữ hình ảnh
        $target_file = $target_dir . basename($image["name"]);

        // Kiểm tra định dạng tệp
        $imageFileType = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));
        $allowed_types = ['jpg', 'png', 'jpeg', 'gif'];

        if (in_array($imageFileType, $allowed_types)) {
            // Di chuyển tệp tải lên vào thư mục đích
            if (move_uploaded_file($image["tmp_name"], $target_file)) {
                // Truy vấn thêm vào cơ sở dữ liệu
                $sql_insert = "INSERT INTO banner (image) VALUES ('$target_file')";

                if (mysqli_query($mysqli, $sql_insert)) {
                    $_SESSION['message'] = "Thêm banner thành công.";
                } else {
                    $_SESSION['message'] = "Lỗi khi thêm banner: " . mysqli_error($mysqli);
                }
            } else {
                $_SESSION['message'] = "Có lỗi xảy ra khi tải lên hình ảnh.";
            }
        } else {
            $_SESSION['message'] = "Định dạng tệp không hợp lệ. Vui lòng chọn tệp jpg, png, jpeg, hoặc gif.";
        }
    } else {
        $_SESSION['message'] = "Không có hình ảnh nào được tải lên.";
    }
} else {
    $_SESSION['message'] = "Không có dữ liệu nào để thêm.";
}

// Chuyển hướng về trang danh sách banner
header('Location: ../../index.php?action=banner&query=banner_list');
?>
