<?php
if (isset($_POST['customer_search'])) {
    $keyword = $_POST['customer_search'];
}
$sql_customer_list = "SELECT * FROM customer WHERE customer_name LIKE '%" . $keyword . "%'";
$query_customer_list = mysqli_query($mysqli, $sql_customer_list);
?>
<div class="row">
    <div class="col">
        <div class="header__list d-flex space-between align-center">
            <h3 class="card-title" style="margin: 0;">Danh sách khách hàng</h3>
            <div class="action_group">
                <a href="modules/customer/export.php" class="button button-dark">Export</a>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-lg-12 grid-margin stretch-card">
        <div class="card">
        
        <div class="card">
            <div class="card-body">
            <div class="main-pane-top d-flex space-between align-center justify-center">
                    <div class="input__search p-relative">
                        <form class="search-form" action="" method="POST">
                            <i class="icon-search p-absolute"></i>
                            <input type="search" class="form-control" title="Nhập vào tên khách hàng để tìm kiếm" name="customer_search" placeholder="Search Here" title="Search here">
                        </form>
                    </div>
                </div>
          
                <div class="table-responsive">
                    <table class="table table-hover table-action">
                        <thead>
                            <tr>
                                <th></th>
                                <th>
                                    <input type="checkbox" id="checkAll">
                                </th>
                                <th>Tên khách hàng</th>
                                <th>Giới tính</th>
                                <th>Email</th>
                                <th>Số điện thoại</th>
                                <th>Địa chỉ</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $i = 0;
                            while ($row = mysqli_fetch_array($query_customer_list)) {
                                $i++;
                            ?>
                                <tr>
                                    <td>
                                        
                                    </td>
                                    <td>
                                        <input type="checkbox" class="checkbox" onclick="testChecked(); getCheckedCheckboxes();" id="<?php echo $row['customer_id'] ?>">
                                    </td>
                                    <td><?php echo $row['customer_name'] ?></td>
                                    <td><?php echo format_gender($row['customer_gender']) ?></td>
                                    <td><?php echo $row['customer_email'] ?></td>
                                    <td><?php echo $row['customer_phone'] ?></td>
                                    <td><?php echo $row['customer_address'] ?></td>
                                </tr>
                            <?php
                            }
                            ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="dialog__control">
    <div class="control__box">
        <a href="#" class="button__control btn__wanning" id="btnDelete" onclick="return confirm('Bạn có thực sự muốn xóa thông tin khách hàng này không?')">Xóa</a>
    </div>
</div>
<script>
    var url;
    var dialogInput = document.querySelector(".dialog__input");
    var btnSale = document.getElementById("btnSale");
    var saleBtn = document.querySelector('#sale_btn')
    var btnClose = document.querySelector(".close__btn");
    var btnDelete = document.getElementById("btnDelete");
    var checkAll = document.getElementById("checkAll");
    var checkboxes = document.getElementsByClassName("checkbox");
    var dialogControl = document.querySelector('.dialog__control');
    // Thêm sự kiện click cho checkbox checkAll
    checkAll.addEventListener("click", function() {
        // Nếu checkbox checkAll được chọn
        if (checkAll.checked) {
            // Đặt thuộc tính "checked" cho tất cả các checkbox còn lại
            for (var i = 0; i < checkboxes.length; i++) {
                checkboxes[i].checked = true;
            }
        } else {
            // Bỏ thuộc tính "checked" cho tất cả các checkbox còn lại
            for (var i = 0; i < checkboxes.length; i++) {
                checkboxes[i].checked = false;
            }
        }
        testChecked();
        getCheckedCheckboxes();
    });

    function testChecked() {
        var count = 0;
        for (let i = 0; i < checkboxes.length; i++) {
            if (checkboxes[i].checked) {
                count++;
            }
        }
        if (count > 0) {
            dialogControl.classList.add('active');
        } else {
            dialogControl.classList.remove('active');
            checkAll.checked = false;
        }
    }

    btnSale.addEventListener('click', function() {
        dialogInput.classList.add("open");
    })

    btnClose.addEventListener('click', function() {
        dialogInput.classList.remove("open");
    })

    var linklist = '';

    function getCheckedCheckboxes() {
        var checkeds = document.querySelectorAll('.checkbox:checked');
        var checkedIds = [];
        for (var i = 0; i < checkeds.length; i++) {
            checkedIds.push(checkeds[i].id);
        }
        linklist = "modules/product/xuly.php?data=" + JSON.stringify(checkedIds);
        btnDelete.href = "modules/product/xuly.php?data=" + JSON.stringify(checkedIds);
    }
    // truyền giá trị sale vào thẻ a
    var inputSale = document.querySelector('#input_sale');
    inputSale.addEventListener("input", function() {
        saleBtn.href = linklist + "&product_sale=" + inputSale.value;
    })
</script>