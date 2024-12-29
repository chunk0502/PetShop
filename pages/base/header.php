<?php
if (isset($_GET['logout']) && $_GET['logout'] == 1) {
    unset($_SESSION['account_email']);
    unset($_SESSION['account_id']);
    header('Location:index.php');
}
?>
<style>
/* Định dạng chung cho thanh menu */
.header-bottom {
    display: flex; /* Sử dụng flexbox để căn đều các mục */
    align-items: center; /* Căn giữa theo chiều dọc */
    background-color: #000; /* Màu nền */
    padding: 10px 20px; /* Khoảng cách trên và dưới */
    gap: 20px; /* Khoảng cách giữa các mục */
}

/* Định dạng chung cho các liên kết */
.header-bottom a,
.header-bottom .dropbtn {
    text-decoration: none; /* Bỏ gạch chân */
    font-size: 18px; /* Cỡ chữ đồng đều */
    color: #fff; /* Màu chữ trắng */
    padding: 10px 15px; /* Khoảng cách bên trong để đồng đều */
    font-weight: bold; /* Làm chữ đậm */
    display: inline-block; /* Để các liên kết ngang hàng */
    text-align: center; /* Căn giữa nội dung liên kết chính */
}

.header-bottom a:hover,
.header-bottom .dropbtn:hover {
    color: #ccc; /* Màu chữ khi hover */
}

/* Định dạng dropdown */
.header-bottom .dropdown {
    position: relative;
    display: inline-block;
}

/* Định dạng nội dung dropdown */
.header-bottom .dropdown-content {
    display: none; /* Mặc định ẩn dropdown */
    position: absolute;
    background-color: #f9f9f9; /* Nền màu sáng */
    box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2); /* Đổ bóng */
    width: 480px; /* Chiều rộng của dropdown */
    padding: 10px; /* Khoảng cách trong khung */
    display: grid; /* Kích hoạt Grid layout */
    grid-template-columns: repeat(3, 1fr); /* Chia thành 3 cột */
    gap: 10px; /* Khoảng cách giữa các mục */
    z-index: 1;
}

/* Định dạng liên kết trong dropdown */
.header-bottom .dropdown-content a {
    color: #000; /* Màu chữ đen trong dropdown */
    padding: 5px 10px;
    text-decoration: none;
    display: block;
    font-size: 16px; /* Kích thước nhỏ hơn tiêu đề chính */
    text-align: left; /* Căn chữ bên trái */
    white-space: nowrap; /* Giữ cho các mục không bị xuống dòng */
}

/* Thêm hiệu ứng hover cho các mục trong dropdown */
.header-bottom .dropdown-content a:hover {
    background-color: #ddd; /* Màu nền khi hover trên danh mục */
}

/* Hiển thị dropdown khi hover vào dropdown */
.header-bottom .dropdown:hover .dropdown-content {
    display: block; /* Hiển thị menu khi hover vào vùng dropdown */
}

/* Đảm bảo dropdown ẩn khi không hover */
.header-bottom .dropdown-content {
    visibility: hidden; /* Ẩn dropdown khi không hover */
}

.header-bottom .dropdown:hover .dropdown-content {
    visibility: visible; /* Hiển thị dropdown khi hover vào */
}

/* Đảm bảo căn chỉnh đúng cho nội dung dropdown */
.header-bottom .dropdown-content a {
    display: block;
    text-align: left; /* Căn chữ bên trái */
}
</style>

