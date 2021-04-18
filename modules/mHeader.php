





<div id="header">
	<a href="index.php">
    	<img src="img/2.gif" width="400" height="100">
    </a>
    <div id="login_nav">
        <?php
            if(isset($_SESSION["MaTaiKhoan"]))
            {
                //Đã đăng nhập
                ?>
                    Hello, <?php echo $_SESSION["TenHienThi"]; ?>
                    <a href="modules/xlDangXuat.php">Đăng xuất</a><br>
                    <a href="index.php?a=5">
                        <img src="img/manage_shopping.png" height="80" />
                    </a>
                <?php
            }
            else
            {
                //Chưa đăng nhập
                ?>
                    <form name="frmLogin" action="modules/xlDangNhap.php" method="post" onsubmit="return KiemTraDangNhap()">
                        Tài khoản: <input name="txtUS" type="text" id="txtUS" size="12" maxlength="20" width="15">
                        Mật khẩu: <input name="txtPS" type="password" id="txtPS" size="12" maxlength="20" width="15">
                        <input type="submit" value="Đăng nhập">
                        <input type="button" value="Đăng ký" onclick="ChuyenTrangDangKy()" />
                    </form>
                    <script type="text/javascript">
                        function ChuyenTrangDangKy () {
                            location = "index.php?a=6";
                        }
                    </script>
                <?php
            }
        ?>        
    </div>
    <!-- <img src="img/logo111.jpg" width="1200" height="220px">
    <img src="img/header_2.png" width="1200"> -->
    <div class="banner-mat">
        <div class="container">
            <div class="banner">
    
                <!-- Slideshow 4 -->
               <div class="slider">
                    <ul class="rslides" id="slider1">
                        <li><img src="taogiaodien/images/1.jpg" alt="">
                        </li>
                        <li><img src="taogiaodien/images/2.jpg" alt="">
                        </li>
                        <li><img src="taogiaodien/images/3.jpg" alt="">
                        </li>
                        <li><img src="taogiaodien/images/4.jpg" alt="">
                        </li>
                    </ul>
                </div>

                <div class="banner-bottom">
                    <!-- <div class="banner-matter">
                        <p>Childish Gambino - Camp Now Available for just $9.99</p> 
                        <a href="single.html" class="hvr-shutter-in-vertical ">Purchase</a>
                    </div>
                    <div class="purchase">
                        <a href="single.html" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2 ">Purchase</a>
                    </div> -->
                    <div class="clearfix"></div>
                </div>
            </div>              
            <!-- //slider-->
        </div>
    </div>
</div>