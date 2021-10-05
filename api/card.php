<?php
    require_once("../config/config.php");
    require_once("../config/function.php");

    if(isset($_GET['status']) && isset($_GET['request_id'])) {
        $status = $_GET['status'];
        $request_id = $_GET['request_id'];

        $telco = $_GET['telco']; // NHÀ MẠNG
        $pin = $_GET['pin']; // MÃ THẺ
        $serial = $_GET['serial']; // SERIAL
        $amount = intval($_GET['amount']); // MỆNH GIÁ GỬI
        $amount_real = intval($_GET['amount_real']); // MỆNH GIÁ THỰC
        $thucnhan = intval($_GET['amount_recieve']); // SỐ TIỀN NHẬN ĐƯỢC

        $row = $CMSNT->get_row(" SELECT * FROM `cards` WHERE `code` = '$request_id' AND `status` = 'xuly' ");
        if($status == 'success') {
            /* CẬP NHẬT TRẠNG THÁI THẺ CÀO */
            $CMSNT->update("cards", array(
                'status'    => 'thanhcong',
                'thucnhan'  => $thucnhan
            ), " `id` = '".$row['id']."' ");

            $row_user = $CMSNT->get_row(" SELECT * FROM `users` WHERE `username` = '".$row['username']."' ");

            /* CỘNG TIỀN USER */
            $CMSNT->cong("users", "money", $thucnhan, " `id` = '".$row_user['id']."' ");
            $CMSNT->cong("users", "total_money", $thucnhan, " `id` = '".$row_user['id']."' ");
            /* GHI LOG DÒNG TIỀN */
            $CMSNT->insert("dongtien", array(
                'sotientruoc'   => $row_user['money'],
                'sotienthaydoi' => $thucnhan,
                'sotiensau'     => $row_user['money'] + $thucnhan,
                'thoigian'      => gettime(),
                'noidung'       => 'Nạp tiền tự động qua thẻ cào seri ('.$row['seri'].')',
                'username'      => $row_user['username']
            ));
        } else {
            // Thẻ sai
            /* CẬP NHẬT TRẠNG THÁI THẺ CÀO */
            $CMSNT->update("cards", array(
                'status'    => 'thatbai',
                'thucnhan'  => '0'
            ), " `id` = '".$row['id']."' ");
        }
    }