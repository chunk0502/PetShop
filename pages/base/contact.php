<?php
if (isset($_POST['customer_add'])) {
    $customer_name = $_POST['customer_name'];
    $customer_phone = $_POST['customer_phone'];
    $customer_email = $_POST['customer_email'];
    $customer_address = $_POST['customer_address'];

    $sql_insert_customer = "INSERT INTO customer(customer_name, customer_email, customer_phone, customer_address)
        VALUE('" . $customer_name . "','" . $customer_email . "','" . $customer_phone . "','" . $customer_address . "')";
    $query_insert_customer = mysqli_query($mysqli, $sql_insert_customer);
}
?>
<!-- start contact -->
<style>
    .contact__heading {
        font-size: 36px;
        font-weight: bold;
        color: #FFD700;
        /* Màu vàng */
    }

    .contact__title {
        font-size: 24px;
        font-weight: bold;
        color: #333;
        /* Màu chữ đậm */
        margin-top: 20px;
    }

    .contact__infomation {
        margin-top: 10px;
    }

    .contact__infomation p {
        color: #555;
        /* Màu chữ */
        font-size: 18px;
        margin-bottom: 5px;
    }

    .contact__input,
    .contact__textarea {
        margin-top: 20px;
    }

    .contact__input input,
    .contact__textarea textarea {
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc;
        /* Đường viền */
        border-radius: 5px;
        outline: none;
    }

    .contact__input input:focus,
    .contact__textarea textarea:focus {
        border-color: #FFD700;
        /* Đổi màu đường viền khi focus */
    }

    .contact__btn {
        background-color: #FFD700;
        /* Màu nút */
        color: #fff;
        /* Màu chữ nút */
        border: none;
        padding: 10px 20px;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease;
        /* Hiệu ứng chuyển đổi màu nền */
    }

    .contact__btn:hover {
        background-color: #FFC107;
        /* Màu nền khi di chuột qua */
    }
</style>
<section class="contact pd-top" style="margin: 0px 20px;">
    <div>
        <div class="container">
        <h1 class="about__heading h2" style="margin-top: 10px; font-weight: bold; color:#b09900;text-align: center;">
    LIÊN HỆ
</h1>
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3295.6377844544804!2d106.64776414236927!3d10.796302905951777!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3175294bd2139ecf%3A0x6c6569f2c036d7be!2zMzIgVHLGsMahbmcgSG_DoG5nIFRoYW5oLCBQaMaw4budbmcgMTIsIFTDom4gQsOsbmgsIEjhu5MgQ2jDrSBNaW5oIDcwMDAwLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1733366297953!5m2!1svi!2s" width="1100" height="400" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            <!-- Thời gian làm việc và thông tin liên hệ -->
            <div class="contact__infomation-container" style="display: flex; justify-content: space-between; align-items: flex-start;">
                <div class="contact__working-hours" style="flex: 1; padding-right: 20px;">
                    <h3 class="contact__title h4">Thời gian làm việc</h3>
                    <p>Thứ 2 – Thứ 6: 09:30 am – 23:30pm</p>
                    <p>Thứ 7: 12:00am – 19:00pm</p>
                    <p>Chủ nhật: 13:00am – 20:00pm</p>
                </div>
                <div class="contact__phone-branch" style="flex: 1; text-align: left;">
                    <h3 class="contact__title h4">Thông tin liên hệ</h3>
                    <p>Số điện thoại: <strong>0765659128</strong></p>
                    <p>Chi nhánh: <strong>Hồ Chí Minh, Hà Nội</strong></p>
                </div>
            </div>

            <div class="contact__form pd-section">
                <form action="" method="POST">
                    <div class="row contact__input--double">
                        <div class="col" style="--w-lg: 6; padding: 5px;">
                            <div class="contact__input">
                                <input class="w-100 btn" type="text" name="customer_name" placeholder="Tên khách hàng" style="padding: 8px; font-size: 14px;"/>
                            </div>
                        </div>
                        <div class="col" style="--w-lg: 6; padding: 5px;">
                            <div class="contact__input">
                                <input class="w-100 btn" type="email" name="customer_email" placeholder="Email" style="padding: 8px; font-size: 14px;"/>
                            </div>
                        </div>
                        <div class="col" style="--w-lg: 12; padding: 5px;">
                            <div class="contact__input">
                                <input class="w-100 btn" type="text" name="customer_phone" placeholder="Số điện thoại" style="padding: 8px; font-size: 14px;"/>
                            </div>
                        </div>
                        <div class="col" style="--w-lg: 12; padding: 5px;">
                            <div class="contact__textarea w-100 h-100">
                                <textarea class="w-100 h-100 btn" name="customer_address" id="" cols="30" rows="5" placeholder="Địa chỉ" style="padding: 8px; font-size: 14px;"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <button class="btn contact__btn" name="customer_add" type="submit" style="padding: 10px 20px; font-size: 14px;">
                                Gửi
                            </button>
                        </div>
                    </div>
                </form>
            </div>

            
</section>

<!-- end contact -->
