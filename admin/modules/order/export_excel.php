<?php
include('../../config/config.php');
require("../../../vendor/autoload.php");

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

// Tạo một đối tượng Spreadsheet mới
$spreadsheet = new Spreadsheet();
$sheet = $spreadsheet->getActiveSheet();

// Cài đặt tiêu đề cho các cột
$sheet->setCellValue('A1', 'Mã đơn hàng');
$sheet->setCellValue('B1', 'Mã đặt hàng');
$sheet->setCellValue('C1', 'Ngày đặt hàng');
$sheet->setCellValue('D1', 'Mã tài khoản');
$sheet->setCellValue('E1', 'Mã giao hàng');
$sheet->setCellValue('F1', 'Tổng số tiền');
$sheet->setCellValue('G1', 'Phương thức thanh toán');
$sheet->setCellValue('H1', 'Tình trạng đơn hàng');
$sheet->setCellValue('I1', 'Tên chi nhánh');

// Fetch records from database (truy vấn bảng orders)
$query_order = mysqli_query($mysqli, "SELECT * FROM orders ORDER BY order_id ASC");
$rowIndex = 2;

// Kiểm tra nếu có dữ liệu
if (mysqli_num_rows($query_order) > 0) {
    // Lặp qua từng dòng dữ liệu và ghi vào file Excel
    while ($row = mysqli_fetch_array($query_order)) {
        // Xác định phương thức thanh toán
        $paymentMethod = ($row['order_type'] == 1) ? 'COD' : (($row['order_type'] == 2) ? 'ATM' : 'Khác');
        
        // Xác định tình trạng đơn hàng
        switch ($row['order_status']) {
            case 0:
                $orderStatus = 'Đang xử lý';
                break;
            case 1:
                $orderStatus = 'Đang chuẩn bị hàng';
                break;
            case 2:
                $orderStatus = 'Đang giao hàng';
                break;
            case 3:
                $orderStatus = 'Đã hoàn thành';
                break;
            case -1:
                $orderStatus = 'Đã hủy';
                break;
            default:
                $orderStatus = 'Không xác định';
        }

        // Ghi dữ liệu vào Excel
        $sheet->setCellValue('A' . $rowIndex, $row['order_id']);
        $sheet->setCellValue('B' . $rowIndex, $row['order_code']);
        $sheet->setCellValue('C' . $rowIndex, $row['order_date']);
        $sheet->setCellValue('D' . $rowIndex, $row['account_id']);
        $sheet->setCellValue('E' . $rowIndex, $row['delivery_id']);
        $sheet->setCellValue('F' . $rowIndex, $row['total_amount']);
        $sheet->setCellValue('G' . $rowIndex, $paymentMethod); // Ghi phương thức thanh toán
        $sheet->setCellValue('H' . $rowIndex, $orderStatus);   // Ghi tình trạng đơn hàng
        $sheet->setCellValue('I' . $rowIndex, $row['agency_name']);
        $rowIndex++;
    }
} else {
    $sheet->setCellValue('A' . $rowIndex, 'No records found...');
}

// Lưu file Excel
$writer = new Xlsx($spreadsheet);
$fileName = 'order-data_' . date('Y-m-d') . '.xlsx';
$writer->save($fileName);

// Đặt header cho việc tải xuống file
header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
header('Content-Disposition: attachment;filename="' . $fileName . '"');
header('Cache-Control: max-age=0');
header('index.php?action=product&query=product_list&message=success');

// Đọc dữ liệu từ file và ghi vào output buffer
$writer->save('php://output');
?>
