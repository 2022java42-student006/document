<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link href="/Kaihatu_ensyu2/css/style.css" rel="stylesheet">
<meta charset="UTF-8">
<title>宿プラン一覧</title>
</head>
<body>
	<h3>新宿トラベル</h3>


	<a href="hotel_SeaNameRes.jsp">戻る</a>
	<table border="1">
		<tr>
			<td>宿名</td>
			<td>住所</td>
			<td>電話番号</td>
			<td>チェックイン時間</td>
			<td>チェックアウト時間</td>
		</tr> 
		<tr>
			<td>${acc.ac_name}</td>
			<td>${acc.ac_address}</td>
			<td>${acc.ac_tel}</td>
			<td>${acc.checkin_time}時</td>
			<td>${acc.checkout_time}時</td>
		</tr>
		</table>
		
	<br><br>
	<h3>プラン一覧</h3>
	<table border="1">
		<tr>
			<td>プラン名</td>
			<td>プラン内容</td>
			<td>価格（1人当たり）</td>
		</tr> 
			<c:forEach items="${acc_plan}" var="plan">
			<tr>
			<td align="center"><a href="/Kaihatu_ensyu2/PlanChoiseServlet?action=choice&plan_id=${plan.plan_id}">${plan.plan_name}</td>
			<td align="center">${plan.plan_sub}</td>
			<td align="center">${plan.price}円</td>
			</tr>
			</c:forEach>
		</table>
	<footer id="f3">
		<h1 class="f">新宿トラベル</h1>
		<h2 class="f1">&copy; Shinjuku Travel</h2>
	</footer>
</body>
</html>