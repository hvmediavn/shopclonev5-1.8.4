<?php
    require_once(__DIR__."/config/config.php");
    require_once(__DIR__."/config/function.php");

    
    // INSERT LANG
    insert_lang(155, 'SẮP XẾP DẠNG LIST', 'LIST');
    insert_lang(154, 'SẮP XẾP DẠNG BOX', 'BOX');
    insert_lang(153, 'THAO TÁC', 'ACTION');
    insert_lang(152, 'Tích Hợp API', 'API Documents');
    insert_lang(151, 'HOA HỒNG BẠN NHẬN ĐƯỢC', 'PROFITS YOU GET');
    insert_lang(150, 'THỜI GIAN THAM GIA', 'CREATEDATE');
    insert_lang(149, 'TÊN ĐĂNG NHẬP', 'USERNAME');

    // INSERT OPTIONS
    insert_options('status_zalopay', 'ON');
    insert_options('token_zalopay', '');
    insert_options('sdt_zalopay', '');
    insert_options('name_zalopay', '');

    insert_options('api_domain', '');
    insert_options('api_username', '');
    insert_options('api_password', '');
    insert_options('api_ck', 0);
    insert_options('api_status', 'OFF');

    insert_options('momo_note', 'Vui lòng nhập đúng nội dung');
    insert_options('zalopay_note', 'Vui lòng nhập đúng nội dung');
    insert_options('license_key', '');
    insert_options('license_status', '');
    insert_options('license_productname', '');
    insert_options('license_nextduedate', '');
    insert_options('license_registeredname', '');

    // INSERT DATABASE CHO BẢN CẬP NHẬT
    $CMSNT->query("ALTER TABLE `category` ADD `stt` int(11) NULL DEFAULT '0' AFTER `id` ");
    $CMSNT->query("ALTER TABLE `dichvu` ADD `check_live` VARCHAR(255) NULL DEFAULT 'OFF' AFTER `stt` ");
    $CMSNT->query("ALTER TABLE `users` ADD `device` VARCHAR(255) NULL DEFAULT NULL AFTER `ip` ");
    $CMSNT->query("ALTER TABLE `users` ADD `UserAgent` VARCHAR(255) NULL DEFAULT NULL AFTER `ip` ");
    $CMSNT->query("ALTER TABLE `dichvu` ADD `luuy` LONGBLOB NULL DEFAULT NULL AFTER `mua_toi_thieu`");
    $CMSNT->query("ALTER TABLE `dichvu` ADD `stt` int(11) COLLATE utf8_vietnamese_ci NOT NULL AFTER `luuy`");
    $CMSNT->query("ALTER TABLE `bank_auto` CHANGE `tid` `tid` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NULL DEFAULT NULL");
    $CMSNT->query("ALTER TABLE `taikhoan` CHANGE `thoigianmua` `thoigianmua` DATETIME NULL DEFAULT NULL   ");
    $CMSNT->query("ALTER TABLE `users` ADD `ref_money` INT(11) NULL DEFAULT '0' AFTER `ref`");
    $CMSNT->query("ALTER TABLE `users` ADD `time_session` INT(11) NULL DEFAULT '0' ");
    $CMSNT->query("ALTER TABLE `users` ADD `reason_banned` TEXT NULL AFTER `banned` ");
    $CMSNT->query("ALTER TABLE `users` ADD `debit_amount` INT(11) NULL DEFAULT '0' AFTER `money` ");

    $CMSNT->query("CREATE TABLE `zalo_pay` ( `id` INT(11) NOT NULL AUTO_INCREMENT , 
    `username` VARCHAR(255) NULL , 
    `transid` VARCHAR(255) NULL , 
    `description` TEXT NULL , 
    `amount` INT(11) NOT NULL DEFAULT '0' , 
    `time` DATETIME NOT NULL , 
    PRIMARY KEY (`id`))  ");

    $CMSNT->query("CREATE TABLE `hide_product_api` ( `id` INT(11) NOT NULL AUTO_INCREMENT , 
    `domain` VARCHAR(255) NULL , 
    `product_id` INT(11) NOT NULL DEFAULT '0' ,
    `time` DATETIME NOT NULL , 
    PRIMARY KEY (`id`))  ");

    $CMSNT->query("CREATE TABLE `api_domains` ( `id` INT(11) NOT NULL AUTO_INCREMENT , 
    `domain` VARCHAR(255) NULL , 
    `username` VARCHAR(255) NULL ,
    `password` VARCHAR(255) NULL , 
    `time` DATETIME NOT NULL , 
    PRIMARY KEY (`id`))  ");

    // tạo bảng khuyến mãi
    $CMSNT->query("CREATE TABLE `promotion` ( `id` INT(11) NOT NULL AUTO_INCREMENT , 
    `min` INT(11) NOT NULL DEFAULT '0' , 
    `bonus` FLOAT NOT NULL DEFAULT '0' , 
    `createdate` DATETIME NOT NULL , 
    PRIMARY KEY (`id`))");

    die('Success!');