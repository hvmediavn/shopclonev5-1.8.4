<body class="hold-transition sidebar-mini layout-fixed">
    <div class="wrapper">

        <!-- Navbar -->
        <nav class="main-header navbar navbar-expand navbar-white navbar-light">
            <!-- Left navbar links -->
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
                </li>
                <li class="nav-item d-none d-sm-inline-block">
                    <a href="<?=BASE_URL('');?>" class="nav-link">HOME</a>
                </li>
                <li class="nav-item d-none d-sm-inline-block">
                    <a href="https://www.cmsnt.co/" target="_blank" class="nav-link">LIÊN HỆ</a>
                </li>
                <li class="nav-item d-none d-sm-inline-block">
                    <a href="https://zalo.me/g/idapcx933" target="_blank" class="nav-link">HỖ TRỢ ZALO</a>
                </li>
                <li class="nav-item d-none d-sm-inline-block">
                    <a href="https://www.youtube.com/playlist?list=PLylqe6Lzq69-TzmQ6kLzTg8ZkrxJxxtZm" target="_blank" class="nav-link">HƯỚNG DẪN YOUTUBE</a>
                </li>
            </ul>
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" data-widget="fullscreen" href="#" role="button">
                        <i class="fas fa-expand-arrows-alt"></i>
                    </a>
                </li>
            </ul>
        </nav>
        <!-- /.navbar -->

        <!-- Main Sidebar Container -->
        <aside class="main-sidebar sidebar-dark-primary elevation-4">
            <!-- Brand Logo -->
            <a href="<?=BASE_URL('Admin/Home');?>" class="brand-link">
            <center><img src="https://i.imgur.com/DdqzQYA.png" alt="CMSNT.CO" width="150px"></center>
            </a>

            <!-- Sidebar -->
            <div class="sidebar">
                <!-- Sidebar user panel (optional) -->
                <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                    <div class="image">
                        <img src="<?=BASE_URL('template/');?>dist/img/user2-160x160.jpg" class="img-circle elevation-2"
                            alt="CMSNT">
                    </div>
                    <div class="info">
                        <a href="<?=BASE_URL('Admin/Home');?>" class="d-block"><?=$getUser['username'];?></a>
                    </div>
                </div>

                <!-- Sidebar Menu -->
                <nav class="mt-2">
                    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu"
                        data-accordion="false">
                        <li class="nav-item has-treeview menu-open">
                            <a href="<?=BASE_URL('Admin/Home');?>" class="nav-link active">
                                <i class="nav-icon fas fa-tachometer-alt"></i>
                                <p>
                                    Dashboard
                                </p>
                            </a>
                        </li>
                        <li class="nav-header">QUẢN LÝ</li>
                        <li class="nav-item">
                            <a href="<?=BASE_URL('Admin/Users');?>" class="nav-link">
                                <i class="nav-icon fas fa-users"></i>
                                <p>
                                    Thành viên
                                </p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<?=BASE_URL('Admin/Orders');?>" class="nav-link">
                                <i class="nav-icon fas fa-shopping-cart"></i>
                                <p>
                                    Đơn hàng
                                </p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<?=BASE_URL('Admin/Promotion');?>" class="nav-link">
                                <i class="nav-icon fas fa-percentage"></i>
                                <p>
                                    Khuyến mãi
                                </p>
                            </a>
                        </li>
                        <li class="nav-header">DANH MỤC</li>
                        <li class="nav-item">
                            <a href="<?=BASE_URL('Admin/Category');?>" class="nav-link">
                                <i class="nav-icon fas fa-folder-open"></i>
                                <p>
                                    Category
                                </p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<?=BASE_URL('Admin/Danhmuc/Add');?>" class="nav-link">
                                <i class="nav-icon fas fa-folder-plus"></i>
                                <p>
                                    Thêm sản phẩm
                                </p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<?=BASE_URL('Admin/Danhmuc/Taikhoan');?>" class="nav-link">
                                <i class="nav-icon fas fa-folder-open"></i>
                                <p>
                                    Quản lý sản phẩm
                                </p>
                            </a>
                        </li>
                        <li class="nav-header">THƯ VIỆN</li>
                        <li class="nav-item">
                            <a href="<?=BASE_URL('Admin/Storage');?>" class="nav-link">
                                <i class="nav-icon fas fa-cloud-upload-alt"></i>
                                <p>
                                    Upload backup
                                </p>
                            </a>
                        </li>
                        <li class="nav-header">NẠP TIỀN</li>
                        <li class="nav-item">
                            <a href="<?=BASE_URL('Admin/Bank');?>" class="nav-link">
                                <i class="nav-icon fas fa-university"></i>
                                <p>
                                    Ngân hàng
                                </p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<?=BASE_URL('Admin/Nap-The');?>" class="nav-link">
                                <i class="nav-icon fas fa-credit-card"></i>
                                <p>
                                    Nạp thẻ
                                </p>
                            </a>
                        </li>
                        <!--
                        <li class="nav-item">
                            <a href="<?=BASE_URL('Admin/Thesieure');?>" class="nav-link">
                                <i class="nav-icon fas fa-credit-card"></i>
                                <p>
                                    Thẻ siêu rẻ
                                </p>
                            </a>
                        </li>-->
                        <li class="nav-header">CÀI ĐẶT</li>
                        <li class="nav-item">
                            <a href="<?=BASE_URL('public/admin/tich-hop.php');?>" class="nav-link">
                                <i class="nav-icon fas fa-wifi"></i>
                                <p>
                                    Kết nối
                                </p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<?=BASE_URL('Admin/Language');?>" class="nav-link">
                                <i class="nav-icon fas fa-language"></i>
                                <p>
                                    Ngôn ngữ
                                </p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<?=BASE_URL('Admin/Setting');?>" class="nav-link">
                                <i class="nav-icon fas fa-cog"></i>
                                <p>
                                    Cấu hình
                                </p>
                            </a>
                        </li>
                    </ul>
                </nav>
                <!-- /.sidebar-menu -->
            </div>
            <!-- /.sidebar -->
        </aside>