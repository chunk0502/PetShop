<?php
// Truy vấn để lấy danh sách banner từ cơ sở dữ liệu
$sql_banner_list = "SELECT * FROM banner ORDER BY id DESC";
$query_banner_list = mysqli_query($mysqli, $sql_banner_list);
?>
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    html, body {
        overflow-x: hidden; /* Ngăn cuộn ngang */
    }

    .container-custom {
        width: 100%;
        max-width: 1400px;
        margin: 0 auto;
        padding: 20px;
        justify-content: center;
        text-align: center;
    }

    .swiper-container {
        width: 100%;
        height: 80vh; /* Điều chỉnh chiều cao thành 80% chiều cao màn hình */
        overflow: hidden;
    }

    .swiper-slide img {
        width: 100%;
        height: 100%;
        object-fit: cover;
    }

    .banner-content {
        display: flex;
        justify-content: space-between;
        gap: 10px;
        margin-top: 50px;
    }

    .banner-content img {
        max-width: 300px;
        height: auto;
    }

    .category-links {
        display: flex;
        justify-content: space-between;
        gap: 5px;
        margin-top: 50px;
    }

    .category-links img {
        max-width: 650px;
        height: auto;
    }
</style>

<div class="swiper-container banner">
    <div class="swiper-wrapper">
        <?php
        // Duyệt qua từng banner và hiển thị trong swiper-slide
        while ($row = mysqli_fetch_array($query_banner_list)) {
            ?>
            <div class="swiper-slide">
                <img src="admin/modules/banner/uploads/<?php echo $row['image']; ?>" alt="banner<?php echo $row['id']; ?>" />
            </div>
            <?php
        }
        ?>

    </div>
    <!-- Navigation buttons -->
    <div class="swiper-button-next"></div>
    <div class="swiper-button-prev"></div>
</div>

<div class="container-custom">
    <div class="banner-content">
        <img src="https://paddy.vn/cdn/shop/files/icon_web-01_1880x.png?v=1692851925" alt="Icon 1">
        <img src="https://paddy.vn/cdn/shop/files/icon_web-02_1880x.png?v=1692851981" alt="Icon 2">
        <img src="https://paddy.vn/cdn/shop/files/icon_web-03_1880x.png?v=1692853446" alt="Icon 3">
        <img src="https://paddy.vn/cdn/shop/files/icon_web-04_1880x.png?v=1692853499" alt="Icon 4">
    </div>

    <div class="category-links">
        <a href="index.php?page=products&category_id=17">
            <img src="https://paddy.vn/cdn/shop/files/dog_banner_1370x.jpg?v=1670135189" alt="Dog Banner">
        </a>
        <a href="index.php?page=products&category_id=14">
            <img src="https://paddy.vn/cdn/shop/files/cat_banner_1370x.jpg?v=1670135516" alt="Cat Banner">
        </a>
    </div>
</div>

<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script>
    var swiper = new Swiper('.swiper-container', {
        loop: true,
        autoplay: {
            delay: 3000,
            disableOnInteraction: false,
        },
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },
    });
</script>
