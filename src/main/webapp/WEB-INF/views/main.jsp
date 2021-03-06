<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
	<title>Main Page</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/style/css/bootstrap.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/style/css/board.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/style/css/stimenu.css" />
	<link href='http://fonts.googleapis.com/css?family=PT+Sans+Narrow&v1' rel='stylesheet' type='text/css' />
	<link href='http://fonts.googleapis.com/css?family=Wire+One&v1' rel='stylesheet' type='text/css' />

	<link href='http://fonts.googleapis.com/css?family=Raleway:400,300,700' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/style/css/cs-select.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/style/css/cs-skin-elastic.css" />
</head>
<style>
	#container:after{content: " ";display: block;height: 0;clear: both;visibility: hidden;}
	
	.header{width:100%;font-size:12px;padding:15px;text-align:right;color:#fff;background-color:#000;}
	.left_side{float:left;width:300px;height:100%;background-color:#4c4c4c;padding-top:20px;color:#fff}
	.left_side .sch{margin-left:20px;}
	.left_side .lst_cate{list-style:none;padding:0px;line-height:30px;margin-top:20px;}
	.left_side .lst_cate li{text-transform:uppercase;padding-left:20px;line-height:40px;font-size:16px;border-bottom:1px solid;}
	.left_side .lst_cate li:hover{background-color:#fff;color:#000;}
	.left_side .btn_sch{margin-left: 10px;color: #333;border: 0px;padding:3px 10px;border-radius:3px;}
	.right_side{float:right;width:900px;padding:20px;}
	.right_side .lst_npr{float:left;}
	.right_side .lst_buser{float:left;margin-left:20px;}
	.right_side .lst_bpr{display:inline-block;width:100%;margin-top:20px;}
	.right_side h1{font-size:25px;}
	.lst_buser:after{display: block;overflow: hidden;clear: both;height: 0;content: '';}

</style>
<body style="width:1200px;margin:0 auto">
	<div id="container"> 
	<div class="header">
		<% if( session.getAttribute("userEmail") != null ) { %>
			Hello ${userName}.&nbsp;
		<%} else{ %>
			LOGIN &nbsp;
		<% } %> 
		MY ACCOUNT &nbsp; 
	</div>
	<div class="left_side">
		<input type="text" class="sch"><button class="btn_sch">Search</button>
		<ul class="lst_cate">
			<c:forEach var="Category" items="${cate_list}">
			<li>${Category.getCategoryName()}</li>
			</c:forEach>
		</ul>
	</div>
	<div class="right_side">
			<div class="lst_npr">
				<h1>Newest Portfolio</h1>
				<table class="table table-hover">
					<thead>
						<tr>
							<th style="width:250px;">Title</th>
							<th>Category</th>
							<th style="width:120px;">UserName</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="customized_board" items="${newest_blist}">
							<tr>
								<td>${customized_board.getTitle()}</td>
								<td>${customized_board.getCategoryName()}</td>
								<td>${customized_board.getUserName()}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div class="lst_buser">
				<h1>Best Users</h1>
				<table class="table table-hover">
					<thead>
						<tr>
							<th>UserName</th>
							<th>Level</th>
							<th>Comment Count</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="customized_user" items="${best_ulist}">
							<tr>
								<td>${customized_user.getUserName()}</td>
								<td>${customized_user.getLevelName()}</td>
								<td>${customized_user.getC_count()}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>

		<div class="lst_bpr">
			<h1>Best Portfolio</h1>
			<table class="table table-hover">
				<thead>
					<tr>
						<th style="width:250px;">Title</th>
						<th>Category</th>
						<th style="width:120px;">UserName</th>
						<th>Count</th>
						<th>Review Count</th>
						<th>Like</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="customized_board" items="${best_blist}">
						<tr>
							<td>${customized_board.getTitle()}</td>
							<td>${customized_board.getCategoryName()}</td>
							<td>${customized_board.getUserName()}</td>
							<td>${customized_board.getCount()}</td>
							<td>${customized_board.getR_count()}</td>
							<td>${customized_board.getL_count()}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>
<div>dsadsa</div>
</body>
</html>


