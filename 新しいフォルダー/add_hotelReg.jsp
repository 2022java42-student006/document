<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>宿情報登録</title>
</head>

	<body>
	<jsp:include page="/addMenu.jsp" />
		<h3>宿登録</h3>
		
		<form action="/Kaihatu_ensyu2/Add_hotelServlet" method="post">
			宿名<input type="text" name="hotel_name"><br>
			
			住所<input type="text" name="hotel_address"><br>
			電話番号<input type="text" name="hotel_tel"><br>
			部屋数<input type="text" name="hotel_room"><br>
			
			チェックイン時間<input type="text" name="checkin_time">時<br>
			チェックアウト時間<input type="text" name="checkout_time">時<br>
			<input type="submit" value="登録">
		</form>
		<a href="add_hotelTop.jsp">戻る</a>
	</body>
	
</html>