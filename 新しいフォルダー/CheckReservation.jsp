<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>予約確認</title>
</head>
<body>


	<h3>現在の予約</h3>
	
	<br><br>
	<a href="mem_MyPage.jsp" >マイページに戻る</a>

	<table border="1">
			<td>宿名</td>
			<td>住所</td>
			<td>プラン名</td>
			<td>プラン内容</td>
			<td>価格（1人当たり）</td>
			<td>人数</td>
			<td>チェックイン日</td>
			<td>チェックイン時間</td>
			<td>チェックアウト日</td>
			<td>チェックアウト時間</td>
		</tr> 
			<c:forEach items="${relist}" var="reserve">
			<tr>
			<td align="center">${reserve.ac_name}</td>
			<td align="center">${reserve.ac_address}</td>
			<td align="center">${reserve.plan_name}</td>
			<td align="center">${reserve.plan_sub}</td>
			<td align="center">${reserve.price}円</td>
			<td align="center">${reserve.num_people}人</td>
			<td align="center">1月${reserve.ci_date}日</td>
			<td align="center">${reserve.checkin_time}時</td>
			<td align="center">1月${reserve.co_date}日</td>
			<td align="center">${reserve.checkout_time}時</td>
			</tr>
			</c:forEach>
		</table>
</body>
</html>