<?php
	session_start();
	include('../../admin/config/config.php');
	//them so luong
	if(isset($_GET['sum'])){
		$status = 1;
		$product_id=$_GET['sum'];
		$sql_get_product = "SELECT * FROM product WHERE product_id = '".$product_id."' LIMIT 1";
		$query_get_product = mysqli_query($mysqli, $sql_get_product);
		$product_item = mysqli_fetch_array($query_get_product);
		$quantity = $product_item['product_quantity'];
		$size = $_POST['product_size'];
		foreach($_SESSION['cart'] as $cart_item){
			if($cart_item['product_id']!=$product_id){
				$product[]= array('product_id'=>$cart_item['product_id'], 'product_name'=>$cart_item['product_name'],'product_quantity'=>$cart_item['product_quantity'],'product_price'=>$cart_item['product_price'],'product_sale'=>$cart_item['product_sale'],'product_image'=>$cart_item['product_image'], 'size' => $size);
				$_SESSION['cart'] = $product;
			} else{
				$total_count = $cart_item['product_quantity'] + 1;
				if($cart_item['product_quantity']<$quantity){
					$product[]= array('product_id'=>$cart_item['product_id'], 'product_name'=>$cart_item['product_name'],'product_quantity'=>$total_count,'product_price'=>$cart_item['product_price'],'product_sale'=>$cart_item['product_sale'],'product_image'=>$cart_item['product_image'], 'size' => $size);
				}else{
					$product[]= array('product_id'=>$cart_item['product_id'], 'product_name'=>$cart_item['product_name'],'product_quantity'=>$cart_item['product_quantity'],'product_price'=>$cart_item['product_price'],'product_sale'=>$cart_item['product_sale'],'product_image'=>$cart_item['product_image'], 'size' => $size);
					$status = 0;
				}
				$_SESSION['cart'] = $product;
			}
		}
		if ($status == 1) {
			header('Location:../../index.php?page=cart&message=success');
		} else {
			header('Location:../../index.php?page=cart&message=error');
		}
	}
	//tru so luong
	if(isset($_GET['div'])){
		$product_id=$_GET['div'];
		foreach($_SESSION['cart'] as $cart_item){
			if($cart_item['product_id']!=$product_id){
				$product[]= array('product_id'=>$cart_item['product_id'], 'product_name'=>$cart_item['product_name'],'product_quantity'=>$cart_item['product_quantity'],'product_price'=>$cart_item['product_price'],'product_sale'=>$cart_item['product_sale'],'product_image'=>$cart_item['product_image'], 'size' => $cart_item['size']);
				$_SESSION['cart'] = $product;
			}else{
				$total_count = $cart_item['product_quantity'] - 1;
				if($cart_item['product_quantity']>1){
					$product[]= array('product_id'=>$cart_item['product_id'], 'product_name'=>$cart_item['product_name'],'product_quantity'=>$total_count,'product_price'=>$cart_item['product_price'],'product_sale'=>$cart_item['product_sale'],'product_image'=>$cart_item['product_image'], 'size' => $cart_item['size']);
				}else{
					$product[]= array('product_id'=>$cart_item['product_id'], 'product_name'=>$cart_item['product_name'],'product_quantity'=>$cart_item['product_quantity'],'product_price'=>$cart_item['product_price'],'product_sale'=>$cart_item['product_sale'],'product_image'=>$cart_item['product_image'], 'size' => $cart_item['size']);
				}
				$_SESSION['cart'] = $product;
			}
		}
		header('Location:../../index.php?page=cart&message=success');
	}
	// Xoa san pham khoi gio hang
	if(isset($_SESSION['cart']) && isset($_GET['delete'])) {
		$product_id = $_GET['delete'];
		foreach ($_SESSION['cart'] as $cart_item) {
			if ($cart_item['product_id'] != $product_id) {
				$product[]= array('product_id'=>$cart_item['product_id'], 'product_name'=>$cart_item['product_name'],'product_quantity'=>$cart_item['product_quantity'],'product_price'=>$cart_item['product_price'],'product_sale'=>$cart_item['product_sale'],'product_image'=>$cart_item['product_image'],'size' => $cart_item['size']);
			}
			if (!empty($product)) {
				$_SESSION['cart'] = $product;
			} else {
				unset($_SESSION['cart']);
			}
			header('Location:../../index.php?page=cart&message=success');
		}
	}
	// them sanpham vao gio hang
	if(isset($_POST['addtocart'])){
        // session_destroy();
		$product_id=$_GET['product_id'];
		$product_quantity=$_POST['product_quantity'];
		$sql ="SELECT * FROM product WHERE product_id='".$product_id."' LIMIT 1";
		$query = mysqli_query($mysqli,$sql);
		$row = mysqli_fetch_array($query);
		$size = $_POST['product_size'];
		if($row){
			$new_product=array(array('product_id'=>$product_id, 'product_name'=>$row['product_name'],'product_quantity'=>$product_quantity,'product_price'=>$row['product_price'], 'product_sale'=>$row['product_sale'],'product_image'=>$row['product_image'], 'size' => $size));
			
			//kiem tra session gio hang ton tai
			if(isset($_SESSION['cart'])){
				$found = false;
				foreach($_SESSION['cart'] as $cart_item){
					//neu du lieu trung
					if($cart_item['product_id']==$product_id){
						$product[]= array('product_id'=>$cart_item['product_id'], 'product_name'=>$cart_item['product_name'],'product_quantity'=>$cart_item['product_quantity']+$product_quantity,'product_price'=>$cart_item['product_price'],'product_sale'=>$row['product_sale'],'product_image'=>$cart_item['product_image'], 'size' => $size);
						$found = true;
					}else{
						//neu du lieu khong trung
						$product[]= array('product_id'=>$cart_item['product_id'], 'product_name'=>$cart_item['product_name'],'product_quantity'=>$cart_item['product_quantity'],'product_price'=>$cart_item['product_price'],'product_sale'=>$row['product_sale'],'product_image'=>$cart_item['product_image'], 'size' => $size);
					}
				}
				if($found == false){
					//lien ket du lieu new_product voi product
					$_SESSION['cart']=array_merge($product,$new_product);
				}else{
					$_SESSION['cart']=$product;
				}
			}else{
				$_SESSION['cart'] = $new_product;
			}
		}
		header('Location: ' . $_SERVER['HTTP_REFERER'] . '&message=success');
	}

	// mua ngay
	if (isset($_POST['buynow'])) {
		// session_destroy();
		$product_id = $_GET['product_id'];
		$product_quantity = $_POST['product_quantity'];
		$size = $_POST['product_size']; // Lấy size từ form
	
		// Lấy thông tin sản phẩm từ cơ sở dữ liệu
		$sql = "SELECT * FROM product WHERE product_id='" . $product_id . "' LIMIT 1";
		$query = mysqli_query($mysqli, $sql);
		$row = mysqli_fetch_array($query);
	
		if ($row) {
			$new_product = array(array(
				'product_id' => $product_id,
				'product_name' => $row['product_name'],
				'product_quantity' => $product_quantity,
				'product_price' => $row['product_price'],
				'product_sale' => $row['product_sale'],
				'product_image' => $row['product_image'],
				'size' => $size // Thêm size vào dữ liệu sản phẩm
			));
	
			// Kiểm tra giỏ hàng đã tồn tại hay chưa
			if (isset($_SESSION['cart'])) {
				$found = false;
				$product = $_SESSION['cart']; // Lấy giỏ hàng hiện tại
	
				// Duyệt qua từng sản phẩm trong giỏ để tìm xem có sản phẩm trùng ID không
				foreach ($product as &$cart_item) {
					if ($cart_item['product_id'] == $product_id && $cart_item['size'] == $size) {
						// Nếu sản phẩm có cùng ID và size, cộng thêm số lượng
						$cart_item['product_quantity'] += $product_quantity;
						$found = true;
						break;
					}
				}
	
				// Nếu sản phẩm chưa có trong giỏ, thêm sản phẩm mới vào giỏ
				if ($found == false) {
					$_SESSION['cart'] = array_merge($product, $new_product);
				} else {
					$_SESSION['cart'] = $product; // Cập nhật giỏ hàng
				}
			} else {
				// Nếu giỏ hàng chưa tồn tại, tạo mới giỏ hàng
				$_SESSION['cart'] = $new_product;
			}
		}
	
		// Chuyển hướng về trang giỏ hàng
		header('Location:../../index.php?page=cart');
	}
	
	
?>