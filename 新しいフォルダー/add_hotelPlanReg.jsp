<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ホテルプラン情報登録</title>
</head>

	<body>
	<jsp:include page="/addMenu.jsp" />
		<h3>宿プラン登録</h3>
		
		<table border=1>
		<tr><td>宿名 </td><td>住所  </td><td>チェックイン時間  </td><td>チェックアウト時間  </td><td>電話番号</td></tr>
		<tr><td>${hotel.ac_name}  </td><td>${hotel.ac_address}  </td><td>${hotel.checkin_time}時  </td><td>${hotel.checkout_time}  </td><td>${hotel.ac_tel}</td></tr>
		
		
		</table>
		
		<form action="/Kaihatu_ensyu2/Add_RegHotelPlanServlet" method="post">
			プラン名<input type="text" name="plan_name"><br>
			プラン内容<input type="text" name="plan_sub"><br>
			金額<input type="text" name="price"><br>
			部屋数<input type="text" name="room_num"><br>
			<input type="submit"  value="登録">
		</form>
		
		
		<table>
		<c:forEach items="${plans}" var="plan">
		<tr><td>プラン名  </td><td>プラン内容  </td><td>金額(/人) </td><td>部屋数 </td></tr>
		<tr><td> ${plan.plan_name}</td><td>${plan.plan_sub }  </td><td>${plan.price } </td><td>${plan.room_num } </td></tr>
		
		</c:forEach>
		</table>
		
		<p>削除</p>
		
		<a href="/Kaihatu_ensyu2/TopServlet">トップに戻る</a>
	</body>
</html>