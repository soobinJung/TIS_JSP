<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
	<title>Leader</title>
	<link rel="stylesheet" href="../css/becomeleader.css">
</head>
<body>
		<jsp:include page="../html/dong_header.html"></jsp:include>
		<div class="box">
		Make your own class
			<div class="content">
				title 					<br><input type="text" class="input"><br><br>
				subject 				<br><input type="text" class="input"><br><br>
				
				Max number of people 	<br>
				<select name="keyfield" class="select">
					<option value="" selected>4</option>
					<option value="">5</option>
					<option value="">6</option>
					<option value="">7</option>
					<option value="">8</option>
					<option value="">9</option>
					<option value="">10</option>
				</select>
				<p>
				
				supplies 				<br><input type="text" class="input"><br><br>
				intro 					<br><input type="text" class="input"><br><br>
				picture 				<br><input type="text" class="input"><br><br>
				
				Runtime					<br>
				<select name="keyfield" class="select">
					<option value="" selected>Runtime</option>
					<option value="">half</option>
					<option value="">1hour</option>
					<option value="">1hour half</option>
					<option value="">2hour</option>
					<option value="">2hour half</option>
					
				</select>
				<p>
				
				Level					<br>
				<select name="keyfield" class="select">
					<option value="" selected>Level</option>
					<option value="">Basic</option>
					<option value="">Middle</option>
					<option value="">High</option>
				</select>
				<p>
				<a href="index.jsp"><input type="submit" value="Cancel" class="buttonNo"></a>
				<a href="index.jsp"><input type="submit" value="Complete" class="button"></a>
			</div>
		</div>
		
</body>
</html>