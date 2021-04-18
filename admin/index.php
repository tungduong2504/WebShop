<?php
	session_start();
	include "../lib/DataProvider.php";

	//Kiểm tra có người dùng có đăng nhập với quyền Admin hay chưa?
	if(!isset($_SESSION["MaLoaiTaiKhoan"]) || $_SESSION["MaLoaiTaiKhoan"] != 2)
		DataProvider::ChangeURL("../index.php");

	$c = 0;
	if(isset($_GET["c"]))
		$c = $_GET["c"];
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Trang Admin</title>
	<link rel="stylesheet" type="text/css" href="css/admin.css" />
</head>
<body>
	<div id="header">
		<a href="index.php">
			Hệ thống quản lý HaNhi Shop
		</a>
	</div>
	<div id="menu">
		<?php 
			include "modules/mMenu.php"; 
			include "modules/mLogin.php";
		?>
	</div>
	<div id="content">
		<?php
			switch ($c) {
				case 0:
					include "pages/pIndex.php";
					break;
				case 1:
					include "pages/qlTaiKhoan/pIndex.php";
					break;
				case 2:
					include "pages/qlSanPham/pIndex.php";
					break;
				case 3:
					include "pages/qlLoai/pIndex.php";
					break;
				case 4:
					include "pages/qlHang/pIndex.php";
					break;
				case 5:
					include "pages/qlDonDatHang/pIndex.php";
					break;
				default:
					include "pages/pError.php";
					break;
			}
		?>
	</div>
	<div id="footer">
		&copy; 2017 - Thiết kế TrungNguyen
	</div>
</body>
</html>