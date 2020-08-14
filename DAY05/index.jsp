<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
    <meta charset="UTF-8">
    <title>index</title>
    <link rel="stylesheet" href="../css/banner.css">
	<link rel="stylesheet" href="../css/listmain.css">
</head>
<body align="center">
<%
	String CCODE = (String)session.getAttribute("C_CODE");
	System.out.println("[index.jsp] 넘어온 CCODE : " + CCODE);
%>

<jsp:include page="../html/dong_header.html"></jsp:include>

      <div class="center" align="center"><a href="leader.jsp?CCODE=<%=CCODE%>">Be a Leader!</a></div>
	
	<!-- list Popular -->
<div class="bigbox">Popular<hr>
	</div>
	<div>
		<table>
			<tr>
				<td>
					<div>
						<a href="detail.jsp"><img src="../images/work.jpg" class="photo"></a>
					</div>
				</td>
			</tr>
			<tr>
				<td>
					<div>Let's work out together!</div>
				</td>
			</tr>
		</table>
	</div>
<div class="bigbox">New<hr>
	</div>
	<div>
		<table>
			<tr>
				<td>
					<div class="photo"></div>
				</td>
			</tr>
			<tr>
				<td>
					<div>Let's work out together!</div>
				</td>
			</tr>
		</table>
	</div>
    <jsp:include page="../html/dong_footer.html"></jsp:include>
</body>
</html>
