<?php
include "includes/head.php"
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

  <div class="site-wrap">
    <?php
    include "includes/header.php"
    ?>
    <div class="site-blocks-cover" style="background-image: url('images/hero_1.jpg');">
      <div class="container">
        <div class="row">
          <div class="col-lg-7 mx-auto order-lg-2 align-self-center">
            <div class="site-block-cover-content text-center">
              <h2 class="sub-title">Effective Medicine, New Medicine Everyday</h2>
              <h1>Welcome To Mentos Pharmacy</h1>
              <p>
                <a href="store.php" class="btn btn-primary px-5 py-3">Shop Now</a>
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="site-section">
      <div class="container">
        <div class="row align-items-stretch section-overlap">
          <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
            <div class="banner-wrap bg-primary h-100">
              <a href="store.php" class="h-100">
                <h5>Free <br> Shipping</h5>
                <p>
                  จัดส่งฟรี <br>เมื่อซื้อขั้นต่ำ 150 ฿.</br>
                  
                </p>
              </a>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
            <div class="banner-wrap h-100">
              <a href="store.php" class="h-100">
                <h5>Season <br> Sale 50% Off</h5>
                <p>
                 สินค้าลดสูงสุด 80%

                </p>
              </a>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
            <div class="banner-wrap bg-warning h-100">
              <a href="store.php" class="h-100">
                <h5>New <br> Products</h5>
                <p>
                  สำรวจสินค้าอีกมากมายที่จะเพิ่มเข้ามา
                </p>
              </a>
            </div>
          </div>

        </div>
      </div>
    </div>

    <div class="site-section" >
      <div class="container">
        <div class="row">
          <div class="title-section text-center col-12">
            <h2 class="text-uppercase">Products You Might Like</h2>
          </div>
        </div>

        <div class="row">
          <?php
          $data = all_products();
          $num = sizeof($data);
          for ($i = 0; $i < $num; $i++) {
          ?>
            <div class="col-sm-6 col-lg-4 text-center item mb-4">
              <a href="product.php?product_id=<?php echo $data[$i]['item_id'] ?>"> <img class="rounded mx-auto d-block" style="width:20vw ; height:40vh ;" src="images/<?php echo $data[$i]['item_image'] ?>" alt="Image"></a>
              <?php if (strlen($data[$i]['item_title']) <= 20) { ?>
                <h3 class="text-dark"><a href="product.php?product_id=<?php echo $data[$i]['item_id'] ?>"><?php echo $data[$i]['item_title'] ?></a></h3>
              <?php
              } else {
              ?>
                <h3 class="text-dark"><a href="product.php?product_id=<?php echo $data[$i]['item_id'] ?>"><?php echo substr($data[$i]['item_title'], 0, 20) . "..." ?></a></h3>
              <?php
              }
              ?>
              <p class="price"><?php echo $data[$i]['item_price'] ?> ฿</p>
            </div>
          <?php
            if ($i == 5) {
              break;
            }
          }
          ?>
        </div>
        <div class="row mt-5">
          <div class="col-12 text-center">
            <a href="store.php" class="btn btn-primary px-4 py-3">View All Products</a>
          </div>
        </div>
      </div>
    </div>


    <div class="site-section bg-light">
      <div class="container">
        <div class="row">
          <div class="title-section text-center col-12">
            <h2 class="text-uppercase">New Products</h2>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 block-3 products-wrap">
            <div class="nonloop-block-3 owl-carousel">
              <?php
              $data = all_products_reverse();

              $num = sizeof($data);
              for ($i = 0; $i < $num; $i++) {
              ?>
                <!--  -->
                <div class="  text-center item mb-4">
                  <a href="product.php?product_id=<?php echo $data[$i]['item_id'] ?>"> <img class="rounded mx-auto d-block" style="width:20vw ; height:vh ;" src="images/<?php echo $data[$i]['item_image'] ?>" alt="Image"></a>

                  <h3 class="text-dark"><a href="product.php?product_id=<?php echo $data[$i]['item_id'] ?>">Umcka Cold Care</a></h3>

                  <p class="price"><?php echo $data[$i]['item_price'] ?> ฿</p>
                </div>
                <!--  -->
              <?php
                if ($i == 5) {
                  break;
                }
              }
              ?>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="site-section" style="background-color:#C9EEFF;">
      <div class="container">
        <div class="row">
          <div class="title-section text-center col-12">
            <h2 class="text-uppercase">Reviews</h2>
          </div>
        </div>
        <div class="row text-center" >
          <div class="col-md-12 block-3 products-wrap">
            <div class="nonloop-block-3 no-direction owl-carousel">

              <div class="text-black" style="font-size:15pt">
                <blockquote>
                  <img src="images/person1.jpg" alt="Image" class="img-fluid w-25 mb-4 rounded-circle " style="margin-left: auto;margin-right: auto;">
                  <p>&ldquo;ตัวยาราคาไม่แรงมาก <br>มีสินค้าให้เลือกหลากหลาย.&rdquo;</p>
                </blockquote>

                <p>&mdash; Korn</p>
              </div>
              <div class="text-black" style="font-size:15pt">
                <blockquote>
                  <img src="images/person2.jpg" alt="Image" class="img-fluid w-25 mb-4 rounded-circle" style="margin-left: auto;margin-right: auto;">
                  <p>&ldquo;สุดยอดครับสินค้าดีมีมาตรฐาน ราคาถูก.&rdquo;</p>
                </blockquote>

                <p>&mdash; Pang</p>
              </div>

              <div class="text-black" style="font-size:15pt">
                <blockquote>
                  <img src="images/person3.jpg" alt="Image" class="img-fluid w-25 mb-4 rounded-circle" style="margin-left: auto;margin-right: auto;">
                  <p>&ldquo;เว็บมีคุณภาพ ข้อมูลถูกต้อง รวดเร็ว <br>โคตรแจ่ม.&rdquo;</p>
                </blockquote>

                <p>&mdash; Arm</p>
              </div>

              <div class="text-black" style="font-size:15pt">
                <blockquote>
                  <img src="images/person4.jpg" alt="Image" class="img-fluid w-25 mb-4 rounded-circle" style="margin-left: auto;margin-right: auto;">
                  <p>&ldquo;เว็บสบายตามาก สะดวกสบายดีมาก.&rdquo;</p>
                </blockquote>

                <p>&mdash; Pee</p>
              </div>

              <div class="text-black" style="font-size:15pt">
                <blockquote>
                  <img src="images/person5.jpg" alt="Image" class="img-fluid w-25 mb-4 rounded-circle" style="margin-left: auto;margin-right: auto;">
                  <p>&ldquo;มียาให้เลือกเยอะมาก ราคาถูก ใช้งานง่าย.&rdquo;</p>
                </blockquote>

                <p>&mdash; Peem</p>
              </div>

            </div>
          </div>
        </div>
      </div>
    </div>


    <?php
    include "includes/footer.php"
    ?>
  </div>



</body>

</html>