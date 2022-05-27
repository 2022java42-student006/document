<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<link href="/Kaihatu_ensyu2/css/kanri_style.css" rel="stylesheet">
<title></title>
</head>

	<body>
	<div class="text1">
	<jsp:include page="/addMenu.jsp" />
		<br>
		
		ようこそ　${kanri.kanri_name}　さん<br>
		<a href="add_memTop.jsp" class="text2">会員情報管理</a><br>
		<a href="add_hotelTop.jsp" class="text2">宿情報管理</a><br>
		<a href="add_Login.jsp" class="text2">戻る</a>
	</div>
	</body>

</html>