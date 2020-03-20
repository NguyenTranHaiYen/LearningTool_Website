<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<title>Study Shoppy</title>
<base href="${pageContext.servletContext.contextPath}/">
<!--/tags -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Elite Shoppy Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript">
	
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } 

		

</script>
<!--//tags -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/font-awesome.css" rel="stylesheet">
<link href="css/easy-responsive-tabs.css" rel='stylesheet'
	type='text/css' />
<!-- //for bootstrap working -->
<link
	href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800"
	rel="stylesheet">
<link
	href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic'
	rel='stylesheet' type='text/css'>
</head>
<body>
	<!-- header -->
	<div class="header" id="home">
		<div class="container">
			<ul>
				<c:choose>
					<c:when test="${username==null}">
						<li><a href="login.html"><i class="fa fa-unlock-alt"
								aria-hidden="true"></i> Sign In </a></li>
						<li><a href="signup.html"><i
								class="fa fa-pencil-square-o" aria-hidden="true"></i> Sign Up </a></li>
					</c:when>
					<c:when test="${username!=null}">
						<li><i class="fa fa-user" aria-hidden="true"></i>${name}</li>
						<li><a href="signout.html"><i class="fa fa-sign-out"
								aria-hidden="true"></i> Sign Out </a></li>
					</c:when>
				</c:choose>
			</ul>
		</div>
	</div>
	<!-- //header -->
	<!-- header-bot --> 
	<div class="header-bot">
		<div class="header-bot_inner_wthreeinfo_header_mid">
			<!-- header-bot -->
			<div class="col-md-6 logo_agile">
				<h1>
					<a href="index.html"><span>S</span>tudy Shop <i
						class="fa fa-shopping-bag top_logo_agile_bag" aria-hidden="true"></i></a>
				</h1>
			</div>
			<!-- header-bot -->
			<div class="col-md-6 header-middle">
				<form action="#" method="post" class="form__search">
					<input width="380px" height="50px" type="search" name="search" placeholder="Search here..."
						required=""> 
					<input type="submit" value=" ">
					<div class="clearfix"></div>
				</form>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //header-bot -->
	<!-- banner -->
	<div class="ban-top">
		<div class="container">
			<div class="top_nav_left">
				<nav class="navbar navbar-default">
					<div class="container-fluid">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed"
								data-toggle="collapse"
								data-target="#bs-example-navbar-collapse-1"
								aria-expanded="false">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
						</div>
						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse menu--shylock"
							id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav menu__list">
								<li class="active menu__item"><a class="menu__link"
									href="index.html">Home <span class="sr-only">(current)</span></a></li>
								<!-- <li class=" menu__item"><a class="menu__link" href="about.html">About</a></li> -->
								<li class="dropdown menu__item menu__item--current"><a
									href="#" class="dropdown-toggle menu__link"
									data-toggle="dropdown" role="button" aria-haspopup="true"
									aria-expanded="false">Dụng cụ học tập<span class="caret"></span></a>
									<ul class="dropdown-menu multi-column columns-3">
										<div class="agile_inner_drop_nav_info">
											<div class="col-sm-6 multi-gd-img1 multi-gd-text ">
												<a href="dungcuhoctap.html"><img
													src="images/T01002-600x536.jpg" alt=" " /></a>
											</div>
											<div class="col-sm-6 multi-gd-img">
												<ul class="multi-column-dropdown">
													<li><a href="dungcuhoctap/1/1.html">Sách Vở</a></li>
													<li><a href="dungcuhoctap/2/1.html">Bút</a></li>
													<li><a href="dungcuhoctap/4/1.html">Thước</a></li>
													<li><a href="dungcuhoctap/3/1.html">Hộp bút</a></li>
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
									</ul></li>
							</ul>
						</div>
					</div>
				</nav>
			</div>
			<div class="top_nav_right">
				<div class="wthreecartaits wthreecartaits2 cart cart box_1">
					<form action="cart.html" method="post" class="last">
						<input type="hidden" name="cmd" value="_cart"> <input
							type="hidden" name="display" value="1">
						<button class="w3view-cart" type="submit" name="submit" value="">
							<i class="fa fa-cart-arrow-down" aria-hidden="true"></i>
						</button>
					</form>

				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<div class="page-head_agile_info_w3l">
		<div class="container">

			<!--//w3_short-->
		</div>
	</div>


	<!-- phan trang -->


	<div class="tab1">
		<c:forEach var="p" items="${listProduct}">
			<div class="col-md-3 product-men">
				<div class="men-pro-item simpleCart_shelfItem">
					<div class="men-thumb-item">
						<img src="${p.image}" alt="" class="pro-image-front"> <img
							src="${p.image}" alt="" class="pro-image-back">
						<div class="men-cart-pro">
							<div class="inner-men-cart-pro">
								<a href="single/${p.proId}.html" class="link-product-add-cart">Quick
									View</a>
							</div>
						</div>
						<span class="product-new-top">New</span>

					</div>
					<div class="item-info-product ">
						<h4>
							<a href="single/${p.proId}.html">${p.name}</a>
						</h4>
						<div class="info-product-price">
							<span class="item_price">${p.price - p.price*(p.discount/100)}</span>
							<del>${p.price})</del>
						</div>
						<div
							class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
							<form action="add/${p.proId}.html" method="post">
								<fieldset>
									<input type="hidden" name="cmd" value="_cart" /> <input
										type="hidden" name="add" value="1" /> <input type="hidden"
										name="business" value=" " /> <input type="hidden"
										name="item_name" value="${p.name}" /> <input type="hidden"
										name="amount" value="${p.price - p.price*(p.discount/100)}" /> <input
										type="hidden" name="discount_amount" value="1.00" /> <input
										type="hidden" name="currency_code" value="VND" /> <input
										type="hidden" name="return" value=" " /> <input type="hidden"
										name="cancel_return" value=" " /> <a href=""><input  
														type="submit" name="submit" value="Add to cart"
														class="button" /></a>
								</fieldset>
							</form>
						</div>

					</div>
				</div>
			</div>
		</c:forEach>
		<div class="clearfix"></div>
	</div>

	<div class="text-center">
		<c:forEach var="i" begin="0" end="${totalPage-1}" varStatus="status">
			<c:if test="${status.index == 0 && currentPage > 1}">
				<a href="dungcuhoctap/${cateId}/${currentPage-1}.html"
					class="btn btn-outline-primary">&laquo</a>
			</c:if>

			<a class="btn btn-outline-primary"
				href="dungcuhoctap/${cateId}/${i+1}.html"
				${status.index + 1 == currentPage ? 'style="background-color: #ed0663;"':''}>
				<span
				${status.index + 1 == currentPage ? 'style="color: white;"':''}>
					${i+1}</span>
			</a>


			<c:if
				test="${status.index == totalPage-1 && currentPage <= totalPage-1}">
				<a href="dungcuhoctap/${cateId}/${currentPage+1}.html"
					class="btn btn-outline-primary">&raquo;</a>
			</c:if>

		</c:forEach>
	</div>

	<div class="coupons">
		<div class="coupons-grids text-center">
			<div class="w3layouts_mail_grid">
				<div class="col-md-3 w3layouts_mail_grid_left">
					<div class="w3layouts_mail_grid_left1 hvr-radial-out">
						<i class="fa fa-truck" aria-hidden="true"></i>
					</div>
					<div class="w3layouts_mail_grid_left2">
						<h3>FREE SHIPPING</h3>
						<p>Lorem ipsum dolor sit amet, consectetur</p>
					</div>
				</div>
				<div class="col-md-3 w3layouts_mail_grid_left">
					<div class="w3layouts_mail_grid_left1 hvr-radial-out">
						<i class="fa fa-headphones" aria-hidden="true"></i>
					</div>
					<div class="w3layouts_mail_grid_left2">
						<h3>24/7 SUPPORT</h3>
						<p>Lorem ipsum dolor sit amet, consectetur</p>
					</div>
				</div>
				<div class="col-md-3 w3layouts_mail_grid_left">
					<div class="w3layouts_mail_grid_left1 hvr-radial-out">
						<i class="fa fa-shopping-bag" aria-hidden="true"></i>
					</div>
					<div class="w3layouts_mail_grid_left2">
						<h3>MONEY BACK GUARANTEE</h3>
						<p>Lorem ipsum dolor sit amet, consectetur</p>
					</div>
				</div>
				<div class="col-md-3 w3layouts_mail_grid_left">
					<div class="w3layouts_mail_grid_left1 hvr-radial-out">
						<i class="fa fa-gift" aria-hidden="true"></i>
					</div>
					<div class="w3layouts_mail_grid_left2">
						<h3>FREE GIFT COUPONS</h3>
						<p>Lorem ipsum dolor sit amet, consectetur</p>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>

		</div>
	</div>

	<div class="footer">
		<div class="footer_agile_inner_info_w3l">
			<div class="col-md-3 footer-left">
				<h2>
					<a href="index.html"><span>S</span>tudy Shop </a>
				</h2>
				<p>Study Shop xin trân trọng cảm ơn quý khách đã tin dùng. Sự
					hài lòng của quý khách là động lực để chúng tôi mang đến những sản
					phẩm tốt hơn!</p>
			</div>
			<div class="col-md-9 footer-right">
				<div class="sign-grds">
					<div class="sign-gd-two">
						<h4>
							Store <span>Information</span>
						</h4>
						<div class="w3-address">
							<div class="w3-address-grid">
								<div class="w3-address-left">
									<i class="fa fa-phone" aria-hidden="true"></i>
								</div>
								<div class="w3-address-right">
									<h6>Phone Number</h6>
									<p>023 567 8901</p>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="w3-address-grid">
								<div class="w3-address-left">
									<i class="fa fa-envelope" aria-hidden="true"></i>
								</div>
								<div class="w3-address-right">
									<h6>Email Address</h6>
									<p>
										Email :<a href="mailto:example@email.com">
											studyshop@gmail.com</a>
									</p>
								</div>
								<div class="clearfix"></div>
							</div>

						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="clearfix"></div>
			<div class=>
				<iframe
					src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.522478687579!2d106.78390341371313!3d10.847808660840926!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317527136a359b7f%3A0x1b48baf4a56470a2!2zSOG7jWMgVmnhu4duIELGsHUgY2jDrW5o!5e0!3m2!1svi!2s!4v1570714834149!5m2!1svi!2s"
					width="1140" height="500" frameborder="0"
					style="border: 0; margin-top: 40px" allowfullscreen=""></iframe>
			</div>
			<div class="clearfix"></div>
		</div>
		<p class="copy-right">&copy 2017 Elite shoppy. All rights reserved
			| Design by PTITer</p>
	</div>
	</div>
	<!-- //footer -->


	<a href="#home" class="scroll" id="toTop" style="display: block;">
		<span id="toTopHover" style="opacity: 1;"> </span>
	</a>

	<!-- js -->
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<!-- //js -->
	<script src="js/modernizr.custom.js"></script>
	<!-- Custom-JavaScript-File-Links -->
	<!-- cart-js -->
	
	<!-- //cart-js -->
	<!-- script for responsive tabs -->
	<script src="js/easy-responsive-tabs.js"></script>
	<script>
		$(document).ready(function() {
			$('#horizontalTab').easyResponsiveTabs({
				type : 'default', //Types: default, vertical, accordion           
				width : 'auto', //auto or any width like 600px
				fit : true, // 100% fit in a container
				closed : 'accordion', // Start closed if in accordion view
				activate : function(event) { // Callback function if tab is switched
					var $tab = $(this);
					var $info = $('#tabInfo');
					var $name = $('span', $info);
					$name.text($tab.text());
					$info.show();
				}
			});
			$('#verticalTab').easyResponsiveTabs({
				type : 'vertical',
				width : 'auto',
				fit : true
			});
		});
	</script>
	<!-- //script for responsive tabs -->
	<!-- stats -->
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/jquery.countup.js"></script>
	<script>
		$('.counter').countUp();
	</script>
	<!-- //stats -->
	<!-- start-smoth-scrolling -->
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/jquery.easing.min.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event) {
				event.preventDefault();
				$('html,body').animate({
					scrollTop : $(this.hash).offset().top
				}, 1000);
			});
		});
	</script>
	<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			 */

			$().UItoTop({
				easingType : 'easeOutQuart'
			});

		});
	</script>
	<!-- //here ends scrolling icon -->


	<!-- for bootstrap working -->
	<script type="text/javascript" src="js/bootstrap.js"></script>
</body>
</html>

