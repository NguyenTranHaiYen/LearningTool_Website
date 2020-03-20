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
			<div class="col col-xs-12">
				<h1 style="margin-top: 30px">Lịch Sử Mua Hàng</h1>
			</div>
		</div>
		<div class="clearfix"></div>
		<div class="row">
			<div class="col-md-12">
				<br />
				<div class="table-responsive">
					<table id="mytable" class="table table-bordred table-striped">
						<thead>
							<th>Mã Giỏ Hàng</th>
							<th>Tên Khách Hàng</th>
							<th>Ngày Tạo Giỏ Hàng</th>
							<th>Địa Chỉ</th>
							<th>Số Điện Thoại</th>
							<th>Tình Trạng Giỏ Hàng</th>
							<th style="width: 50px;">Chi Tiết</th>
						<tbody>
							<c:forEach var="item" items="${listCart}">
								<tr>
									<td>${item.cartId}</td>
									<td>${item.userid.name}</td>
									<td>${item.buyDate}</td>
									<td>${item.userid.address}</td>
									<td>${item.userid.phone}</td>

									<c:choose>
										<c:when test="${item.isPaid==0}">
											<td>Đang Mua Hàng</td>
										</c:when>
										<c:when test="${item.isPaid==1}">
											<td>Đã Hoàn Tất</td>
										</c:when>
										<c:when test="${item.isPaid==3}">
											<td>Đang Giao Hàng</td>
										</c:when>
										<c:when test="${item.isPaid==2}">
											<td>Đang Chờ Xử Lý</td>
										</c:when>
									</c:choose>

									<td><a class="btn btn-success"
										href="history_cart/${item.cartId}.html"><i
											class="fa fa-cart-arrow-down"></i></a></td>

								</tr>
							</c:forEach>
						</tbody>
					</table>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
