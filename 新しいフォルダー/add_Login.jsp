<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html>
<head>
<link href="/Kaihatu_ensyu2/css/kanri_style.css" rel="stylesheet">
<meta charset="UTF-8">
<title>管理者ログイン画面</title>
</head>

	<body>
	<div class="text1">
	
	<jsp:include page="/addMenu2.jsp" />
		<h3>管理者ログイン</h3>
		<br>
				
				<form action="/Kaihatu_ensyu2/Add_LoginServlet?action=login_info" method="post">
				管理者ID:
				
				<input type="text" name="login_id" class="text2">
				
				<br>
				パスワード:
				
				<input type="password" name="password" class="text2"><br>
				
				
				<input class="text2" type="submit" value="ログイン" >
				
				</form>
				<br>	
				<a href="top.jsp">戻る</a>
		
		</div>
	</body>
</html>