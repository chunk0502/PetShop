<div class="row">
    <div class="col">
        <div class="header__list d-flex space-between align-center">
            <h4 class="card-title" style="margin: 0;">Thống kê đơn hàng</h4>
            <div class="action_group">
                <a href="" id="btnExport" class="button button-dark">Export</a>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-lg-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <div class="main-pane-top d-flex space-between align-center" style="padding-inline: 10px;">
                <div class="option-date d-flex space-between">
                    <!-- Input chọn ngày tháng năm -->
                    <input type="date" id="select-date" class="select-date-tk" />
                </div>
                    <h4 class="card-title" style="margin: 0;">Thống kê đơn hàng theo <span id="text-date"></span></h4>
                </div>
                <div class="metrics d-flex space-between">
                    <div class="metric__item">Doanh thu: <span class="metric__sales"></span> </div>
                    <div class="metric__item">Số đơn hàng: <span class="metric__order"></span> </div>
                    <div class="metric__item">Số lượng bán: <span class="metric__quantity"></span> </div>
                </div>
                <div id="linechart" style="height: 350px;" class="w-100"></div>
            </div>
        </div>
    </div>
</div>

<script>
    $(document).ready(function () {
        // Khởi tạo biểu đồ Morris Line
        var char = new Morris.Line({
            element: 'linechart',
            xkey: 'date',
            ykeys: ['order', 'sales', 'quantity'],
            labels: ['Đơn hàng', 'Doanh thu', 'Số lượng']
        });

        // Tự động thống kê tháng hiện tại khi trang được tải
        thongke();

        // Xử lý khi người dùng chọn tháng
        $('#select-date').change(function () {
            var thang = $(this).val();
            var text = thang ? 'Tháng ' + thang : 'Chưa chọn';
            $('#text-date').text(text);

            // Gọi hàm để load dữ liệu
            loadData(thang);
        });

        // Hàm thống kê mặc định (ngày hiện tại)
        function thongke() {
            var today = new Date().toISOString().split('T')[0]; // Lấy ngày hiện tại (YYYY-MM-DD)
            $('#select-date').val(today); // Đặt ngày hiện tại vào input
            loadData(today); // Gọi AJAX để tải dữ liệu
        }

        // Hàm gọi AJAX để load dữ liệu
        function loadData(date) {
            $.ajax({
                url: "modules/thongke.php",
                method: "POST",
                dataType: "JSON",
                data: { date: date },
                success: function (data) {
                    // Hiển thị dữ liệu trên biểu đồ
                    char.setData(data);

                    // Tính toán tổng
                    var totalOrder = 0;
                    var totalSales = 0;
                    var totalQuantity = 0;
                    for (var i = 0; i < data.length; i++) {
                        totalOrder += parseInt(data[i].order);
                        totalSales += parseInt(data[i].sales);
                        totalQuantity += parseInt(data[i].quantity);
                    }

                    // Định dạng số tiền
                    var formattedAmount = totalSales.toLocaleString('vi-VN', {
                        style: 'currency',
                        currency: 'VND'
                    });

                    // Cập nhật số liệu
                    $('.metric__order').text(totalOrder);
                    $('.metric__sales').text(formattedAmount);
                    $('.metric__quantity').text(totalQuantity);
                },
                error: function () {
                    console.error("Lỗi khi lấy dữ liệu cho ngày " + date);
                }
            });
        }

        // Gắn liên kết Export theo tháng
        var selectDate = document.querySelector(".select-date-tk");
        var btnExport = document.getElementById("btnExport");
        selectDate.addEventListener("change", function () {
            var date = selectDate.value;
            btnExport.href = "modules/export.php?date=" + date;
        });
    });
</script>


