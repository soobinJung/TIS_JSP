<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>DETAIL</title>
    <link rel="stylesheet" href="../css/style.css">
	<link rel="stylesheet" href="../css/detail.css">
</head>
<body>
    <jsp:include page="../html/dong_header.html"></jsp:include>
	
	
	
	<div class="titlebox">
		TITLE
	</div>
	
	
			<div class="photobox">
				<a href="detail.jsp"><img src="../images/work.jpg" class="photo"></a>
				<a href="detail.jsp"><img src="../images/work.jpg" class="photo"></a>
				<a href="detail.jsp"><img src="../images/work.jpg" class="photo"></a>
			</div>
	
	
	<div class="title">
		<img src="" class="profile_picture">
		Introduce your class!
	</div>


	<div>
			<div class="intro_text">
			Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nisl tincidunt eget nullam non. Quis hendrerit dolor magna eget est lorem ipsum dolor sit. Volutpat odio facilisis mauris sit amet massa. Commodo odio aenean sed adipiscing diam donec adipiscing tristique. Mi eget mauris pharetra et. Non tellus orci ac auctor augue. Elit at imperdiet dui accumsan sit. Ornare arcu dui vivamus arcu felis. Egestas integer eget aliquet nibh praesent. In hac habitasse platea dictumst quisque sagittis purus. Pulvinar elementum integer enim neque volutpat ac.
			</div>
	</div>
	
	<br>
	
	<div class="schedule">
		<table class="schedule_table" border=1 cellspacing=0>
				<tr>
					<td>개강날짜</td>
					<td>장소</td>
					<td>시작시간</td>
					<td>런타임</td>
					<td>금액</td>
					<td>최대인원</td>
					<td>신청하기</td>		
				</tr>
				<tr>
					<td>2020-08-23</td>
					<td>삼산체육관</td>
					<td>3:00PM</td>
					<td>60분</td>
					<td>10,000원</td>
					<td>8명</td>
					<td>
						<input type="button" value="신청하기">
					</td>		
				</tr>
		</table>
	</div>
	
	<div class="supplies_title">
		Supplies
	</div>
	<div class="supplies_content">
		1. Supplies content <br>
		2. Supplies content <br>
	</div>
	
	
	<br>
	
	
	<div class="comment_title">
		Comment
	</div>
	
	<div class="comment_name">
		<img src="" class="comment_picture"> 정수빈 2020년 6월 3일
	</div>
	
	<div class="comment_text">
		재밌었어요!
	</div>
    <jsp:include page="../html/dong_footer.html"></jsp:include>
</body>
</html>
