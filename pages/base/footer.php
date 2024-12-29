<footer class="footer" style="background-color: #ffffff; margin-bottom: 0px; font-size: 18px; font-weight: bold;">
    <div class="footer__container" style="; margin-bottom: 0px;">
        <div class="container">
            <div class="row">
                <!-- Cột 1: Thông tin -->
                <div class="col" style="--w-md: 4">
                    <div class="footer__block pd-top">
                        <div class="block__heading" style="font-weight: bold;">
                            THÔNG TIN
                        </div>
                        <div>
                            <a href="index.php?page=products&brand_id=10" style="font-weight: normal; text-decoration: none; color: black; display: block; margin-bottom: 10px;">Thương Hiệu</a>
                            <a href="index.php?page=blog" style="font-weight: normal; text-decoration: none; color: black; display: block; margin-bottom: 10px;">New</a>
                            <a href="index.php?page=contact" style="font-weight: normal; text-decoration: none; color: black; display: block; margin-bottom: 10px;">Liên Hệ</a>
                            <a href="index.php?page=about" style="font-weight: normal; text-decoration: none; color: black; display: block;">Giới Thiệu</a>
                        </div>
                    </div>
                </div>

                <!-- Cột 2: Kết nối với chúng tôi -->
                <div class="col" style="--w-md: 4">
                    <div class="footer__block pd-top">
                        <div class="block__heading" style="font-weight: bold;">
                            KẾT NỐI VỚI CHÚNG TÔI
                        </div>
                        <div class="col pd-top d-flex align-center" style="--w-md:4;">
                            <ul class="social__items d-flex align-center">
                                <li class="social__item" style="margin-bottom: 10px;">
                                    <a href="https://www.facebook.com/share/18KwVMcRZy/?mibextid=LQQJ4d" target="_blank">
                                        <img class="svg__icon d-block" src="./assets/images/icon/facebook.svg" alt="Facebook" />
                                    </a>
                                </li>
                                <li class="social__item" style="margin-bottom: 10px;">
                                    <a href="https://www.instagram.com/tyra24538/profilecard/?igsh=MXdxbjhoYmlpZHkwaA==" target="_blank">
                                        <img class="svg__icon d-block" src="./assets/images/icon/instagram.svg" alt="Instagram" />
                                    </a>
                                </li>
                                <li class="social__item" style="margin-bottom: 10px;">
                                    <a href="https://www.tiktok.com/@tyra24538?_t=8rxLOEXoxaj&_r=1" target="_blank">
                                        <img class="svg__icon d-block" src="./assets/images/icon/tiktok.svg" alt="TikTok" />
                                    </a>
                                </li>
                                <li class="social__item" style="margin-bottom: 10px;">
                                    <a href="https://www.youtube.com/channel/UCaIQtXVLu--iFcObCPLe4Qw" target="_blank">
                                        <img class="svg__icon d-block" src="./assets/images/icon/youtube.svg" alt="YouTube" />
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>

                <!-- Cột 3: Logo và thông tin liên hệ -->
                <div class="col" style="--w-md: 4">
                    <div class="footer__block pd-top">
                        <div class="footer__logo" style="font-size: 40px; font-weight: bold; text-align: center;">TYRA</div>
                    </div>
                    <div id="service">
                        <div style="font-weight: normal; margin-bottom: 20px;">Địa chỉ: 32/24 Trương Hoàng Thanh, Phường 12, Tân Bình</div>
                        <div style="font-weight: normal; margin-bottom: 20px;">Hotline: 0765659128</div>
                        <div style="font-weight: normal;">Email: thaonguyen24538@gmail.com</div>
                    </div>
                </div>
            </div>
        </div>

        <div class="footer__bottom">
            <div class="container">
                <div class="row">
                    <div class="col text-center">
                        <p class="footer__copy--right">Copyright © 2024 ThaoTyra. All rights reserved.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>



<!-- Nút Chat -->

</div>
<?php if (isset($_SESSION['account_email'])) { ?>
    
    <input type="hidden" id="account_name" value="GUEST<?php if (isset($_SESSION['account_name'])) { echo $_SESSION['account_name']; } ?>">
    <div id="chat-button" style="position: fixed; bottom: 20px; right: 20px; background-color: #007bff; color: #fff; border-radius: 50%; width: 60px; height: 60px; display: flex; justify-content: center; align-items: center; box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); cursor: pointer; z-index: 1000;">
        <span style="font-size: 24px; font-weight: bold;">💬</span>
    </div>
<?php } else { ?>
<?php } ?>
<!-- Khung Chat -->
<style>
    #chat-box {
        position: fixed;
        bottom: 90px;
        right: 20px;
        width: 400px;
        background-color: #fff;
        border: 1px solid #ccc;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        border-radius: 10px;
        display: none;
        z-index: 1000;
    }

    #chatAdmin {
        padding: 10px;
        background-color: #007bff;
        color: #fff;
        border-radius: 10px 10px 0 0;
    }
