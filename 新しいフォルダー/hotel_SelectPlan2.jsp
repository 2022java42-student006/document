<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link href="/Kaihatu_ensyu2/css/style.css" rel="stylesheet">
<meta charset="UTF-8">
<title>宿泊人数、チェックイン、チェックアウト入力</title>

</head>
<body>

	<a href="hotel_SelectPlan1.jsp">戻る</a>
	<table border="1">
		<tr>
			<td>宿名</td>
			<td>住所</td>
			<td>プラン名</td>
			<td>プラン内容</td>
			<td>価格（1人当たり）</td>
		</tr>

		<tr>
			<td align="center">${choice.ac_name}</td>
			<td align="center">${choice.ac_address}</td>
			<td align="center">${choice.plan_name}</td>
			<td align="center">${choice.plan_sub}</td>
			<td align="center">${choice.price}円</td>
		</tr>

	</table>

	<form action="/Kaihatu_ensyu2/ReservationServlet?action=reserve"
		method="post">
		<br> <br> プランID:プラン<input type="tel" name="plan_id" size="1"
			maxlength="4"> <br> <br> 宿泊人数:<input type="tel"
			name="num_people" size="4" maxlength="2">人 <br> <br>

		チェックイン日
		<p value="Jan">
			1月 <select name="ci_date">

				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
				<option value="6">6</option>
				<option value="7">7</option>
				<option value="8">8</option>
				<option value="9">9</option>
				<option value="10">10</option>
				<option value="11">11</option>
				<option value="12">12</option>
				<option value="13">13</option>
				<option value="14">14</option>
				<option value="15">15</option>
				<option value="16">16</option>
				<option value="17">17</option>
				<option value="18">18</option>
				<option value="19">19</option>
				<option value="20">20</option>
				<option value="21">21</option>
				<option value="22">22</option>
				<option value="23">23</option>
				<option value="24">24</option>
				<option value="25">25</option>
				<option value="26">26</option>
				<option value="27">27</option>
				<option value="28">28</option>
				<option value="29">29</option>
				<option value="30">30</option>
				<option value="31">31</option>
			</select>日
		</p>


		<br> <br> チェックアウト日
		<p value="Jan">
			1月 <select name="co_date">

				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
				<option value="6">6</option>
				<option value="7">7</option>
				<option value="8">8</option>
				<option value="9">9</option>
				<option value="10">10</option>
				<option value="11">11</option>
				<option value="12">12</option>
				<option value="13">13</option>
				<option value="14">14</option>
				<option value="15">15</option>
				<option value="16">16</option>
				<option value="17">17</option>
				<option value="18">18</option>
				<option value="19">19</option>
				<option value="20">20</option>
				<option value="21">21</option>
				<option value="22">22</option>
				<option value="23">23</option>
				<option value="24">24</option>
				<option value="25">25</option>
				<option value="26">26</option>
				<option value="27">27</option>
				<option value="28">28</option>
				<option value="29">29</option>
				<option value="30">30</option>
				<option value="31">31</option>
			</select>日
		</p>


		<br> <br> <input type="submit" value="予約">
	</form>

	<footer id="f3">
		<h1 class="f">新宿トラベル</h1>
		<h2 class="f1">&copy; Shinjuku Travel</h2>
	</footer>
</body>
</html>