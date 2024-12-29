<?php
    session_start();
    include('../../config/config.php');
    // if (isset($_GET['data'])) {
    //     $data = $_GET['data'];
    //     $account_ids = json_decode($data);
    // }

    if (isset($_POST['account_add'])) {
        // Lấy dữ liệu từ form
        $account_name = $_POST['account_name'];
        $account_email = $_POST['account_email'];
        $account_password = $_POST['account_password']; // Mật khẩu mặc định
        $account_status = $_POST['account_status'];
        $account_phone = $_POST['account_phone']; // Lấy số điện thoại
    
        // Mã hóa mật khẩu nếu cần
        // $account_password = password_hash($account_password, PASSWORD_DEFAULT); // Đảm bảo mật khẩu được mã hóa
    
        // Kiểm tra xem email đã tồn tại trong cơ sở dữ liệu chưa
        $sql_check_email = "SELECT * FROM account WHERE account_email = '$account_email'";
        $query_check_email = mysqli_query($mysqli, $sql_check_email);
        $email_exists = mysqli_num_rows($query_check_email) > 0;
    
        if ($email_exists) {
            // Nếu email đã tồn tại, thông báo lỗi
            header('Location:../../index.php?action=account&query=account_list&message=email_exists');
        } else {
            // Nếu email chưa tồn tại, thực hiện thêm người dùng mới
            $sql_add_account = "INSERT INTO account (account_name, account_email, account_password, account_status, account_phone) 
                                VALUES ('$account_name', '$account_email', '$account_password', '$account_status', '$account_phone')";
            $query_add_account = mysqli_query($mysqli, $sql_add_account);
    
            if ($query_add_account) {
                // Thêm thành công, chuyển hướng về danh sách tài khoản
                header('Location:../../index.php?action=account&query=account_list&message=success');
            } else {
                // Nếu có lỗi trong quá trình thêm người dùng
                header('Location:../../index.php?action=account&query=account_list&message=error');
            }
        }
    }
    

if (isset($_GET['data'])) {
    $data = $_GET['data'];
    $account_ids = json_decode($data);

    // Chuyển đổi mảng ID thành chuỗi để sử dụng trong câu lệnh SQL
    $ids = implode(',', array_map('intval', $account_ids)); // Bảo mật với intval

    // Thực hiện câu lệnh xóa
    $sql_delete_account = "DELETE FROM account WHERE account_id IN ($ids)";
    $query_delete_account = mysqli_query($mysqli, $sql_delete_account);

    // Chuyển hướng về trang danh sách tài khoản với thông báo
    if ($query_delete_account) {
        header('Location:../../index.php?action=account&query=account_list&message=success');
    } else {
        header('Location:../../index.php?action=account&query=account_list&message=error');
    }
}

    $account_id = $_GET['account_id'];
    if (isset($_POST['account_edit'])) {
        $account_name = $_POST['account_name'];
        $account_phone = $_POST['account_phone'];
        $account_address = $_POST['account_address'];
        $customer_gender = $_POST['customer_gender'];

        $sql_update_account = "UPDATE account SET account_name = '$account_name', account_phone = '$account_phone' WHERE account_id = $account_id";
        $query_update_account = mysqli_query($mysqli, $sql_update_account);

        $sql_update_customer = "UPDATE customer SET customer_name = '$account_name', customer_phone = '$account_phone', customer_gender = '$customer_gender', customer_address = '$account_address' WHERE account_id = $account_id";
        $query_update_customer = mysqli_query($mysqli, $sql_update_customer);


        header('Location:../../index.php?action=account&query=my_account&message=success');
    }

    if (isset($_POST['account_change'])) {
        if ($_SESSION['account_type'] == 2 && $_SESSION['account_id_admin'] != $account_id) {
            $account_type = $_POST['account_type'];
            $account_status = $_POST['account_status'];
            $sql_update_account = "UPDATE account SET account_type = $account_type, account_status = $account_status WHERE account_id = $account_id";
            $query_update_account = mysqli_query($mysqli, $sql_update_account);
            
            header('Location:../../index.php?action=account&query=account_list&message=success');
        } else {
            header('Location:../../index.php?action=account&query=account_list&message=error');
        }
        
    }
?>
