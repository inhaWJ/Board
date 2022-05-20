<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/custom.css">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<title>동호회 게시판</title>
</head>
<body>
	<%
	 int boardID = 0;
		if (request.getParameter("boardID") != null){
			boardID = Integer.parseInt(request.getParameter("boardID"));
		}
	%>
	<div class="container" align="center">
		<div class="col-lg-10">
			<div class="jumbotron" style="padding-top: 20px;">				
				<h3><br>검색창</h3>
				<form name="c_search">
				<div>
					<input type="text" id="search" class="form-control me-sm-2" placeholder="입력">
					<br>
					<input type="button" class="btn btn-primary" onclick="send(<%=boardID %>)" value="검색">
					</div>
				</form>
			</div>
		</div>
		<div class="col-lg-4"></div>
	</div>
</body>
<script>
	function send(boardID){
		var sb;
		var search = document.c_search.search.value;
		sb = "searchBbs.jsp?boardID="+boardID+"&search=" + search;
		window.opener.location.href= sb;
		window.close();
	}
</script>
</html>