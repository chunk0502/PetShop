<?php
$sql_product_list = "SELECT * FROM product ORDER BY product_id DESC LIMIT 4";
$query_product_list = mysqli_query($mysqli, $sql_product_list);
?>

<div class="product-list">
    <h2 class="h3 " style="margin-left: 210px">Có thể bạn quan tâm</h2>

    <div class="container pd-section">

        <div class="row">
            <div class="col">
                <div class="product__title">

                </div>
            </div>
        </div>
        <div class="row">
            <?php
            while ($row = mysqli_fetch_array($query_product_list)) {
                ?>
                <div class="col" style="--w: 6; --w-md: 3">
                    <div class="product__card d-flex flex-column" >
                        <div class="product__image p-relative" >
                            <a href="index.php?page=product_detail&product_id=<?php echo $row['product_id'] ?>">
                                <img class="w-100 h-100 object-fit-cover" src="admin/modules/product/uploads/<?php echo $row['product_image'] ?>" alt="product image" />
                            </a>
                            <?php if ($row['product_sale'] > 0) { ?>
                                <span class="h6 p-absolute" style="top: 10px; left: 10px; background-color: #f69191; color: red; padding: 5px 10px; border-radius: 5px;">Giảm giá</span>
                            <?php } ?>
                        </div>
                        <div class="product__info">
                            <a href="index.php?page=product_detail&product_id=<?php echo $row['product_id'] ?>">
                                <h3 class="product__name h5"><?php echo mb_strimwidth($row['product_name'], 0, 50, "...") ?></h3>
                            </a>
                            <span class="review-star-list d-flex">
                                <?php
                                $query_evaluate_rating = mysqli_query($mysqli, "SELECT * FROM evaluate WHERE product_id='" . $row['product_id'] . "' AND evaluate_status = 1");

                                $rate1 = 0;
                                $rate2 = 0;
                                $rate3 = 0;
                                $rate4 = 0;
                                $rate5 = 0;

                                while ($evaluate_rating = mysqli_fetch_array($query_evaluate_rating)) {
                                    $rate = $evaluate_rating['evaluate_rate'];

                                    if ($rate == 1) {
                                        $rate1++;
                                    } elseif ($rate == 2) {
                                        $rate2++;
                                    } elseif ($rate == 3) {
                                        $rate3++;
                                    } elseif ($rate == 4) {
                                        $rate4++;
                                    } elseif ($rate == 5) {
                                        $rate5++;
                                    }
                                }

                                $total_rate = $rate1 + $rate2 + $rate3 + $rate4 + $rate5;
                                if ($total_rate != 0) {
                                    $rate_avg =  ($rate1 * 1 + $rate2 * 2 + $rate3 * 3 + $rate4 * 4 + $rate5 * 5) / $total_rate;
                                    $rate_avg = round($rate_avg, 1);
                                } else {
                                    $rate_avg = 0;
                                }

                                for ($i = 0; $i < 5; $i++) {
                                    if ($i < $rate_avg) {
                                        ?>
                                        <div class="rating-star"></div>
                                        <?php
                                    } else {
                                        ?>
                                        <div class="rating-star rating-off"></div>
                                        <?php
                                    }
                                }
                                ?>

                                <span>(<?php echo $total_rate ?>)</span>
                            </span>
                            <a href="index.php?page=product_detail&product_id=<?php echo $row['product_id'] ?>">
                                <div class="product__price align-center">
                                    <?php
                                    if ($row['product_sale'] > 0) {
                                        ?>
                                        <del class="product__price--old h5"><?php echo number_format($row['product_price']) . ' ₫' ?></del>
                                        <?php
                                    }
                                    ?>
                                    <span class="product__price--new h4"><?php echo (number_format($row['product_price'] - ($row['product_price'] / 100 * $row['product_sale'])) . ' ₫') ?></span>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
                <?php
            }
            ?>
        </div>
    </div>
</div>