<!--<style>-->
<!--    /*.voice-btn.recognizing .action__icon-on {*/-->
<!--    /*    display: block;*/-->
<!--    /*}*/-->
<!---->
<!--    /*.voice-btn.recognizing .action__icon-off {*/-->
<!--    /*    display: none;*/-->
<!--    /*}*/-->
<!---->
<!--    /*nav ul li:hover {*/-->
<!--    /*    background-color: #b09900;*/-->
<!--    /*}*/-->
<!---->
<!--    /*nav ul li span a {*/-->
<!--    /*    font-size: 18px;*/-->
<!--    /*    font-weight: 500;*/-->
<!--    /*}*/-->
<!---->
<!--    /*.nav__item .nav__anchor {*/-->
<!--    /*    padding: 0px 20px;*/-->
<!--    /*}*/-->
<!---->
<!--    /*.h7 {*/-->
<!--    /*    font-size: 1.3rem;*/-->
<!--    /*    letter-spacing: 0.02em;*/-->
<!--    /*    line-height: 1.5;*/-->
<!--    /*    font-weight: 400;*/-->
<!--    /*    font-size: 18px;*/-->
<!--    /*    font-weight: bold;*/-->
<!--    /*}*/-->
<!--    * {-->
<!--        margin: 0;-->
<!--        padding: 0;-->
<!--        box-sizing: border-box;-->
<!--    }-->
<!---->
<!--    .header {-->
<!--        background-color: white;-->
<!--        padding: 30px 0;-->
<!--        border-bottom: 1px solid #e5e5e5;-->
<!--    }-->
<!---->
<!--    .container {-->
<!--        display: flex;-->
<!--        justify-content: space-between;-->
<!--        align-items: center;-->
<!--        max-width: 1200px;-->
<!--        margin: 0 auto;-->
<!--    }-->
<!---->
<!--    .nav-menu {-->
<!--        display: flex;-->
<!--        align-items: center;-->
<!--        width: 100%;-->
<!--        justify-content: space-between;-->
<!--    }-->
<!---->
<!--    .menu-list {-->
<!--        display: flex;-->
<!--        list-style: none;-->
<!--    }-->
<!---->
<!--    .menu-list li {-->
<!--        margin-right: 20px;-->
<!--    }-->
<!---->
<!--    .menu-list li a {-->
<!--        text-decoration: none;-->
<!--        color: black;-->
<!--        font-weight: bold;-->
<!--        font-size: 16px;-->
<!--    }-->
<!---->
<!--    .menu-list li a:hover {-->
<!--        color: green;-->
<!--    }-->
<!---->
<!--    .logo img {-->
<!--        max-width: 100px;-->
<!--    }-->
<!---->
<!--    .user-actions {-->
<!--        display: flex;-->
<!--        align-items: center;-->
<!--    }-->
<!---->
<!--    .user-actions a {-->
<!--        margin-right: 15px;-->
<!--        text-decoration: none;-->
<!--        color: black;-->
<!--        font-size: 16px;-->
<!--    }-->
<!---->
<!--    .search-bar {-->
<!--        display: flex;-->
<!--        align-items: center;-->
<!--        border: 1px solid #ddd;-->
<!--        border-radius: 20px;-->
<!--        padding: 5px 10px;-->
<!--        margin-right: 15px;-->
<!--    }-->
<!---->
<!--    .search-bar input {-->
<!--        border: none;-->
<!--        outline: none;-->
<!--    }-->
<!---->
<!--    .search-bar button {-->
<!--        background: none;-->
<!--        border: none;-->
<!--        cursor: pointer;-->
<!--        color: green;-->
<!--    }-->
<!---->
<!--    .cart-icon img {-->
<!--        width: 30px;-->
<!--        height: 30px;-->
<!--    }-->
<!--    .dropdown {-->
<!--        position: relative;-->
<!--        display: inline-block;-->
<!--    }-->
<!---->
<!--    .dropdown-content {-->
<!--        display: none;-->
<!--        position: absolute;-->
<!--        background-color: white;-->
<!--        min-width: 160px;-->
<!--        box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);-->
<!--        z-index: 1;-->
<!--    }-->
<!---->
<!--    .dropdown-content a {-->
<!--        color: black;-->
<!--        padding: 12px 16px;-->
<!--        text-decoration: none;-->
<!--        display: block;-->
<!--    }-->
<!---->
<!--    .dropdown-content a:hover {-->
<!--        background-color: #f1f1f1;-->
<!--    }-->
<!---->
<!--    .dropdown:hover .dropdown-content {-->
<!--        display: block;-->
<!--    }-->
<!---->
<!--    .dropbtn:hover {-->
<!--        color: green; /* Đổi màu khi hover */-->
<!--    }-->
<!---->
<!--</style>-->
<style>
  /* Toàn bộ body */
body {
    margin: 0;
    font-family: Arial, sans-serif;
}

