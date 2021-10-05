<?php
    require_once("../config/config.php");
    require_once("../config/function.php");

    $money = format_currency($CMSNT->get_row("SELECT * FROM `users` WHERE `username` = '".check_string($_GET['username'])."' AND `password` = '".TypePassword(check_string($_GET['password']))."'  ")['money']);
    die($money);
    