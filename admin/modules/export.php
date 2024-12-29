<?php
    include('../config/config.php');
    require '../../carbon/autoload.php';
    require("../../vendor/autoload.php");

    use Carbon\Carbon;
    use PhpOffice\PhpSpreadsheet\Spreadsheet;
    use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

    // Lấy giá trị ngày từ GET
    $date = isset($_GET['date']) ? $_GET['date'] : null;

    // Kiểm tra nếu ngày không hợp lệ
    if (!$date || !Carbon::hasFormat($date, 'Y-m-d')) {
        die("Ngày không hợp lệ");
    }

    // Xây dựng khoảng thời gian bắt đầu và kết thúc cho ngày đã chọn
    $startDate = Carbon::createFromFormat('Y-m-d', $date)->startOfDay()->toDateString();
    $endDate = Carbon::createFromFormat('Y-m-d', $date)->endOfDay()->toDateString();

    // Tạo đối tượng Spreadsheet
    $spreadsheet = new Spreadsheet();
    $sheet = $spreadsheet->getActiveSheet();

    // Cài đặt tiêu đề cho các cột
    $sheet->setCellValue('A1', 'Ngày');
    $sheet->setCellValue('B1', 'Số đơn');
    $sheet->setCellValue('C1', 'Số lượng');
    $sheet->setCellValue('D1', 'Doanh thu');

    // Truy vấn dữ liệu từ cơ sở dữ liệu
    $sql = "SELECT * FROM metrics WHERE metric_date BETWEEN '$startDate' AND '$endDate' ORDER BY metric_date ASC";
    $sql_query = mysqli_query($mysqli, $sql);

    $rowIndex = 2; // Bắt đầu ghi dữ liệu từ dòng 2
    if (mysqli_num_rows($sql_query) > 0) {
        while ($row = mysqli_fetch_array($sql_query)) {
            $sheet->setCellValue('A' . $rowIndex, $row['metric_date']);
            $sheet->setCellValue('B' . $rowIndex, $row['metric_order']);
            $sheet->setCellValue('C' . $rowIndex, $row['metric_quantity']);
            $sheet->setCellValue('D' . $rowIndex, $row['metric_sales']);
            $rowIndex++;
        }
    } else {
        // Trường hợp không có dữ liệu
        $sheet->setCellValue('A2', 'No records found...');
    }

    // Lưu file Excel
    $writer = new Xlsx($spreadsheet);
    $fileName = 'thongke_' . $date . '.xlsx';
    $writer->save($fileName);

    // Đặt header để tải file xuống
    header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
    header('Content-Disposition: attachment;filename="' . $fileName . '"');
    header('Cache-Control: max-age=0');

    // Đọc dữ liệu từ file và ghi vào output buffer
    $writer->save('php://output');

    // Xóa file tạm sau khi tải xuống (nếu cần)
    unlink($fileName);
?>
