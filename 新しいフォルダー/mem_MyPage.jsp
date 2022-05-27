<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<link href="/Kaihatu_ensyu2/css/style.css" rel="stylesheet">
<meta charset="UTF-8">
<title>マイページ</title>
</head>
<body>
	<div class="sample_h_7">
		<p>マイページ</p>


		<ul class="snip1217">
			<div id="menu">
				<li class="current"><a href="top.jsp">ホーム</a></li>
				<li><a href="mem_MyPage.jsp">マイページ</a></li>
				<li><a href="mem_Reg.jsp">会員登録</a></li>
				<li><a href="mem_Login.jsp">ログイン</a></li>
			</div>
		</ul>
	</div>
	<br>


		${loginstate}

		<br>


		氏名：${member.name} <br> 電話番号：${member.tel} <br>
		E-mail:${member.email} <br> ログインID：${member.login_id} <br> <br>
		<br> <a href="mem_Ch.jsp" class="btn btn-flat"><span>変更</span></a>
		<a href="mem_Lev.jsp" class="btn btn-flat"><span>退会</span></a>
	<form action="/Kaihatu_ensyu2/checkReserveServlet?action=check" method="post">
	<input type ="submit" value="予約確認">
	</form>

<br>
<br>
		<form action="/Kaihatu_ensyu2/LogoutServlet?action=logout" method="post">
			<label> <input type="submit" value="ログアウト" class="button"> <input
				type="hidden" name="action" value="logout">
			</label>
			<br>
		</form>
		

		<footer id="f3">
			<h1 class="f">新宿トラベル</h1>
			<h2 class="f1">&copy; Shinjuku Travel</h2>
		</footer>


</body>
</html>