<style>
    .cc{
        background: url('https://marketplace.canva.com/EAFPkiiDf-Q/1/0/1600w/canva-m%C3%A0u-n%C3%A2u-be-%E1%BA%A3nh-gh%C3%A9p-ngh%E1%BB%87-thu%E1%BA%ADt-tr%C3%A1i-tim-v%C3%A0-m%C3%A8o-h%C3%ACnh-n%E1%BB%81n-m%C3%A1y-t%C3%ADnh-S7uJClOaupI.jpg')no-repeat;
    }
</style>
<section class="login cc pd-section">
    <div class="form-box">
        <div class="form-value">
            <form action="pages/handle/login.php" autocomplete="on" method="POST">
                <h2 class="login-title">Đăng nhập</h2>
                <div class="inputbox">
                    <ion-icon name="mail-outline"></ion-icon>
                    <input type="email" name="account_email" placeholder="Email" required>
                </div>
                <div class="inputbox">
                    <ion-icon name="lock-closed-outline"></ion-icon>
                    <input type="password" name="account_password" placeholder="Password" required>
                </div>
                <div class="forget">
                    <label for=""><input type="checkbox">Remember Me <a href="#">Forget Password</a></label>

                </div>
                <button type="submit" name="login">Đăng nhập</button>
                <div class="register">
                    <p>Chưa có tài khoản <a href="index.php?page=register">Đăng ký</a></p>
                </div>
            </form>
        </div>
    </div>
</section>
<script>
    function showSuccessMessage() {
        toast({
            title: "Success",
            message: "Đăng ký thành công",
            type: "success",
            duration: 3000,
        });
    }

    function showErrorMessage() {
        toast({
            title: "Error",
            message: "Lỗi đăng ký, vui lòng kiểm tra lại",
            type: "error",
            duration: 3000,
        });
    }
</script>
<?php
if (isset($_GET['message']) && $_GET['message'] == 'success') {
    echo '<script>';
    echo 'showSuccessMessage();';
    echo 'window.history.pushState(null, "", "index.php?page=product_detail&product_id=' . $product_id . '");';
    echo '</script>';
} elseif (isset($_GET['message']) && $_GET['message'] == 'error') {
    echo '<script>';
    echo 'showErrorMessage();';
    echo 'window.history.pushState(null, "", "index.php?page=product_detail&product_id=' . $product_id . '");';
    echo '</script>';
}
?>