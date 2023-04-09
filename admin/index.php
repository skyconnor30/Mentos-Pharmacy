<?php
include "includes/head.php";
?>

<head>
    <link href="https://fonts.googleapis.com/css2?family=Kanit&display=swap" rel="stylesheet">
    <style>
      body{
        font-family: 'Kanit', sans-serif;
      }
    </style>
    </head>
<body>

  <?php
  include "includes/header.php";
  ?>

  <div class=" container-fluid">

    <?php
    include "includes/sidebar.php";
    ?>

    <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
      <br>
      <div class="row">
        <div class="card" style="width: 25rem;margin-bottom: 20px ;margin-right: 200px ;">
          <a href="orders.php">
            <img class="card-img-top" src="../images/shopping-cart.svg" alt="Card image cap" style="width: 5rem;margin-top: 20px ;">
          </a>
          <div class="card-body">
            <h5 class="card-title">Orders</h5>
            <p class="card-text">ตรวจสอบคำสั่งซื้อสินค้า.</p>
            <a href="orders.php" class="btn btn-primary">Go to orders page</a>
          </div>
        </div>
        <div class="card" style="width: 25rem;margin-bottom: 20px ;">
          <a href="products.php">
            <img class="card-img-top" src="../images/package.svg" alt="Card image cap" style="width: 5rem;margin-top: 20px ;">
          </a>
          <div class="card-body">
            <h5 class="card-title">Products</h5>
            <p class="card-text">แสดงรายละเอียดสินค้าทั้งหมด.</p>
            <a href="products.php" class="btn btn-primary">Go to products page</a>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="card" style="width: 25rem;margin-top: 20px ;margin-right: 200px ;">
          <a href="customers.php">
            <img class="card-img-top" src="../images/users.svg" alt="Card image cap" style="width: 5rem;margin-top: 20px ;">
          </a>
          <div class="card-body">
            <h5 class="card-title">Customers</h5>
            <p class="card-text">จัดการรายละเอียดลูกค้า.</p>
            <a href="customers.php" class="btn btn-primary">Go to customers page</a>
          </div>
        </div>
        <div class="card" style="width: 25rem;margin-top: 20px ;">
          <a href="admin.php">
            <img class="card-img-top" src="../images/user.svg" alt="Card image cap" style="width: 5rem;margin-top: 20px ;">
          </a>
          <div class="card-body">
            <h5 class="card-title">Admin</h5>
            <p class="card-text">การจัดการแอดมินหลังบ้าน.</p>
            <a href="admin.php" class="btn btn-primary">Go to admin page</a>
          </div>
        </div>
      </div>
    </main>
  </div>

  <?php
  include "includes/footer.php"
  ?>
</body>

</html>