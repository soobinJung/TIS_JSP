<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="ssi.jsp" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
	<title>Leader1</title>
	<link rel="stylesheet" href="../css/becomeleader.css">
</head>
<body>
	<%
		try{
			String CCODE = (String)session.getAttribute("C_CODE");
			msg="SELECT COUNT(*) AS CNT FROM LEADER WHERE CCODE=" + CCODE;
			ST=CN.createStatement();
			RS=ST.executeQuery(msg);
			if(RS.next()==true){
				if(RS.getInt("CNT") != 0){
					System.out.println("이미 리더로 등록 되어 있습니다.");
					System.out.println("이 사람의 고객코드는 " + CCODE);
					response.sendRedirect("leader2.jsp?C_CODE="+CCODE);
				} else {
					System.out.println("리더로 등록한적이 없습니다.");
					response.sendRedirect("leader.jsp?C_CODE="+CCODE);
				}
			}
		} catch (Exception ex){System.out.println("에러 : " + ex);}
	%>
		<jsp:include page="../html/dong_header.html"></jsp:include>
			<div class="box">
				<div class="content">
				Become a Leader!<br><br>
				<form method="post" action="leaderSave.jsp">
					Nickname as a Leader.<br>
					<input type="text" class="input" name="LNICK" value=""><br><br>
					
					Introduce your expertise.<br>
					<input type="text" class="input" name="LINTRO" value=""><br><br>
					
					지역<br>
					<select class="select" name="LLOCAL">
						<option value="" selected>지역</option>
						<option value="00">서울</option>
						<option value="13">인천</option>
						<option value="16">경기</option>
						<option value="26">강원</option>
						<option value="09">부산</option>
						<option value="67">대구</option>
						<option value="93">제주</option>
					</select>
					
					<br><br>
					
					Bank name<br>
					<select class="select" name="BANK">
						<option value="" selected>BANK</option>
						<option value="카카오뱅크">KAKAO</option>
						<option value="하나은행">HANA</option>
					</select>
					
					<p>
					Bank account number<br>
					<input type="text" class="input" name="BANKNUM" value=""><br><br>
				
				
				<a href="index.jsp"><input type="submit" value="Back" class="buttonNo"></a>
				<input type="submit" value="Next" class="button">
				</form>
			</div>
		</div>
</body>
</html>