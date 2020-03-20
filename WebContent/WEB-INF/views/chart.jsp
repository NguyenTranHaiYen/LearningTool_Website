<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Profile List</title>
<base href="${pageContext.servletContext.contextPath}/">
<!-- css -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />

<!--js-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/font-awesome.css" rel="stylesheet">
<link href="css/easy-responsive-tabs.css" rel='stylesheet'
	type='text/css' />
<link
	href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800"
	rel="stylesheet">
<link
	href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic'
	rel='stylesheet' type='text/css'>

</head>
<body>

	<div class="container">

		<div class="row">
			<div class="col-md-12">
				<br />
				<div class="table-responsive">
					<c:choose>
						<c:when test="${isPaid==0}">
							<table id="mytable" class="table table-bordred table-striped">
								<th><h1>1. Đang Mua Hàng</h1></th>
								<th style="display: none"><h1>2. Xác Nhận Đơn Hàng</h1></th>
								<th style="display: none"><h1>3. Đang Giao Hàng</h1></th>
								<th style="display: none"><h1>4. Hoàn Tất</h1></th>
								<tbody>

									<tr>

										<td><i style="font-size: 200px; color: green"
											class="fa fa-shopping-cart"></i></td>
										<td style="display: none"><button>
												<i style="font-size: 200px; color: green"
													class="fa fa-check"></i>
											</button></td>
										<td style="display: none"><i
											style="font-size: 200px; color: green" class="fa fa-car"></i></td>
										<td style="display: none"><button>
												<i style="font-size: 200px; color: green"
													class="fa fa-check-circle"></i>
											</button></td>


									</tr>
								</tbody>
							</table>
						</c:when>
						<c:when test="${isPaid==2}">
							<table id="mytable" class="table table-bordred table-striped">
								<th><h1>1. Đang Mua Hàng</h1></th>
								<th><h1>2. Xác Nhận Đơn Hàng</h1></th>
								<th style="display: none"><h1>3. Đang Giao Hàng</h1></th>
								<th style="display: none"><h1>4. Hoàn Tất</h1></th>
								<tbody>

									<tr>

										<td><i style="font-size: 200px; color: green"
											class="fa fa-shopping-cart"></i></td>
										<td><a href="accept/${id}.html"><button>
													<i style="font-size: 200px; color: green"
														class="fa fa-check"></i>
												</button></a></td>
										<td style="display: none"><i
											style="font-size: 200px; color: green" class="fa fa-car"></i></td>
										<td style="display: none"><button>
												<i style="font-size: 200px; color: green"
													class="fa fa-check-circle"></i>
											</button></td>


									</tr>
								</tbody>
							</table>
						</c:when>
						<c:when test="${isPaid==1}">
							<table id="mytable" class="table table-bordred table-striped">
								<th><h1>1. Đang Mua Hàng</h1></th>
								<th><h1>2. Xác Nhận Đơn Hàng</h1></th>
								<th><h1>3. Đang Giao Hàng</h1></th>
								<th><h1>4. Hoàn Tất</h1></th>
								<tbody>

									<tr>

										<td><i style="font-size: 200px; color: green"
											class="fa fa-shopping-cart"></i></td>
										<td><button>
												<i style="font-size: 200px; color: green"
													class="fa fa-check"></i>
											</button></td>
										<td><i style="font-size: 200px; color: green"
											class="fa fa-car"></i></td>
										<td><button>
												<i style="font-size: 200px; color: green"
													class="fa fa-check-circle"></i>
											</button></td>


									</tr>
								</tbody>
							</table>
						</c:when>
						<c:when test="${isPaid==3}">
							<table id="mytable" class="table table-bordred table-striped">
								<th><h1>1. Đang Mua Hàng</h1></th>
								<th><h1>2. Xác Nhận Đơn Hàng</h1></th>
								<th><h1>3. Đang Giao Hàng</h1></th>
								<th><h1>4. Hoàn Tất</h1></th>
								<tbody>

									<tr>

										<td><i style="font-size: 200px; color: green"
											class="fa fa-shopping-cart"></i></td>
										<td><button>
												<i style="font-size: 200px; color: green"
													class="fa fa-check"></i>
											</button></td>
										<td><i style="font-size: 200px; color: green"
											class="fa fa-car"></i></td>
										<td><a href="finish/${id}.html"><button>
													<i style="font-size: 200px; color: green"
														class="fa fa-check-circle"></i>
												</button></a></td>


									</tr>
								</tbody>
							</table>
						</c:when>
					</c:choose>
					<div class="row">
						<div class="col col-xs-12">
							<h1 style="margin-top: 30px">Chi Tiết Giỏ Hàng</h1>
						</div>
					</div>
					<div class="clearfix"></div>
					<div class="row">
						<div class="col-md-12">
							<br />
							<div class="table-responsive">
								<table id="mytable" class="table table-bordred table-striped">
									<thead>
										<th>Tên Sản Phẩm</th>
										<th>Hình Ảnh</th>
										<th>Giá</th>
										<th>Số Lượng</th>
										<th>Thành Tiền</th>

									</thead>
									<tbody>
										<c:forEach var="item" items="${listItem}">
											<tr>
												<td>${item.proid.name}</td>
												<td><image width="100px" src="${item.proid.image}" /></td>
												<td>${item.proid.price-((item.proid.discount/100)*item.proid.price)}</td>
												<td><input
													style="display: inline; width: 50%; height: 51px; margin-top: 0px"
													min="0" class="form-control text-center"
													value="${item.quantity}" /></td>
												<td>${(item.proid.price-((item.proid.discount/100)*item.proid.price))*item.quantity}</td>

											</tr>
										</c:forEach>


										<tr class="visible-xs">
											    
											<td class="text-center"><strong>Tổng 200.000 đ</strong>
												    </td>    
										</tr>
										   
										<tr>
											       
											<td colspan="2" class="hidden-xs"> </td>     
											<td class="hidden-xs text-center" style="font-size: 23px"><strong>Tổng
													tiền ${total}</strong>     </td>    


										</tr>

									</tbody>
								</table>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>

					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
