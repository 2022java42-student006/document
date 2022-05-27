<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>宿情報</title>
</head>

<body>
	<jsp:include page="/addMenu.jsp" />
	<h3>宿情報</h3>

	<table>
		<tr>
			<td>宿名</td>
			<td>${hotel.ac_name}</td>
		</tr>
		
		<tr>
			<td>住所</td>
			<td>${hotel.ac_address}</td>
		</tr>
		<tr>
			<td>電話番号</td>
			<td>${hotel.ac_tel}</td>
		</tr>
		<tr>
			<td>部屋数</td>
			<td>${hotel.ac_room}</td>
		</tr>
		
	<tr>
			<td>チェックイン時間</td>
			<td>${hotel.checkin_time}時</td>
		</tr>
		<tr>
			<td>チェックアウト時間</td>
			<td>${hotel.checkout_time}時</td>
		</tr>

	</table>

	<form action="/Kaihatu_ensyu2/add_hotelCh.jsp" method="post">
		<input type="submit" value="変更">

	</form>

	<form action="/Kaihatu_ensyu2/add_hotelDel.jsp" method="post">
		<input type="submit" value="削除">

	</form>
	<br>
	<br>

	
</body>

</html>