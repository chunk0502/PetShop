<?php 
    if (isset($_GET['action'])) {
        $action = $_GET['action'];
    }
    else {
        $action = "-1";
    }

    if (isset($_GET['query'])) {
        $query = $_GET['query'];
    }
    else {
        $query = "-1";
    }
?>
<style>
    li a i span {
        color: white !important;
    }

</style>
<nav class="sidebar sidebar-offcanvas" id="sidebar" style="background-color:blue; color: white">
    <ul class="nav">
        <?php if($_SESSION['account_type'] == 2): ?>
        <li class="nav-item <?php if ($action === 'home') { echo "active"; } ?>">
            <a class="nav-link" href="index.php?action=home&query">
                <i style="color: black" class="menu-icon mdi mdi-home"></i>
                <span style="color: black" class="menu-title">Trang chủ </span>
                <!-- <?php echo $_SESSION['account_type'] ?> -->
            </a>
        </li>
        <li class="nav-item <?php if ($action === 'order') { echo "active"; } ?>">
            <a class="nav-link" data-bs-toggle="collapse" href="#orders" aria-expanded="<?php if ($action === 'order') { echo "true"; } else { echo "false"; } ?>" aria-controls="orders">
                <i style="color: black" class="menu-icon mdi mdi-table" ></i>
                <span style="color: black" class="menu-title"  >Đơn hàng</span>
                <i class="menu-arrow"></i>
            </a>
            <div class="collapse <?php if ($action === 'order') { echo "show"; } ?>" id="orders">
                <ul style="color: black" class="nav flex-column sub-menu">
                    <li class="nav-item <?php if ($query === 'order_live') { echo "active"; } ?>"> <a class="nav-link" href="index.php?action=order&query=order_live">Đơn hàng tại quầy</a></li>
                    <li class="nav-item <?php if ($query === 'order_list') { echo "active"; } ?>"> <a class="nav-link" href="index.php?action=order&query=order_list">Đơn hàng trực tuyến</a></li>
                    <li class="nav-item <?php if ($query === 'order_payment') { echo "active"; } ?>"> <a class="nav-link" href="index.php?action=order&query=order_payment">Lịch sửa thanh toán</a></li>
                </ul>
            </div>
        </li>
        <li class="nav-item <?php if ($action === 'product' or $action === 'category') { echo "active"; } ?>">
            <a class="nav-link" data-bs-toggle="collapse" href="#products" aria-expanded="<?php if ($action === 'product' or $action === 'category') { echo "true"; } else { echo "false"; } ?>" aria-controls="products">
                <i style="color: black" class="menu-icon mdi mdi-flask"></i>
                <span style="color: black" class="menu-title">Sản phẩm </span>
                <i class="menu-arrow"></i>
            </a>
            <div class="collapse <?php if ($action === 'product' or $action === 'category' or $action === 'collection' or $action === 'brand') { echo "show"; } ?>" id="products">
                <ul class="nav flex-column sub-menu">
                    <li class="nav-item <?php if ($query === 'product_list') { echo "active"; } ?>"> <a class="nav-link" href="index.php?action=product&query=product_list">Danh sách sản phẩm</a></li>
                    <!-- <li class="nav-item <?php if ($query === 'collection_list') { echo "active"; } ?>"> <a class="nav-link" href="index.php?action=collection&query=collection_list">Bộ sưu tập</a></li> -->
                    <li class="nav-item <?php if ($query === 'category_list') { echo "active"; } ?>"> <a class="nav-link" href="index.php?action=category&query=category_list">Danh mục sản phẩm</a></li>
                    <li class="nav-item <?php if ($query === 'brand_list') { echo "active"; } ?>"> <a class="nav-link" href="index.php?action=brand&query=brand_list">Danh sách thương hiệu</a></li>
                    <li class="nav-item <?php if ($query === 'product_inventory') { echo "active"; } ?>"> <a class="nav-link" href="index.php?action=product&query=product_inventory">Hàng tồn kho</a></li>
                    <li class="nav-item"> <a class="nav-link" href="#">Thẻ quà tặng</a></li>
                </ul>
            </div>
        </li>
        <li class="nav-item <?php if ($action === 'customer') { echo "active"; } ?>">
            <a class="nav-link" href="index.php?action=customer&query=customer_list">
                <i style="color: black" class="mdi mdi-account-box-outline menu-icon"></i>
                <span style="color: black" class="menu-title">Khách hàng</span>
            </a>
        </li>
        <li class="nav-item <?php if ($action === 'messages') { echo "active"; } ?>">
            <a class="nav-link" href="index.php?action=messages&query=messages_list">
                <i style="color: black" class="mdi mdi-account-box-outline menu-icon"></i>
                <span style="color: black" class="menu-title">Messages</span>
            </a>
        </li>
        <?php if($_SESSION['account_type'] == 2): ?>
            <li class="nav-item <?php if ($action === 'account') { echo "active"; } ?>">
                <a class="nav-link" href="index.php?action=account&query=account_list">
                    <i style="color: black" class="mdi mdi-account-multiple-outline menu-icon"></i>
                    <span style="color: black" class="menu-title">Tài khoản</span>
                </a>
            </li>
        <?php else: ?>
            <li></li>
        <?php endif; ?>

        <li class="nav-item <?php if ($action === 'article') { echo "active"; } ?>">
            <a class="nav-link" href="index.php?action=article&query=article_list">
                <i style="color: black" class="mdi mdi mdi-code-not-equal menu-icon"></i>
                <span  style="color: black"class="menu-title">Bài viết</span>
            </a>
        </li>
        <li class="nav-item <?php if ($action === 'capacity') { echo "active"; } ?>">
            <a class="nav-link" href="index.php?action=capacity&query=capacity_list">
                <i style="color: black"class="mdi mdi mdi-code-not-equal menu-icon"></i>
                <span style="color: black"class="menu-title">kích thước</span>
            </a>
        </li>

        <li class="nav-item <?php if ($action === 'inventory') { echo "active"; } ?>">
            <a class="nav-link" href="index.php?action=inventory&query=inventory_list">
                <i style="color: black"class="mdi mdi-clipboard-text menu-icon"></i>
                <span style="color: black"class="menu-title">Phiếu nhập kho</span>
            </a>
        </li>
        
        

        <li class="nav-item <?php if ($action === 'agency') { echo "active"; } ?>">
            <a class="nav-link" href="index.php?action=agency&query=agency_list">
                <i style="color: black"class="mdi mdi-clipboard-text menu-icon"></i>
                <span style="color: black"class="menu-title">Quản lý chi nhánh</span>
            </a>
        </li>


            <li class="nav-item <?php if ($action === 'dashboard') { echo "active"; } ?>">
            <a class="nav-link" href="index.php?action=dashboard&query=dashboard">
                <i style="color: black"class="menu-icon mdi mdi-chart-line"></i>
                <span style="color: black"class="menu-title">Thống Kê</span>
            </a>
            </li>

            <li class="nav-item <?php if ($action === 'banner') { echo "active"; } ?>">
                <a class="nav-link" href="index.php?action=banner&query=banner_list">
                    <i style="color: black"class="menu-icon fas fa-file-image"></i>
                    <span style="color: black"class="menu-title">Banner</span>
                </a>
            </li>

        <?php else: ?>
            <li></li>
        <?php endif; ?>
        <?php if($_SESSION['account_type'] == 3): ?>
            <li class="nav-item <?php if ($action === 'home') { echo "active"; } ?>">
            <a class="nav-link" href="index.php?action=home&query">
                <i style="color: black" class="menu-icon mdi mdi-home"></i>
                <span style="color: black" class="menu-title">Trang chủ </span>
                <!-- <?php echo $_SESSION['account_type'] ?> -->
            </a>
        </li>
        <li class="nav-item <?php if ($action === 'order') { echo "active"; } ?>">
            <a class="nav-link" data-bs-toggle="collapse" href="#orders" aria-expanded="<?php if ($action === 'order') { echo "true"; } else { echo "false"; } ?>" aria-controls="orders">
                <i style="color: black" class="menu-icon mdi mdi-table" ></i>
                <span style="color: black" class="menu-title"  >Đơn hàng</span>
                <i class="menu-arrow"></i>
            </a>
            <div class="collapse <?php if ($action === 'order') { echo "show"; } ?>" id="orders">
                <ul style="color: black" class="nav flex-column sub-menu">
                    <li class="nav-item <?php if ($query === 'order_live') { echo "active"; } ?>"> <a class="nav-link" href="index.php?action=order&query=order_live">Đơn hàng tại quầy</a></li>
                    <li class="nav-item <?php if ($query === 'order_list') { echo "active"; } ?>"> <a class="nav-link" href="index.php?action=order&query=order_list">Đơn hàng trực tuyến</a></li>
                    <li class="nav-item <?php if ($query === 'order_payment') { echo "active"; } ?>"> <a class="nav-link" href="index.php?action=order&query=order_payment">Lịch sửa thanh toán</a></li>
                </ul>
            </div>
        </li>
        <li class="nav-item <?php if ($action === 'product' or $action === 'category') { echo "active"; } ?>">
            <a class="nav-link" data-bs-toggle="collapse" href="#products" aria-expanded="<?php if ($action === 'product' or $action === 'category') { echo "true"; } else { echo "false"; } ?>" aria-controls="products">
                <i style="color: black" class="menu-icon mdi mdi-flask"></i>
                <span style="color: black" class="menu-title">Sản phẩm </span>
                <i class="menu-arrow"></i>
            </a>
            <div class="collapse <?php if ($action === 'product' or $action === 'category' or $action === 'collection' or $action === 'brand') { echo "show"; } ?>" id="products">
                <ul class="nav flex-column sub-menu">
                    <li class="nav-item <?php if ($query === 'product_list') { echo "active"; } ?>"> <a class="nav-link" href="index.php?action=product&query=product_list">Danh sách sản phẩm</a></li>
                    <!-- <li class="nav-item <?php if ($query === 'collection_list') { echo "active"; } ?>"> <a class="nav-link" href="index.php?action=collection&query=collection_list">Bộ sưu tập</a></li> -->
                    <li class="nav-item <?php if ($query === 'category_list') { echo "active"; } ?>"> <a class="nav-link" href="index.php?action=category&query=category_list">Danh mục sản phẩm</a></li>
                    <li class="nav-item <?php if ($query === 'brand_list') { echo "active"; } ?>"> <a class="nav-link" href="index.php?action=brand&query=brand_list">Danh sách thương hiệu</a></li>
                    <li class="nav-item <?php if ($query === 'product_inventory') { echo "active"; } ?>"> <a class="nav-link" href="index.php?action=product&query=product_inventory">Hàng tồn kho</a></li>
                    <li class="nav-item"> <a class="nav-link" href="#">Thẻ quà tặng</a></li>
                </ul>
            </div>
        </li>
        <li class="nav-item <?php if ($action === 'customer') { echo "active"; } ?>">
            <a class="nav-link" href="index.php?action=customer&query=customer_list">
                <i style="color: black" class="mdi mdi-account-box-outline menu-icon"></i>
                <span style="color: black" class="menu-title">Khách hàng</span>
            </a>
        </li>
        <li class="nav-item <?php if ($action === 'messages') { echo "active"; } ?>">
            <a class="nav-link" href="index.php?action=messages&query=messages_list">
                <i style="color: black" class="mdi mdi-account-box-outline menu-icon"></i>
                <span style="color: black" class="menu-title">Messages</span>
            </a>
        </li>
        <li class="nav-item <?php if ($action === 'article') { echo "active"; } ?>">
            <a class="nav-link" href="index.php?action=article&query=article_list">
                <i style="color: black" class="mdi mdi mdi-code-not-equal menu-icon"></i>
                <span  style="color: black"class="menu-title">Bài viết</span>
            </a>
        </li>
        <li class="nav-item <?php if ($action === 'capacity') { echo "active"; } ?>">
            <a class="nav-link" href="index.php?action=capacity&query=capacity_list">
                <i style="color: black"class="mdi mdi mdi-code-not-equal menu-icon"></i>
                <span style="color: black"class="menu-title">kích thước</span>
            </a>
        </li>

        <li class="nav-item <?php if ($action === 'inventory') { echo "active"; } ?>">
            <a class="nav-link" href="index.php?action=inventory&query=inventory_list">
                <i style="color: black"class="mdi mdi-clipboard-text menu-icon"></i>
                <span style="color: black"class="menu-title">Phiếu nhập kho</span>
            </a>
        </li>

        

            <li class="nav-item <?php if ($action === 'dashboard') { echo "active"; } ?>">
            <a class="nav-link" href="index.php?action=dashboard&query=dashboard">
                <i style="color: black"class="menu-icon mdi mdi-chart-line"></i>
                <span style="color: black"class="menu-title">Thống Kê</span>
            </a>
            </li>

            <li class="nav-item <?php if ($action === 'banner') { echo "active"; } ?>">
                <a class="nav-link" href="index.php?action=banner&query=banner_list">
                    <i style="color: black"class="menu-icon fas fa-file-image"></i>
                    <span style="color: black"class="menu-title">Banner</span>
                </a>
            </li>

        
        <?php endif; ?>
        <?php if($_SESSION['account_type'] == 1): ?>
            <li class="nav-item <?php if ($action === 'home') { echo "active"; } ?>">
            <a class="nav-link" href="index.php?action=home&query">
                <i style="color: black" class="menu-icon mdi mdi-home"></i>
                <span style="color: black" class="menu-title">Trang chủ </span>
                <!-- <?php echo $_SESSION['account_type'] ?> -->
            </a>
        </li>
        <li class="nav-item <?php if ($action === 'order') { echo "active"; } ?>">
            <a class="nav-link" data-bs-toggle="collapse" href="#orders" aria-expanded="<?php if ($action === 'order') { echo "true"; } else { echo "false"; } ?>" aria-controls="orders">
                <i style="color: black" class="menu-icon mdi mdi-table" ></i>
                <span style="color: black" class="menu-title"  >Đơn hàng</span>
                <i class="menu-arrow"></i>
            </a>
            <div class="collapse <?php if ($action === 'order') { echo "show"; } ?>" id="orders">
                <ul style="color: black" class="nav flex-column sub-menu">
                    <li class="nav-item <?php if ($query === 'order_live') { echo "active"; } ?>"> <a class="nav-link" href="index.php?action=order&query=order_live">Đơn hàng tại quầy</a></li>
                    <li class="nav-item <?php if ($query === 'order_list') { echo "active"; } ?>"> <a class="nav-link" href="index.php?action=order&query=order_list">Đơn hàng trực tuyến</a></li>
                    <li class="nav-item <?php if ($query === 'order_payment') { echo "active"; } ?>"> <a class="nav-link" href="index.php?action=order&query=order_payment">Lịch sửa thanh toán</a></li>
                </ul>
            </div>
        </li>
        <li class="nav-item <?php if ($action === 'product' or $action === 'category') { echo "active"; } ?>">
            <a class="nav-link" data-bs-toggle="collapse" href="#products" aria-expanded="<?php if ($action === 'product' or $action === 'category') { echo "true"; } else { echo "false"; } ?>" aria-controls="products">
                <i style="color: black" class="menu-icon mdi mdi-flask"></i>
                <span style="color: black" class="menu-title">Sản phẩm </span>
                <i class="menu-arrow"></i>
            </a>
            <div class="collapse <?php if ($action === 'product' or $action === 'category' or $action === 'collection' or $action === 'brand') { echo "show"; } ?>" id="products">
                <ul class="nav flex-column sub-menu">
                    <li class="nav-item <?php if ($query === 'product_list') { echo "active"; } ?>"> <a class="nav-link" href="index.php?action=product&query=product_list">Danh sách sản phẩm</a></li>
                    <!-- <li class="nav-item <?php if ($query === 'collection_list') { echo "active"; } ?>"> <a class="nav-link" href="index.php?action=collection&query=collection_list">Bộ sưu tập</a></li> -->
                    <li class="nav-item <?php if ($query === 'category_list') { echo "active"; } ?>"> <a class="nav-link" href="index.php?action=category&query=category_list">Danh mục sản phẩm</a></li>
                    <li class="nav-item <?php if ($query === 'brand_list') { echo "active"; } ?>"> <a class="nav-link" href="index.php?action=brand&query=brand_list">Danh sách thương hiệu</a></li>
                    <li class="nav-item <?php if ($query === 'product_inventory') { echo "active"; } ?>"> <a class="nav-link" href="index.php?action=product&query=product_inventory">Hàng tồn kho</a></li>
                    <li class="nav-item"> <a class="nav-link" href="#">Thẻ quà tặng</a></li>
                </ul>
            </div>
        </li>
        <li class="nav-item <?php if ($action === 'customer') { echo "active"; } ?>">
            <a class="nav-link" href="index.php?action=customer&query=customer_list">
                <i style="color: black" class="mdi mdi-account-box-outline menu-icon"></i>
                <span style="color: black" class="menu-title">Khách hàng</span>
            </a>
        </li>
        <li class="nav-item <?php if ($action === 'messages') { echo "active"; } ?>">
            <a class="nav-link" href="index.php?action=messages&query=messages_list">
                <i style="color: black" class="mdi mdi-account-box-outline menu-icon"></i>
                <span style="color: black" class="menu-title">Messages</span>
            </a>
        </li>
        <li class="nav-item <?php if ($action === 'article') { echo "active"; } ?>">
            <a class="nav-link" href="index.php?action=article&query=article_list">
                <i style="color: black" class="mdi mdi mdi-code-not-equal menu-icon"></i>
                <span  style="color: black"class="menu-title">Bài viết</span>
            </a>
        </li>
        <li class="nav-item <?php if ($action === 'capacity') { echo "active"; } ?>">
            <a class="nav-link" href="index.php?action=capacity&query=capacity_list">
                <i style="color: black"class="mdi mdi mdi-code-not-equal menu-icon"></i>
                <span style="color: black"class="menu-title">kích thước</span>
            </a>
        </li>
            <li class="nav-item <?php if ($action === 'banner') { echo "active"; } ?>">
                <a class="nav-link" href="index.php?action=banner&query=banner_list">
                    <i style="color: black"class="menu-icon fas fa-file-image"></i>
                    <span style="color: black"class="menu-title">Banner</span>
                </a>
            </li>

        <?php endif; ?>
    </ul>
</nav>