</style>
<div id="chat-box">
    <div id="chatAdmin">
        <span style="font-size: 16px;">Chat với Admin</span>
        <span id="close-chat" style="float: right; cursor: pointer; font-size: 18px;">&times;</span>
    </div>
    <div style="padding: 10px; max-height: 200px; overflow-y: auto;" id="chat-messages">
        <!-- Tin nhắn chat sẽ hiển thị ở đây -->
        <p>Chào bạn! Hãy để lại tin nhắn cho admin.</p>
    </div>
    <div style="padding: 10px; border-top: 1px solid #ccc;">
        <input type="text" id="chat-input" placeholder="Nhập tin nhắn..." style="width: calc(100% - 50px); padding: 5px; border: 1px solid #ccc; border-radius: 5px;" />
        <button id="send-chat" style="width: 40px; background-color: #007bff; color: #fff; border: none;padding: 5px; border-radius: 5px; cursor: pointer;">➤</button>
    </div>
</div>

<script>
    document.getElementById('chat-button').addEventListener('click', function() {
        const chatBox = document.getElementById('chat-box');
        if (chatBox.style.display === 'block') {
            chatBox.style.display = 'none'; // Đóng khung chat
        } else {
            chatBox.style.display = 'block'; // Mở khung chat
            loadMessages(); // Gọi hàm load tin nhắn
        }
    });
    document.getElementById('close-chat').addEventListener('click', function() {
        console.log('Close chat clicked');
        const chatBox = document.getElementById('chat-box');
        chatBox.style.display = 'none';
    });


    // Gọi hàm loadMessages định kỳ để cập nhật tin nhắn mới
    setInterval(loadMessages, 5000);


    // Xử lý gửi tin nhắn
    document.getElementById('send-chat').addEventListener('click', function() {
        const chatInput = document.getElementById('chat-input');
        const chatInputAccountName = document.getElementById('account_name');
        const chatMessages = document.getElementById('chat-messages');

        if (chatInput.value.trim() !== '') {
            // Hiển thị tin nhắn vừa nhập
            const message = document.createElement('p');
            message.style.textAlign = 'right';
            message.textContent = chatInput.value;
            chatMessages.appendChild(message);

            // Gửi tin nhắn qua AJAX đến save_message.php
            const xhr = new XMLHttpRequest();
            xhr.open('POST', 'pages/base/save_message.php', true); // Đường dẫn đã chỉnh sửa
            xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');

            xhr.onreadystatechange = function() {
                if (xhr.readyState === 4 && xhr.status === 200) {
                    // Xử lý phản hồi (nếu cần)
                    console.log(xhr.responseText);
                }
            };

            // Gửi dữ liệu tới server
            const data = `message=${encodeURIComponent(chatInput.value)}&user_name=${encodeURIComponent(chatInputAccountName.value)}`; // Chỉnh sửa thêm nếu cần user đăng nhập
            xhr.send(data);

            // Xóa tin nhắn trong ô input sau khi gửi
            chatInput.value = '';
            chatMessages.scrollTop = chatMessages.scrollHeight;
        }
    });
    // Hàm load tin nhắn từ server
    function loadMessages() {
        const chatMessages = document.getElementById('chat-messages');

        // Gửi yêu cầu GET để lấy danh sách tin nhắn
        const xhr = new XMLHttpRequest();
        xhr.open('GET', 'pages/base/save_message.php', true); // Đường dẫn tới file PHP xử lý
        xhr.onreadystatechange = function() {
            if (xhr.readyState === 4 && xhr.status === 200) {
                try {
                    const messages = JSON.parse(xhr.responseText); // Chuyển đổi JSON thành mảng

                    // Xóa nội dung cũ trước khi hiển thị tin nhắn mới
                    chatMessages.innerHTML = '';

                    // Duyệt qua danh sách tin nhắn và hiển thị
                    messages.forEach(msg => {
                        // Hiển thị tin nhắn của user
                        const userMessage = document.createElement('p');
                        userMessage.style.textAlign = 'right'; // Tin nhắn người dùng căn phải
                        // userMessage.textContent = `${msg.user_name}: ${msg.message}`;
                        userMessage.textContent = `${msg.message}`;
                        userMessage.style.color = 'Green';
                        chatMessages.appendChild(userMessage);
                        // Nếu có phản hồi, hiển thị
                        if (msg.reply) {
                            const replyMessage = document.createElement('p');
                            replyMessage.style.textAlign = 'left'; // Tin nhắn phản hồi căn trái
                            replyMessage.textContent = `Admin: ${msg.reply}`;
                            replyMessage.style.color = 'blue'; // Có thể tùy chỉnh style
                            chatMessages.appendChild(replyMessage);
                        }
                    });

                    // Cuộn xuống cuối khung chat
                    chatMessages.scrollTop = chatMessages.scrollHeight;

                } catch (e) {
                    console.error('Error parsing JSON: ', e);
                }
            }
        };
        xhr.send();
    }
</script>