/* Header */
.header {
    background-color: #1E42BA;
    color: white;
}

/* Thanh menu trên */
.header-top {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 10px 20px;
}

/* Logo */
.logo {
    font-size: 40px;
    font-weight: bold;
    color: yellow;
    margin-left: 200px;
}

/* Tìm kiếm */
.search {
    position: relative;
}

.search input {
    padding: 15px;
    border-radius: 20px;
    border: none;
    width: 400px;
    margin-left: 100px;
}

.search button {
    position: absolute;
    right: 20px;
    top: 0;
    border: none;
    background-color: white;
    padding: 15px;
    cursor: pointer;
}

.search button img {
    height: 20px;
}

/* Menu bên phải */
.right-menu {
    display: flex;
    gap: 20px;
    align-items: center;
}

/* Các liên kết trong menu bên phải */
.right-menu a {
    text-decoration: none; /* Không gạch chân */
    color: white; /* Màu chữ */
}

/* Biểu tượng trong các liên kết */
.right-menu a img {
    height: 24px;
}

/* Thanh menu dưới */
.header-bottom {
    display: flex;
    padding: 20px 20px;
    background-color: #1E42BA;
}

/* Liên kết trong menu dưới */
.header-bottom a {
    text-decoration: none; /* Không gạch chân */
    color: white; /* Màu chữ */
    font-weight: bold;
    font-size: 18px;
    padding: 20px;
}

/* Liên kết trong menu dưới khi hover */
.header-bottom a:hover {
    text-decoration: none; /* Không gạch chân khi hover */
    color: white; /* Giữ nguyên màu chữ */
}

/* Dropdown chính */
.dropdown {
    position: relative;
    display: inline-block;
}

.dropbtn {
    text-decoration: none; /* Không gạch chân */
    color: white; /* Màu chữ */
    padding: 10px 15px; /* Khoảng cách bên trong */
    border: none;
    background: none; /* Xóa nền nếu có */
    cursor: pointer;
    font-size: 16px; /* Kích thước chữ */
}

/* Nội dung của dropdown */
.dropdown-content {
    display: none; /* Ẩn menu mặc định */
    position: absolute;
    background-color: #f9f9f9; /* Màu nền */
    min-width: 200px; /* Chiều rộng tối thiểu */
    box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2); /* Đổ bóng */
    z-index: 1;
    padding: 10px; /* Khoảng cách bên trong menu */
    column-count: 2; /* Chia thành hai cột */
    column-gap: 15px; /* Khoảng cách giữa các cột */
}

/* Liên kết trong dropdown */
.dropdown-content a {
    color: black; /* Màu chữ mặc định của liên kết */
    padding: 8px 12px; /* Khoảng cách bên trong mỗi mục */
    text-decoration: none; /* Không gạch chân */
    display: block; /* Hiển thị dạng khối để dễ căn chỉnh */
}

/* Khi rê chuột vào liên kết trong dropdown */
.dropdown-content a:hover {
    background-color: #ddd; /* Màu nền khi rê chuột vào */
    color: black; /* Màu chữ */
    text-decoration: none; /* Không gạch chân */
}

/* Hiển thị menu khi rê chuột vào dropdown chính */
.dropdown:hover .dropdown-content {
    display: block; /* Hiển thị menu */
}

/* Khi rê chuột vào dropdown chính */
.header-bottom .dropdown:hover .dropbtn {
    text-decoration: none; /* Không gạch chân */
    color: white; /* Giữ nguyên màu chữ */
}

/* Phần Trang chủ và Thương hiệu */
.navbar .dropdown {
    margin: 0 15px; /* Khoảng cách giữa các dropdown */
}

.navbar .dropdown-content {
    text-align: left; /* Căn trái nội dung */
}

/* Thương hiệu hoặc các dropdown phụ khác */
.navbar .dropdown-content a {
    font-size: 14px; /* Kích thước chữ nhỏ hơn */
}

/* Liên kết trong các dropdown phụ */
.navbar .dropdown-content a:hover {
    background-color: #ccc; /* Màu nền khi rê chuột */
    text-decoration: none; /* Không gạch chân */
}

</style>


<body>

