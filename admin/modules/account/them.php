<div class="row" style="margin-bottom: 10px;">
    <div class="col d-flex" style="justify-content: space-between; align-items: flex-end;">
        <h3 class="card-title">
            Thêm người dùng
        </h3>
        <a href="index.php?action=account&query=account_list" class="btn btn-outline-dark btn-fw">
            <i class="mdi mdi-reply"></i>
            Quay lại
        </a>
    </div>
</div>
<form method="POST" action="modules/account/xuly.php" id="form-account">
    <div class="row">
        <div class="col-lg-8 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                    <div class="card-content">
                        <div class="input-item form-group">
                            <label for="account_name" class="d-block">Tên người dùng</label>
                            <input type="text" id="account_name" name="account_name" class="d-block form-control" value="" placeholder="Nhập tên người dùng" required>
                            <span class="form-message"></span>
                        </div>
                        <div class="input-item form-group">
                            <label for="account_email" class="d-block">Email</label>
                            <input type="email" id="account_email" name="account_email" class="d-block form-control" value="" placeholder="Nhập email" required>
                            <span class="form-message"></span>
                        </div>
						<div class="input-item form-group">
							<label for="account_phone" class="d-block">Số điện thoại</label>
							<input type="text" id="account_phone" name="account_phone" class="d-block form-control" value="" placeholder="Nhập số điện thoại" required>
							<span class="form-message"></span>
						</div>
                        <div class="input-item form-group">
                            <label for="account_status" class="d-block">Trạng thái</label>
                            <select name="account_status" id="account_status" class="form-control">
                                <option value="1">Hoạt động</option>
                                <option value="0">Tạm dừng</option>
                            </select>
                        </div>
						<div class="input-item form-group">
							<label for="account_password" class="d-block">Mật khẩu mặc định</label>
							<input type="text" id="account_password" name="account_password" class="d-block form-control" value="123456" readonly>
							<span class="form-message"></span>
						</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="w-100" style="text-align: left;">
        <button type="submit" name="account_add" class="btn btn-primary btn-icon-text">
            <i class="ti-file btn-icon-prepend"></i>
            Thêm
        </button>
    </div>
</form>

<script>
    Validator({
        form: '#form-account',
        errorSelector: '.form-message',
        rules: [
            Validator.isRequired('#account_name', 'Vui lòng nhập tên người dùng'),
            Validator.isRequired('#account_email', 'Vui lòng nhập email'),
            Validator.isEmail('#account_email', 'Email không hợp lệ'),
			Validator.isRequired('#account_phone', 'Vui lòng nhập số điện thoại')
        ],
        onSubmit: function(data) {
            console.log(data);
        }
    });
</script>
