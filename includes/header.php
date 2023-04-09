<div class="site-navbar py-2" style="background-color:#B9E9FC;">

    <div class="search-wrap">
        <div class="container">
            <a href="#" class="search-close js-search-close"><span class="icon-close2"></span></a>
            <form action="store.php" method="GET">
                <input type="text" name="search" class="form-control" placeholder="ค้นหายา...">
            </form>
        </div>
    </div>
    <div class="container">
        <div class="d-flex align-items-center justify-content-between">
            <div class="logo">
                <div class="site-logo">
                    <a href="index.php" class="js-logo-clone">Mentos Pharmacy</a>
                </div>
            </div>
            <div class="main-nav d-none d-lg-block" >
                <nav class="site-navigation text-right text-md-center" role="navigation" >
                    <ul class="site-menu js-clone-nav d-none d-lg-block ">
                        <li><a href="index.php" style="font-weight:bold">หน้าหลัก</a></li>
                        <li><a href="store.php?store=all" style="font-weight:bold; ">รายการสินค้า</a></li>
                        <li class="has-children">
                            <a href="#" style="font-weight:bold">ประเภท</a>
                            <ul class="dropdown">
                                <li><a href="store.php?cat=supplementary-food">อาหารเสริม</a></li>
                                <li><a href="store.php?cat=cosmeceutical-products ">เวชสำอาง</a></li>
                                <li><a href="store.php?cat=self-care">ดูแลสุขภาพ</a></li>

                            </ul>
                        </li>
                        <li><a href="about.php" style="font-weight:bold">เกี่ยวกับ</a></li>
                        <li><a href="admin/index.php" style="font-weight:bold">Admin</a></li>
                    </ul>
                </nav>
            </div>
            <div class="icons">
                <a href="#" class="icons-btn d-inline-block js-search-open"><span class="icon-search"></span></a>
                <a href="cart.php" class="icons-btn d-inline-block bag">
                    <span class="icon-shopping-bag"></span>
                    <?php
                    if (!empty($_SESSION['cart'])) {
                    ?>
                        <span class="number" style="color:white;font-weight:bold;background-color:red">

                            <?php echo sizeof($_SESSION['cart']); ?>

                        </span>
                    <?php
                    } else {
                    ?>
                        <span class="number">0</span>
                    <?php
                    }
                    ?>
                </a>
                <?php
                if (!isset($_SESSION['user_id'])) {
                    echo "<a href='login.php' class=' icons-btn d-inline-block '><span class='icon-sign-in'></span></a>";
                } else {
                    $check_user_id = check_user($_SESSION['user_id']);
                    if ($check_user_id == 1) {
                        echo "<a href='logout.php' class=' icons-btn d-inline-block '><span class='icon-sign-out'></span></a>";
                    } else {
                        post_redirect("logout.php");
                    }
                }
                ?>

                <a href="" class="site-menu-toggle js-menu-toggle ml-3 d-inline-block d-lg-none"><span class="icon-menu"></span></a>
            </div>
        </div>
    </div>
</div>