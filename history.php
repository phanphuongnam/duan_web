<?php
	session_start();
 	require_once 'commons/db.php';
 	if (!isset($_SESSION['login']) || $_SESSION['login']=='') {
    header('location:'.Base_url);
  	}
 	//thông tin website
 	$sql='select * from settings_web';
 	$info_web = executeQuery($sql,false);
 	//Hiện thị tất cả danh mục
 	$sql = "SELECT * FROM categories";
 	$Get_categories = executeQuery($sql,true);
 	$id_u =isset($_SESSION['login']) ? $_SESSION['login']['id'] : '';
 	$sql="SELECT *,orders.status as ord_stt,DATE_FORMAT(orders.created_at,'%d/%m/%Y') AS day_buy FROM historys join users on historys.id_user=users.id JOIN orders ON historys.id_order=orders.id JOIN order_detail ON orders.id=order_detail.order_id JOIN products ON order_detail.product_id=products.id WHERE historys.id_user=$id_u";
 	$history_user= executeQuery($sql,true);
 	
?>
<!DOCTYPE html>
<html lang="zxx">

<head>
	<title>Electro Store Ecommerce Category Bootstrap Responsive Web Template | Single Product 1 :: w3layouts</title>
	<!-- Meta tag Keywords -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8" />
	<meta name="keywords" content="Electro Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design"
	/>
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- //Meta tag Keywords -->

	<!-- Custom-Files -->
	<link href="<?php echo Base_url ?>public/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<!-- Bootstrap css -->
	<link href="<?php echo Base_url ?>public/css/style.css" rel="stylesheet" type="text/css" media="all" />
	<!-- Main css -->
	<link rel="stylesheet" href="<?php echo Base_url ?>public/css/fontawesome-all.css">
	<!-- Font-Awesome-Icons-CSS -->
	<link href="<?php echo Base_url ?>public/css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
	<!-- pop-up-box -->
	<link href="<?php echo Base_url ?>public/css/menu.css" rel="stylesheet" type="text/css" media="all" />

	<!-- menu style -->
	<!-- //Custom-Files -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
	<link rel="stylesheet" type="text/css" href="<?php echo Base_url ?>public/css/slider_brand.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.6.0/slick.js"></script>
	<!-- web fonts -->
	<link href="//fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i&amp;subset=latin-ext" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese"
	    rel="stylesheet">
	<!-- //web fonts -->

</head>

