<?php
include('../../config/config.php'); // Kết nối tới cơ sở dữ liệu

// Lấy dữ liệu từ request
$data = $_GET['data'];
$banner_ids = json_decode($data); // Giả sử bạn truyền dữ liệu banner dưới dạng JSON
$banner_id = $_GET['banner_id'];
$banner_image = $_FILES['banner_image']['name'];
$banner_image_tmp = $_FILES['banner_image']['tmp_name'];
$banner_image = time() . '_' . $banner_image; // Tạo tên tệp duy nhất cho hình ảnh

if (isset($_POST['banner_add'])) {
    // Thêm banner mới vào cơ sở dữ liệu
    $sql_add = "INSERT INTO banner(image) VALUES('" . $banner_image . "')";
    if (mysqli_query($mysqli, $sql_add)) {
        // Di chuyển hình ảnh vào thư mục uploads
        move_uploaded_file($banner_image_tmp, 'uploads/' . $banner_image);
        $_SESSION['message'] = "Thêm banner thành công.";
    } else {
        $_SESSION['message'] = "Lỗi khi thêm banner: " . mysqli_error($mysqli);
    }
    header('Location: ../../index.php?action=banner&query=banner_list');
} elseif (isset($_POST['banner_edit'])) {
    if ($_FILES['banner_image']['name'] != '') {
        // Xóa ảnh cũ nếu có hình ảnh mới
        $sql = "SELECT * FROM banner WHERE id = '$banner_id' LIMIT 1";
        $query = mysqli_query($mysqli, $sql);
        while ($row = mysqli_fetch_array($query)) {
            unlink('uploads/' . $row['image']); // Xóa ảnh cũ
        }
        // Di chuyển hình ảnh mới vào thư mục uploads
        move_uploaded_file($banner_image_tmp, 'uploads/' . $banner_image);
        $sql_update = "UPDATE banner SET image='" . $banner_image . "' WHERE id='$banner_id'";
    } else {
        // Nếu không có hình ảnh mới thì không cần cập nhật hình ảnh
        $sql_update = "UPDATE banner SET image=image WHERE id='$banner_id'";
    }

    if (mysqli_query($mysqli, $sql_update)) {
        $_SESSION['message'] = "Cập nhật banner thành công.";
    } else {
        $_SESSION['message'] = "Lỗi khi cập nhật banner: " . mysqli_error($mysqli);
    }
    header('Location: ../../index.php?action=banner&query=banner_list');
} else {
    // Xóa các banner đã chọn
    foreach ($banner_ids as $id) {
        $sql = "SELECT * FROM banner WHERE id = '$id' LIMIT 1";
        $query = mysqli_query($mysqli, $sql);
        while ($row = mysqli_fetch_array($query)) {
            unlink('uploads/' . $row['image']); // Xóa ảnh
        }
        $sql_delete = "DELETE FROM banner WHERE id = '" . $id . "'";
        mysqli_query($mysqli, $sql_delete);
    }
    $_SESSION['message'] = "Xóa banner thành công.";
    header('Location: ../../index.php?action=banner&query=banner_list');
}
?>