<header class="header">
    <!-- Dòng trên -->
    <div class="header-top">
        <div class="logo">TYRA</div>

        <div class="search">
            <form action="index.php?page=search" method="POST" class="d-flex align-center" id="search-box">
                                    <div class="search-bar">
                                        <input type="text" id="input-search" name="keyword" placeholder="Gõ từ khóa sản phẩm bạn" required>
                                        <button type="button" class="voice-btn" onclick="voiceInput()">
                                            <i class="fa fa-microphone"></i>
                                        </button>
                                        <button style="border-radius: 20px; " type="submit" name="search">
                                            <i style="border-radius: 20px" class="fa fa-search"></i>
                                        </button>
                                    </div>
                                </form>
        </div>

        <div class="right-menu">
            <a href="tel:0867677891">Hotline: 0765659128</a>
            <a class="icons">
        
            <a href="<?php if (isset($_SESSION['account_email'])) {
                echo 'index.php?page=my_account&tab=account_info';
            } else {
                echo 'index.php?page=login';
            } ?>">
                <i class="fa fa-user"></i>
            </a>
            <?php if (isset($_SESSION['account_email'])) { ?>
                        <a   href="index.php?logout=1" style="font-size: 18px !important; font-weight: bold !important; color:white;">ĐĂNG XUẤT</a>
                    <?php } else { ?>
                        <a  style="font-size:18px; font-weight: bold; color:white;" href="index.php?page=login">ĐĂNG NHẬP</a>
                    <?php } ?>

            <a class="cart" href="index.php?page=cart">
                                        <?php
                                        if (isset($_SESSION['cart']) && count($_SESSION['cart']) > 0) {
                                            ?>
                                            <div class="icon-cart d-flex align-center justify-center p-relative">
                                                <img src="https://cdn-icons-png.flaticon.com/512/34/34568.png" alt="Cart">
                                                <span style="background-color: yellow; color: #1E42BA; border-radius: 50%; padding: 3px 6px; font-size: 12px;"><?php echo count($_SESSION['cart']) ?></span>
                                            </div>
                                            <?php
                                        } else {
                                            ?>
                                            <img src="https://cdn-icons-png.flaticon.com/512/34/34568.png" alt="Cart">
                                            <?php
                                        }
                                        ?>
                                    </a>
            <a href="#">VI / USD</a>
        </div>
    </div>

    <!-- Dòng dưới -->
    <div class="header-bottom" style="margin-left: 180px">
    <a href="index.php?">Trang Chủ</a>

    <!-- Menu Sản Phẩm -->
    <div class="dropdown">
        <a href="#" class="dropbtn">Sản Phẩm</a>
        <div class="dropdown-content">
            <?php
            // Kết nối đến cơ sở dữ liệu và truy vấn danh sách danh mục
            $sql_category_list = "SELECT * FROM category ORDER BY category_id DESC";
            $query_category_list = mysqli_query($mysqli, $sql_category_list);
            while ($row_category = mysqli_fetch_array($query_category_list)) {
                ?>
                <a href="index.php?page=products&category_id=<?php echo $row_category['category_id']; ?>">
                    <?php echo $row_category['category_name']; ?>
                </a>
            <?php } ?>
        </div>
    </div>

    <a href="index.php?page=products&brand_id=10">Thương Hiệu</a>
    <a href="index.php?page=blog">New</a>
    <a href="index.php?page=contact">Liên Hệ</a>
    <a href="index.php?page=about">Giới Thiệu</a>
</div>
</header>

</body>
<script>


        function voiceInput() {
        var inputSearch = document.getElementById('input-search');
        var searchBtn = document.querySelector('.voice-btn');
        // Tạo một đối tượng SpeechRecognition
        const recognition = new webkitSpeechRecognition();
        recognition.lang = 'vi-VN';
        recognition.continuous = false;

        recognition.onresult = function(event) {
        const transcript = event.results[0][0].transcript;
        inputSearch.value = transcript;
    };

        recognition.onstart = function() {
        searchBtn.classList.add('recognizing');
    };

        recognition.onend = function() {
        searchBtn.classList.remove('recognizing');
    };

        recognition.onerror = function(event) {
        console.error(event.error);
    };

        recognition.start();
    }


</script>
