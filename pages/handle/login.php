<?php
    session_start();
    include('../../admin/config/config.php');
    if (isset($_POST['login'])) {
        $account_email = $_POST['account_email'];
        $account_password = md5($_POST['account_password']);
        $sql_account = "SELECT * FROM account WHERE account_email='$account_email' AND account_password='$account_password' AND (account_type=0)";
        $query_account = mysqli_query($mysqli, $sql_account);
        $row = mysqli_fetch_array($query_account);
        $count = mysqli_num_rows($query_account);
        if ($count>0) {
            $_SESSION['account_id'] = $row['account_id'];
            $_SESSION['account_email'] = $row['account_email'];
            header('Location:../../index.php?page=my_account&tab=account_info&message=success');
        }else {
            $account_email = $_POST['account_email'];
            $account_password = md5($_POST['account_password']);
            $account_email = mysqli_real_escape_string($mysqli, $account_email);
            $account_password = mysqli_real_escape_string($mysqli, $account_password);
        
            // Truy vấn thông tin tài khoản
            $sql_account = "SELECT * FROM account WHERE account_email='$account_email' AND account_password='$account_password' AND (account_type=1 OR account_type=2 OR account_type=3)";
            $query_account = mysqli_query($mysqli, $sql_account);
            $row = mysqli_fetch_array($query_account);
            $count = mysqli_num_rows($query_account);
        
            if ($count > 0) {
                // Lưu thông tin tài khoản vào session
                $_SESSION['login'] = $row['account_email'];
                $_SESSION['account_id_admin'] = $row['account_id'];
                $_SESSION['account_name'] = $row['account_name'];
                $_SESSION['account_type'] = $row['account_type'];
        
                // Lấy và lưu title_agency vào session
                $account_id = $row['account_id'];
                $sql_title_agency = "SELECT title_agency FROM account WHERE account_id='$account_id'";
                $result = mysqli_query($mysqli, $sql_title_agency);
                if ($result) {
                    $agency_row = mysqli_fetch_array($result);
                    $_SESSION['title_agency'] = $agency_row['title_agency'];
                }
                header('Location: ../../admin/index.php');
        
                // header('Location: ../..');
            } else {
                header('Location:../../index.php?page=login');
            echo '<script>alert("Tài khoản hoặc mật khẩu không chính xác, vui lòng nhập lại");</script>';
            }
        }
    }
