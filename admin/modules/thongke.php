<?php
require '../../carbon/autoload.php';
include('../config/config.php');
use Carbon\Carbon;
session_start();

// Kiểm tra nếu người dùng chọn ngày cụ thể
if (isset($_POST['date'])) {
    $date = $_POST['date']; // Lấy giá trị ngày từ frontend
    $startDate = Carbon::createFromFormat('Y-m-d', $date)->startOfDay()->toDateString();
    $endDate = Carbon::createFromFormat('Y-m-d', $date)->endOfDay()->toDateString();

    // Truy vấn dữ liệu theo ngày
    $sql = "SELECT * FROM metrics WHERE metric_date BETWEEN '$startDate' AND '$endDate' ORDER BY metric_date ASC";
} else {
    // Nếu không chọn ngày, trả về thông báo lỗi hoặc xử lý mặc định
    echo json_encode(['error' => 'No date selected']);
    exit();
}

// Thực thi truy vấn
$sql_query = mysqli_query($mysqli, $sql);

// Chuẩn bị dữ liệu trả về
$chart_data = [];
while ($val = mysqli_fetch_array($sql_query)) {
    $chart_data[] = array(
        'date' => $val['metric_date'],
        'order' => $val['metric_order'],
        'sales' => $val['metric_sales'],
        'quantity' => $val['metric_quantity']
    );
}

// Trả về dữ liệu dưới dạng JSON
echo json_encode($chart_data);
?>
