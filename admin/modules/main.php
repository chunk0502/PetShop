<div class="main-panel">
    <div class="content-wrapper">
        <?php
        if (isset($_GET['action']) && $_GET['query']) {
            $action = $_GET['action'];
            $query = $_GET['query'];

        } else {
            $action = '';
            $query = '';
        }
        if ($action == 'dashboard' && $query == 'dashboard') {
            include("./modules/dashboard.php");
        }
        elseif ($action == 'order' && $query == 'order_list') {
            include("./modules/order/lietke.php");
        }
        elseif ($action == 'order' && $query == 'order_live') {
            include("./modules/order/donhangtructiep.php");
        }
        elseif ($action == 'order' && $query == 'order_payment') {
            include("./modules/order/lichsuthanhtoan.php");
        }
        elseif ($action == 'order' && $query == 'order_add') {
            include("./modules/order/them.php");
        }
        elseif ($action == 'order' && $query == 'order_add') {
            include("./modules/order/them.php");
        }
        elseif ($action == 'order' && $query == 'order_search') {
            include("./modules/order/timkiem.php");
        }
        elseif ($action == 'customer' && $query == 'customer_search') {
            include("./modules/customer/timkiem.php");
        }
        elseif($action =='order' && $query == 'order_detail') {
            include("./modules/order/chitiet.php");
        }
        elseif($action =='order' && $query == 'order_detail_online') {
            include("./modules/order/chitiet_online.php");
        }
        elseif($action =='category' && $query == 'category_add') {
            include("./modules/category/them.php");
        }
        elseif($action =='category' && $query == 'category_list') {
            include("./modules/category/lietke.php");
        }
        elseif($action =='category' && $query == 'category_edit') {
            include("./modules/category/sua.php");
        } 
        elseif($action =='category' && $query == 'category_search') {
            include("./modules/category/timkiem.php");
        }
        elseif($action =='collection' && $query == 'collection_add') {
            include("./modules/collection/them.php");
        }
        elseif($action =='collection' && $query == 'collection_list') {
            include("./modules/collection/lietke.php");
        }
        elseif($action =='collection' && $query == 'collection_edit') {
            include("./modules/collection/sua.php");
        } 
        elseif($action =='product' && $query == 'product_add') {
            include("./modules/product/them.php");
        }
        elseif($action =='product' && $query == 'product_list') {
            include("./modules/product/lietke.php");
        }
        elseif($action =='product' && $query == 'product_edit') {
            include("./modules/product/sua.php");
        }
        elseif($action =='product' && $query == 'product_search') {
            include("./modules/product/timkiem.php");
        }
        elseif($action =='product' && $query == 'product_inventory') {
            include("./modules/product/tonkho.php");
        }
        elseif($action =='account' && $query == 'my_account') {
            include("./modules/account/my_account.php");
        }
        elseif($action =='account' && $query == 'account_add') {
            include("./modules/account/them.php");
        }
        elseif($action =='account' && $query == 'password_change') {
            include("./modules/account/password_change.php");
        }
        elseif($action =='account' && $query == 'account_list') {
            include("./modules/account/lietke.php");
        }
        elseif($action =='account' && $query == 'account_edit') {
            include("./modules/account/sua.php");
        }
        elseif($action =='account' && $query == 'account_search') {
            include("./modules/account/timkiem.php");
        }
        elseif($action =='article' && $query == 'article_add') {
            include("./modules/blog/them.php");
        }
        elseif($action =='article' && $query == 'article_search') {
            include("./modules/blog/timkiem.php");
        }
        elseif($action =='article' && $query == 'article_list') {
            include("./modules/blog/lietke.php");
        }
        elseif($action =='article' && $query == 'article_edit') {
            include("./modules/blog/sua.php");
        }
        elseif($action =='brand' && $query == 'brand_list') {
            include("./modules/brand/lietke.php");
        }
        elseif($action =='brand' && $query == 'brand_add') {
            include("./modules/brand/them.php");
        }
        elseif($action =='brand' && $query == 'brand_search') {
            include("./modules/brand/timkiem.php");
        }
        elseif($action =='brand' && $query == 'brand_edit') {
            include("./modules/brand/sua.php");
        }
        elseif($action =='customer' && $query == 'customer_list') {
            include("./modules/customer/lietke.php");
        }
        elseif($action =='messages' && $query == 'messages_list') {
            include("./modules/messages/lietke.php");
        }
        elseif($action =='inventory' && $query == 'inventory_list') {
            include("./modules/inventory/lietke.php");
        }
        elseif($action =='inventory' && $query == 'inventory_add') {
            include("./modules/inventory/them.php");
        }
        elseif($action =='inventory' && $query == 'inventory_detail') {
            include("./modules/inventory/chitiet.php");
        }
        elseif($action =='inventory' && $query == 'inventory_edit') {
            include("./modules/inventory/sua.php");
        }
        elseif($action =='inventory' && $query == 'inventory_search') {
            include("./modules/inventory/timkiem.php");
        }
        elseif($action =='dashboard' && $query == 'dashboard') {
            include("./modules/dashboard.php");
        } 
        elseif($action =='settings' && $query == 'settings') {
            include("./modules/settings/main.php");
        }
        elseif($action =='agency' && $query == 'agency_list') {
            include("./modules/agency/lietke.php");
        }
        elseif($action =='agency' && $query == 'agency_search') {
            include("./modules/agency/timkiem.php");
        }
        elseif($action =='agency' && $query == 'agency_add') {
            include("./modules/agency/them.php");
        }
        elseif($action =='agency' && $query == 'agency_edit') {
            include("./modules/agency/sua.php");
        }
        elseif($action =='capacity' && $query == 'capacity_list') {
            include("./modules/capacity/lietke.php");
        }
        elseif($action =='capacity' && $query == 'capacity_add') {
            include("./modules/capacity/them.php");
        }
        elseif($action =='capacity' && $query == 'capacity_search') {
            include("./modules/capacity/timkiem.php");
        }
        elseif($action =='capacity' && $query == 'capacity_edit') {
            include("./modules/capacity/sua.php");
        }
        elseif($action =='banner' && $query == 'banner_list') {
            include("./modules/banner/lietke.php");
        }
        elseif($action =='banner' && $query == 'banner_add') {
            include("./modules/banner/them.php");
        }
        else {
            include("./modules/home.php");
        }
        ?>
    </div>
</div>