<body>
	<!-- top-header -->
		<?php include_once 'layouts/top_header.php' ?>
	<!-- //top-header -->

	<!-- header-bottom-->
		<?php include_once 'layouts/bottom_header.php' ?>
	<!-- //header-bottom -->
	<!-- navigation -->
	<div class="navbar-inner">
		<div class="container">
			<nav class="navbar navbar-expand-lg navbar-light bg-light">
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
				    aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav ml-auto text-center mr-xl-5">
						<li class="nav-item mr-lg-2 mb-lg-0 mb-2">
							<a class="nav-link" href="<?php echo Base_url ?>">Trang Chu
								<span class="sr-only">(current)</span>
							</a>
						</li>
						<li class="nav-item dropdown mr-lg-2 mb-lg-0 mb-2">
							<a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								Danh Muc San Pham
							</a>
							<div class="dropdown-menu">
								<div class="agile_inner_drop_nav_info p-4">
									
									<div class="row">
										<?php foreach($Get_categories as $get_cate): ?>
										<div class="col-sm-6 multi-gd-img">
											<ul class="multi-column-dropdown">
												<li>
													<a 
													href="<?php echo Base_url.'category.php?id='
													.$get_cate['id'] ?>"><?php echo $get_cate['cate_name'] ?></a>
												</li>	
											</ul>
										</div>
										
									  <?php endforeach ?>
									</div>
								</div>
							</div>
						</li>
						
						<li class="nav-item mr-lg-2 mb-lg-0 mb-2">
							<a class="nav-link" href="<?php echo Base_url ?>shop.php">San Pham</a>
						</li>
						<li class="nav-item mr-lg-2 mb-lg-0 mb-2">
							<a class="nav-link" href="<?php echo Base_url ?>about.php">Gioi thieu</a>
						</li>
					<!-- 	<li class="nav-item dropdown mr-lg-2 mb-lg-0 mb-2">
							<a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								Pages
							</a>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="product.html">Product 1</a>
								<a class="dropdown-item" href="product2.html">Product 2</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="<?php echo Base_url ?>detail.php">Single Product 1</a>
								<a class="dropdown-item" href="single2.html">Single Product 2</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="checkout.html">Checkout Page</a>
								<a class="dropdown-item" href="payment.html">Payment Page</a>
							</div>
						</li> -->
						<li class="nav-item">
							<a class="nav-link" href="<?php echo Base_url ?>contact.php">Lien He</a>
						</li>
					</ul>
				</div>
			</nav>
		</div>
	</div>
	<!-- //navigation -->

	<!-- banner-2 -->
	<div class="page-head_agile_info_w3l">

	</div>
	<!-- //banner-2 -->
	<!-- page -->
	<div class="services-breadcrumb">
		<div class="agile_inner_breadcrumb">
			<div class="container">
				<ul class="w3_short">
					<li>
					<a href="<?php echo Base_url ?>">Trang Chủ</a>
						<i>|</i>
					</li>
					<li>
						<a href="<?php echo Base_url.'history.php' ?>">Lịch Sử Giao Dịch</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- //page -->

	<!-- Single Page -->
		<div class="product-sec1 px-sm-4 px-3 py-sm-5  py-3 mb-4 mt-5">
			<h3 class="heading-tittle text-center mb-4 font-italic">Lịch Sử Giao Dịch</h3>
			<div style="overflow: auto;" class="row">
				<?php if($history_user==''): ?>
					<h5 class="container text-center">Không tìm thấy giao dịch nào!</h5>
				<?php else: ?>
				<table class="table text-center">
			        <thead>
			          <tr> 
			              <th scope="col">Họ Tên</th>
			              <th scope="col">Email</th> 
			              <th scope="col">SĐT</th>
			              <th scope="col">Địa Chỉ Nhận Hàng</th>
			              <th scope="col">Tổng Tiền</th>
			              <th scope="col">Phương Thức Thanh Toán</th>
			              <th scope="col">Trạng Thái</th>
			              <th scope="col">Ngày Mua</th>
			          </tr>
			      </thead>
			      <?php foreach($history_user as $his_u) : ?>
			        <tbody>
			          <tr>
			            <td><?php echo $his_u['customer_name'] ?></td>
			            <td><?php echo $his_u['customer_email'] ?></td>
			            <td><?php echo $his_u['customer_phone'] ?></td>
			            <td><?php echo $his_u['customer_address'] ?></td>
			            <td><?php echo $his_u['total_price'] ?> VNĐ</td>
			            <td>

			            	<?php foreach($payment_method as $key => $value): ?>
			                  <?php if($value==$his_u['payment_method']): ?>
			                      <?php echo $key; ?>
			                  <?php endif; ?>
			                <?php endforeach;?>
			            	
			            </td>
			            <td class="col-lg-2"> 
			            	<?php foreach($status_order as $key => $value): ?>
			                  <?php if($value==$his_u['ord_stt']): ?>
			                      <?php echo $key; ?>
			                  <?php endif; ?>
			                <?php endforeach;?>        
			           </td>
			           <td><?php echo $his_u['day_buy'] ?></td>
			           
			          </tr>
			        </tbody>
			         <td style="width: 20%;">
			        	<a href="chitiet.php?id=<?php echo $his_u['order_id'] ?>">
			        		Xem Chi Tiết Giao Dịch <i class="fa fa-angle-double-right" aria-hidden="true"></i>
			        	</a>
			          </td>		
			        <?php endforeach ?>
        	</table>
			<?php endif; ?>
		</div>
			
	</div>
	<!-- footer -->
	<footer>

		<!-- footer third section -->
		<div class="w3l-middlefooter-sec">
			<div class="container py-md-5 py-sm-4 py-3">
				<div class="row footer-info w3-agileits-info">
					<!-- footer categories -->
					<div class="col-md-3 col-sm-6 footer-grids">
						<h3 class="text-white font-weight-bold mb-3">Danh Mục</h3>
						<ul>
							<?php foreach($Get_categories as $get_cate): ?>
							<li class="mb-3">
								<a href="<?php echo Base_url.'category.php?id='.$get_cate['id'] ?>">
									<?php echo $get_cate['cate_name'] ?>	
								</a>
							</li>
							<?php endforeach ?>
						</ul>
					</div>
					<!-- //footer categories -->
					<!-- quick links -->
					<div class="col-md-3 col-sm-6 footer-grids mt-sm-0 mt-4">
						<h3 class="text-white font-weight-bold mb-3">Liên Kết Nhanh</h3>
						<ul>
							<li class="mb-3">
								<a href="<?php echo Base_url ?>about.php">Giới Thiệu</a>
							</li>
							<li class="mb-3">
								<a href="<?php echo Base_url ?>contact.php">Liên Hệ</a>
							</li>
							<li class="mb-3">
								<a href="#">Help</a>
							</li>
							<li class="mb-3">
								<a href="#">Faqs</a>
							</li>
							<li class="mb-3">
								<a href="#">Terms of use</a>
							</li>
							<li>
								<a href="#">Privacy Policy</a>
							</li>
						</ul>
					</div>
					<div class="col-md-3 col-sm-6 footer-grids mt-md-0 mt-4">
						<h3 class="text-white font-weight-bold mb-3">Liên Hệ Với Chúng Tôi</h3>
						<ul>
							<li class="mb-3">
								<i class="fas fa-map-marker"></i> <?php echo $info_web['address'] ?></li>
							<li class="mb-3">
								<i class="fas fa-mobile"></i><?php echo $info_web['hotline'] ?></li>
							
							<li class="mb-3">
								<i class="fas fa-envelope-open"></i>
								<a href="mailto:example@mail.com"><?php echo $info_web['email'] ?></a>
							</li>
							
						</ul>
					</div>
					<div class="col-md-3 col-sm-6 footer-grids w3l-agileits mt-md-0 mt-4">
						<!-- newsletter -->
						<h3 class="text-white font-weight-bold mb-3">Bản Tin</h3>
						<p class="mb-3">Đăng Kí Nhận Bản Tin</p>
						<form action="#" method="post">
							<div class="form-group">
								<input type="email" class="form-control" placeholder="Email" name="email" required="">
								<input type="submit" value="Go">
							</div>
						</form>
						<!-- //newsletter -->
						<!-- social icons -->
						<div class="footer-grids  w3l-socialmk mt-3">
							<h3 class="text-white font-weight-bold mb-3">Follow Us on</h3>
							<div class="social">
								<ul>
									<li>
										<a class="icon fb" href="<?php echo $info_web['url_facebook'] ?>">
											<i class="fab fa-facebook-f"></i>
										</a>
									</li>
									<li>
										<a class="icon tw" href="<?php echo $info_web['url_twitter'] ?>">
											<i class="fab fa-twitter"></i>
										</a>
									</li>
									<li>
										<a style="background: red;" class="icon youtube" href="<?php echo $info_web['url_youtube'] ?>">
											<i class="fab fa-youtube"></i>
										</a>
									</li>
								</ul>
							</div>
						</div>
						<!-- //social icons -->
					</div>
				</div>
				<!-- //quick links -->
			</div>
			
		</div>
		<!-- //footer third section -->
		<!-- footer fourth section -->
		<div class="agile-sometext py-md-5 py-sm-4 py-3">
			<div class="container">
				<!-- brands -->
				<div class="sub-some">
					
				<div class="sub-some child-momu mt-4">
					<h5 class="font-weight-bold mb-3">Payment Method</h5>
					<ul>
						<li>
							<img src="<?php echo Base_url ?>public/images/pay2.png" alt="">
						</li>
						<li>
							<img src="<?php echo Base_url ?>public/images/pay5.png" alt="">
						</li>
						<li>
							<img src="<?php echo Base_url ?>public/images/pay1.png" alt="">
						</li>
						<li>
							<img src="<?php echo Base_url ?>public/images/pay4.png" alt="">
						</li>
						<li>
							<img src="<?php echo Base_url ?>public/images/pay6.png" alt="">
						</li>
						<li>
							<img src="<?php echo Base_url ?>public/images/pay3.png" alt="">
						</li>
						<li>
							<img src="<?php echo Base_url ?>public/images/pay7.png" alt="">
						</li>
						<li>
							<img src="<?php echo Base_url ?>public/images/pay8.png" alt="">
						</li>
						<li>
							<img src="<?php echo Base_url ?>public/images/pay9.png" alt="">
						</li>
					</ul>
				</div>
				<!-- //payment -->
			</div>
		</div>
	</div>
		<!-- //footer fourth section (text) -->
	</footer>
	<!-- //footer -->
	<!-- copyright -->
	<div class="copy-right py-3">
		<div class="container">
			<p class="text-center text-white">© 2019 All rights reserved
			</p>
		</div>
	</div>

	<!-- //copyright -->

	<!-- js-files -->
	<!-- jquery -->
	<script src="<?php echo Base_url ?>public/js/jquery-2.2.3.min.js"></script>
	<!-- //jquery -->
	
	<!-- flexslider -->
	<link rel="stylesheet" href="<?php echo Base_url ?>public/css/flexslider.css" type="text/css" media="screen" />

	<!-- <script src="<?php echo Base_url ?>public/js/jquery.flexslider.js"></script> -->

	<script>
		// Can also be used with $(document).ready()
		$(window).load(function () {
			$('.flexslider').flexslider({
				animation: "slide",
				controlNav: "thumbnails"
			});
		});
	</script>
	<!-- //FlexSlider-->
	<!-- nav smooth scroll -->
	<script>
		$(document).ready(function () {
			$(".dropdown").hover(
				function () {
					$('.dropdown-menu', this).stop(true, true).slideDown("fast");
					$(this).toggleClass('open');
				},
				function () {
					$('.dropdown-menu', this).stop(true, true).slideUp("fast");
					$(this).toggleClass('open');
				}
			);
		});
	</script>
	<!-- //nav smooth scroll -->

	<!-- popup modal (for location)-->
	<script src="<?php echo Base_url ?>public/js/jquery.magnific-popup.js"></script>
	<script>
		$(document).ready(function () {
			$('.popup-with-zoom-anim').magnificPopup({
				type: 'inline',
				fixedContentPos: false,
				fixedBgPos: true,
				overflowY: 'auto',
				closeBtnInside: true,
				preloader: false,
				midClick: true,
				removalDelay: 300,
				mainClass: 'my-mfp-zoom-in'
			});

		});
	</script>
	<!-- //popup modal (for location)-->

	<!-- cart-js -->
	<script src="<?php echo Base_url ?>public/js/minicart.js"></script>
	<script>
		paypals.minicarts.render(); //use only unique class names other than paypals.minicarts.Also Replace same class name in css and minicart.min.js

		paypals.minicarts.cart.on('checkout', function (evt) {
			var items = this.items(),
				len = items.length,
				total = 0,
				i;

			// Count the number of each item in the cart
			for (i = 0; i < len; i++) {
				total += items[i].get('quantity');
			}

			if (total < 3) {
				alert('The minimum order quantity is 3. Please add more to your shopping cart before checking out');
				evt.preventDefault();
			}
		});
	</script>
	<!-- //cart-js -->

	<!-- password-script -->
	<script>
		window.onload = function () {
			document.getElementById("password1").onchange = validatePassword;
			document.getElementById("password2").onchange = validatePassword;
		}

		function validatePassword() {
			var pass2 = document.getElementById("password2").value;
			var pass1 = document.getElementById("password1").value;
			if (pass1 != pass2)
				document.getElementById("password2").setCustomValidity("Passwords Don't Match");
			else
				document.getElementById("password2").setCustomValidity('');
			//empty string means no validation error
		}
	</script>
	<!-- //password-script -->

	<!-- imagezoom -->
	<script src="<?php echo Base_url ?>public/js/imagezoom.js"></script>
	<!-- //imagezoom -->

	<!-- flexslider -->
	<link rel="stylesheet" href="<?php echo Base_url ?>public/css/flexslider.css" type="text/css" media="screen" />

	<script src="<?php echo Base_url ?>public/js/jquery.flexslider.js"></script>
	<script>
		// Can also be used with $(document).ready()
		$(window).load(function () {
			$('.flexslider').flexslider({
				animation: "slide",
				controlNav: "thumbnails"
			});
		});
	</script>
	<!-- //FlexSlider-->

	<!-- smoothscroll -->
	<script src="<?php echo Base_url ?>public/js/SmoothScroll.min.js"></script>
	<!-- //smoothscroll -->

	<!-- start-smooth-scrolling -->
	<script src="<?php echo Base_url ?>public/js/move-top.js"></script>
	<script src="<?php echo Base_url ?>public/js/easing.js"></script>
	<script>
		jQuery(document).ready(function ($) {
			$(".scroll").click(function (event) {
				event.preventDefault();

				$('html,body').animate({
					scrollTop: $(this.hash).offset().top
				}, 1000);
			});
		});
	</script>
	<!-- //end-smooth-scrolling -->

	<!-- smooth-scrolling-of-move-up -->
	<script>
		$(document).ready(function () {
			/*
			var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
			};
			*/
			$().UItoTop({
				easingType: 'easeOutQuart'
			});

		});
	</script>
	<!-- //smooth-scrolling-of-move-up -->

	<!-- for bootstrap working -->
	<script src="<?php echo Base_url ?>public/js/bootstrap.js"></script>
	<!-- //for bootstrap working -->
	<!-- //js-files -->

</body>

</html>