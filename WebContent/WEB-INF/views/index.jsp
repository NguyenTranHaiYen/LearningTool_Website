<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
				<form action="search.html" method="post" class="form__search">
					<input width="380px" height="50px" type="search" name="search" placeholder="Search here..."
						required="">  <input type="submit" value=" ">
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
								<li class="active menu__item menu__item--current"><a
									class="menu__link" href="index.html">Home <span
										class="sr-only">(current)</span></a></li>
								<!-- <li class=" menu__item"><a class="menu__link" href="about.html">About</a></li> -->
								<li class="dropdown menu__item"><a href="#"
									class="dropdown-toggle menu__link" data-toggle="dropdown"
									role="button" aria-haspopup="true" aria-expanded="false">Dụng
										cụ học tập<span class="caret"></span>
								</a>
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
	<!-- //banner-top -->
	<!-- Modal1 -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body modal-body-sub_agile">
					<div class="col-md-8 modal_body_left modal_body_left1">
						<h3 class="agileinfo_sign">
							Sign In <span>Now</span>
						</h3>
						<form:form action="login.html" modelAttribute="user" method="POST">
							<div class="styled-input agile-styled-input-top">
								<form:input path="email" />
								<label>Email</label> <span></span>
							</div>
							<div class="styled-input">
								<form:input path="password" />
								<label>Password</label> <span></span>
							</div>
							<button class="btn btn-default">Sig In</button>
						</form:form>
						<div class="clearfix"></div>
						<p>
							<a href="#" data-toggle="modal" data-target="#myModal2">
								Don't have an account?</a>
						</p>

					</div>
					<div class="col-md-4 modal_body_right modal_body_right1">
						<img src="images/log_pic.jpg" alt=" " />
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<!-- //Modal content-->
		</div>
	</div>
	<!-- //Modal1 -->
	<!-- Modal2 -->
	<div class="modal fade" id="myModal2" tabindex="-1" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body modal-body-sub_agile">
					<div class="col-md-8 modal_body_left modal_body_left1">
						<h3 class="agileinfo_sign">
							Sign Up <span>Now</span>
						</h3>
						<form action="#" method="post">
							<div class="styled-input agile-styled-input-top">
								<input type="text" name="Name" required=""> <label>Name</label>
								<span></span>
							</div>
							<div class="styled-input">
								<input type="email" name="Email" required=""> <label>Email</label>
								<span></span>
							</div>
							<div class="styled-input">
								<input type="password" name="password" required=""> <label>Password</label>
								<span></span>
							</div>
							<div class="styled-input">
								<input type="password" name="Confirm Password" required="">
								<label>Confirm Password</label> <span></span>
							</div>
							<input type="submit" value="Sign Up">
						</form>
						<ul
							class="social-nav model-3d-0 footer-social w3_agile_social top_agile_third">
							<li><a href="#" class="facebook">
									<div class="front">
										<i class="fa fa-facebook" aria-hidden="true"></i>
									</div>
									<div class="back">
										<i class="fa fa-facebook" aria-hidden="true"></i>
									</div>
							</a></li>
							<li><a href="#" class="twitter">
									<div class="front">
										<i class="fa fa-twitter" aria-hidden="true"></i>
									</div>
									<div class="back">
										<i class="fa fa-twitter" aria-hidden="true"></i>
									</div>
							</a></li>
							<li><a href="#" class="instagram">
									<div class="front">
										<i class="fa fa-instagram" aria-hidden="true"></i>
									</div>
									<div class="back">
										<i class="fa fa-instagram" aria-hidden="true"></i>
									</div>
							</a></li>
							<li><a href="#" class="pinterest">
									<div class="front">
										<i class="fa fa-linkedin" aria-hidden="true"></i>
									</div>
									<div class="back">
										<i class="fa fa-linkedin" aria-hidden="true"></i>
									</div>
							</a></li>
						</ul>
						<div class="clearfix"></div>
						<p>
							<a href="#">By clicking register, I agree to your terms</a>
						</p>

					</div>
					<div class="col-md-4 modal_body_right modal_body_right1">
						<img src="images/log_pic.jpg" alt=" " />
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<!-- //Modal content-->
		</div>
	</div>
	<!-- //Modal2 -->

	<!-- banner -->
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1" class=""></li>
			<li data-target="#myCarousel" data-slide-to="2" class=""></li>
			<li data-target="#myCarousel" data-slide-to="3" class=""></li>
			<li data-target="#myCarousel" data-slide-to="4" class=""></li>
		</ol>
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<div class="container">
					<div class="carousel-caption">
						<h3>
							The Biggest <span>Sale</span>
						</h3>
						<p>Special for today</p>
						<a class="hvr-outline-out button2" href="dungcuhoctap/1/1.html">Shop
							Now </a>
					</div>
				</div>
			</div>
			<div class="item item2">
				<div class="container">
					<div class="carousel-caption">
						<h3>
							Summer <span>Collection</span>
						</h3>
						<p>New Arrivals On Sale</p>
						<a class="hvr-outline-out button2" href="dungcuhoctap/2/1.html">Shop
							Now </a>
					</div>
				</div>
			</div>
			<div class="item item3">
				<div class="container">
					<div class="carousel-caption">
						<h3>
							The Biggest <span>Sale</span>
						</h3>
						<p>Special for today</p>
						<a class="hvr-outline-out button2" href="dungcuhoctap/3/1.html">Shop
							Now </a>
					</div>
				</div>
			</div>
			<div class="item item4">
				<div class="container">
					<div class="carousel-caption">
						<h3>
							Summer <span>Collection</span>
						</h3>
						<p>New Arrivals On Sale</p>
						<a class="hvr-outline-out button2" href="dungcuhoctap/4/1.html">Shop
							Now </a>
					</div>
				</div>
			</div>
			<div class="item item5">
				<div class="container">
					<div class="carousel-caption">
						<h3>
							The Biggest <span>Sale</span>
						</h3>
						<p>Special for today</p>
						<a class="hvr-outline-out button2" href="dungcuhoctap/1/1.html">Shop
							Now </a>
					</div>
				</div>
			</div>
		</div>
		<a class="left carousel-control" href="#myCarousel" role="button"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel" role="button"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
		<!-- The Modal -->
	</div>
	<!-- //banner -->
	<!-- schedule-bottom -->
	<div class="schedule-bottom">
		<div class="col-md-6 agileinfo_schedule_bottom_left">
			<img src="images/19092219_XX_1000x100011.jpg" alt=" "
				class="img-responsive" />
		</div>
		<div class="col-md-6 agileits_schedule_bottom_right">
			<div class="w3ls_schedule_bottom_right_grid">
				<h3>
					Save up to <span>50%</span> in this week
				</h3>
				<p>Suspendisse varius turpis efficitur erat laoreet dapibus.
					Mauris sollicitudin scelerisque commodo.Nunc dapibus mauris sed
					metus finibus posuere.</p>
				<div class="col-md-4 w3l_schedule_bottom_right_grid1">
					<i class="fa fa-user-o" aria-hidden="true"></i>
					<h4>Customers</h4>
					<h5 class="counter">653</h5>
				</div>
				<div class="col-md-4 w3l_schedule_bottom_right_grid1">
					<i class="fa fa-calendar-o" aria-hidden="true"></i>
					<h4>Events</h4>
					<h5 class="counter">823</h5>
				</div>
				<div class="col-md-4 w3l_schedule_bottom_right_grid1">
					<i class="fa fa-shield" aria-hidden="true"></i>
					<h4>Awards</h4>
					<h5 class="counter">45</h5>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
	<!-- //schedule-bottom -->
	<!-- banner-bootom-w3-agileits -->
	<div class="banner-bootom-w3-agileits">
		<div class="container">
			<h3 class="wthree_text_info">
				What's <span>Trending</span>
			</h3>

			<div class="col-md-5 bb-grids bb-left-agileits-w3layouts">
				<a href="dungcuhoctap/2/1.html">
					<div class="bb-left-agileits-w3layouts-inner grid">
						<figure class="effect-roxy">
							<img src="images/19080340_XX_1000x10005.jpg" alt=" "
								class="img-responsive" />
							<figcaption>
								<h3>
									<span>S</span>ale
								</h3>
								<p>Upto 55%</p>
							</figcaption>
						</figure>
					</div>
				</a>
			</div>
			<div class="col-md-7 bb-grids bb-middle-agileits-w3layouts">
				<a href="dungcuhoctap/2/1.html">
					<div class="bb-middle-agileits-w3layouts grid">
						<figure class="effect-roxy">
							<img
								src="images/bo-dung-cu-hoc-tap-cho-be-mat-hang-duoc-ban-voi-gia-sinh-vien-ap-dung-hoan-hang-khong-dung-mo-ta-de-dang.jpg"
								alt=" " class="img-responsive" />
							<figcaption>
								<h3>
									<span>S</span>ale
								</h3>
								<p>Upto 55%</p>
							</figcaption>
						</figure>
					</div>
				</a> <a href="dungcuhoctap/3/1.html">
					<div class="bb-middle-agileits-w3layouts forth grid">
						<figure class="effect-roxy">
							<img src="images/19091207_XX_1000x10007.jpg" alt=" "
								class="img-responsive">
							<figcaption>
								<h3>
									<span>S</span>ale
								</h3>
								<p>Upto 65%</p>
							</figcaption>
						</figure>
					</div>
				</a>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--/grids-->
	<!-- /new_arrivals -->
	<div class="new_arrivals_agile_w3ls_info">
		<div class="container">
			<h3 class="wthree_text_info">
				New <span>Arrivals</span>
			</h3>
			<div id="horizontalTab">
				<ul class="resp-tabs-list">
					<li>SỔ VỞ</li>
					<li>BÚT</li>
					<li>THƯỚC</li>
					<li>HỘP BÚT</li>
				</ul>
				<div class="resp-tabs-container">
					<!--/tab_one-->
					<div class="tab1">
						<c:forEach var="p" items="${productsNotebook}">
							<div class="col-md-3 product-men">
								<div class="men-pro-item simpleCart_shelfItem">
									<div class="men-thumb-item">
										<img src="${p.image}" alt="" class="pro-image-front"> <img
											src="${p.image}" alt="" class="pro-image-back">
										<div class="men-cart-pro">
											<div class="inner-men-cart-pro">
												<a href="single/${p.proId}.html"
													class="link-product-add-cart">Quick View</a>
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
														type="hidden" name="add" value="1" /> <input
														type="hidden" name="business" value=" " /> <input
														type="hidden" name="item_name" value="${p.name}" /> <input
														type="hidden" name="amount"
														value="${p.price - p.price*(p.discount/100)}" /> <input
														type="hidden" name="discount_amount" value="1.00" /> <input
														type="hidden" name="currency_code" value="VND" /> <input
														type="hidden" name="return" value=" " /> <input
														type="hidden" name="cancel_return" value=" " /> <a href=""><input  
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

					<div class="tab2">
						<c:forEach var="p" items="${productsPen}">
							<div class="col-md-3 product-men">
								<div class="men-pro-item simpleCart_shelfItem">
									<div class="men-thumb-item">
										<img src="${p.image}" alt="" class="pro-image-front"> <img
											src="${p.image}" alt="" class="pro-image-back">
										<div class="men-cart-pro">
											<div class="inner-men-cart-pro">
												<a href="single/${p.proId}.html"
													class="link-product-add-cart">Quick View</a>
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
														type="hidden" name="add" value="1" /> <input
														type="hidden" name="business" value=" " /> <input
														type="hidden" name="item_name" value="${p.name}" /> <input
														type="hidden" name="amount"
														value="${p.price - p.price*(p.discount/100)}" /> <input
														type="hidden" name="discount_amount" value="1.00" /> <input
														type="hidden" name="currency_code" value="VND" /> <input
														type="hidden" name="return" value=" " /> <input
														type="hidden" name="cancel_return" value=" " /> <a href=""><input 
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



					<div class="tab3">
						<c:forEach var="p" items="${productsRuler}">
							<div class="col-md-3 product-men">
								<div class="men-pro-item simpleCart_shelfItem">
									<div class="men-thumb-item">
										<img src="${p.image}" alt="" class="pro-image-front"> <img
											src="${p.image}" alt="" class="pro-image-back">
										<div class="men-cart-pro">
											<div class="inner-men-cart-pro">
												<a href="single/${p.proId}.html"
													class="link-product-add-cart">Quick View</a>
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
														type="hidden" name="add" value="1" /> <input
														type="hidden" name="business" value=" " /> <input
														type="hidden" name="item_name" value="${p.name}" /> <input
														type="hidden" name="amount"
														value="${p.price - p.price*(p.discount/100)}" /> <input
														type="hidden" name="discount_amount" value="1.00" /> <input
														type="hidden" name="currency_code" value="VND" /> <input
														type="hidden" name="return" value=" " /> <input
														type="hidden" name="cancel_return" value=" " /> <a href=""><input 
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
					<div class="tab4">
						<c:forEach var="p" items="${productsBox}">
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
														type="hidden" name="add" value="1" /> <input
														type="hidden" name="business" value=" " /> <input
														type="hidden" name="item_name" value="${p.name}" /> <input
														type="hidden" name="amount"
														value="${p.price - p.price*(p.discount/100)}" /> <input
														type="hidden" name="discount_amount" value="1.00" /> <input
														type="hidden" name="currency_code" value="VND" /> <input
														type="hidden" name="return" value=" " /> <input
														type="hidden" name="cancel_return" value=" " /> <a href=""><input 
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
				</div>
			</div>
		</div>
	</div>
	<!-- //new_arrivals -->
	<!-- /we-offer -->
	<div class="sale-w3ls">
		<div class="container">
			<h6>
				We Offer Flat <span>40%</span> Discount
			</h6>

			<a class="hvr-outline-out button2" href="dungcuhoctap/1/1.html">Shop
				Now </a>
		</div>
	</div>
	<!-- //we-offer -->
	<!--/grids-->

	<!--grids-->
	<!-- footer -->
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
					style="border: 0; margin-top: 40px;" allowfullscreen=""></iframe>
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
