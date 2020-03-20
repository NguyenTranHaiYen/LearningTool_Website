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
				<h1 style="margin-top: 30px">Quản Lí Danh Sách Sản Phẩm</h1>				
				<a class="btn btn-success" href="insert.html"><i class="fa fa-plus-circle"></i>Thêm Mới</a>
			</div>
		</div>
		<div class="clearfix"></div>
		<div class="row">
			<div class="col-md-12">
				<br />
				<div class="table-responsive">
					<table id="mytable" class="table table-bordred table-striped">
						<thead>
							<th>Tên</th>
							<th>Hình Ảnh</th>
							<th>Giá</th>
							<th>Khuyến Mãi(%)</th>
							<th>Loại Sản Phẩm</th>
							<th>Mô Tả</th>
							<th>Thông Tin</th>
							<th style="width: 50px;">Edit</th>
							<th style="width: 50px;">Delete</th>
						</thead>
						<tbody>
							<c:forEach var="item" items="${listProduct}">
								<tr>
									<td>${item.name}</td>
									<td><image width="100px" src="${item.image}" /></td>
									<td>${item.price}</td>
									<td>${item.discount}</td>
									<td>${item.category.cateName}</td>
									<td>${item.description}</td>
									<td>${item.information}</td>
									<td><a class="btn btn-success" href="${item.proId}.html"><span
											class="glyphicon glyphicon-pencil"></span></a></td>
									<td><a class="btn btn-danger" href="delete/${item.proId}.html"><span
											class="glyphicon glyphicon-trash"></span></a></td>
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
