<?php
$sql_banner_list = "SELECT * FROM banner ORDER BY id DESC";
$query_banner_list = mysqli_query($mysqli, $sql_banner_list);
?>

<div class="row">
    <div class="col">
        <div class="header__list d-flex space-between align-center">
            <h3 class="card-title" style="margin: 0;">Danh sách banner</h3>
            <div class="action_group">
                <a href="?action=banner&query=banner_add" class="button button-dark">Thêm banner</a>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-lg-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <div class="card-content">
                    <div class="main-pane-top d-flex justify-center align-center">
                        <div class="input__search p-relative">
                            <form class="search-form" action="#">
                                <i class="icon-search p-absolute"></i>
                                <input type="search" class="form-control" placeholder="Search Here" title="Search here">
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
                                <th></th>
                                <th>Hình ảnh</th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php
                            $i = 0;
                            while ($row = mysqli_fetch_array($query_banner_list)) {
                                $i++;
                                ?>
                                <tr>
                                    <td>
                                        <!-- <a href="?action=banner&query=banner_edit&banner_id=<?php echo $row['id'] ?>">
                                            <div class="icon-edit">
                                                <img class="w-100 h-100" src="images/icon-edit.png" alt="">
                                            </div>
                                        </a> -->
                                    </td>
                                    <td>
                                        <input type="checkbox" class="checkbox" onclick="testChecked(); getCheckedCheckboxes();" id="<?php echo $row['id'] ?>">
                                    </td>
                                    <td><?php echo $row['id'] ?></td>
                                    <td><img style="width: 200px !important;" src="modules/banner/uploads/<?php echo $row['image'] ?>" alt=""></td>
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
</div>

<div class="dialog__control">
    <div class="control__box">
        <a href="#" class="button__control" id="btnDelete">Xóa</a>
    </div>
</div>

<script>
    var btnDelete = document.getElementById("btnDelete");
    var checkAll = document.getElementById("checkAll");
    var checkboxes = document.getElementsByClassName("checkbox");
    var dialogControl = document.querySelector('.dialog__control');

    checkAll.addEventListener("click", function() {
        for (var i = 0; i < checkboxes.length; i++) {
            checkboxes[i].checked = checkAll.checked;
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

    function getCheckedCheckboxes() {
        var checkeds = document.querySelectorAll('.checkbox:checked');
        var checkedIds = [];
        for (var i = 0; i < checkeds.length; i++) {
            checkedIds.push(checkeds[i].id);
        }
        btnDelete.href = "modules/banner/xuly.php?data=" + JSON.stringify(checkedIds);
    }
</script>
