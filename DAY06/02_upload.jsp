<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[ 02_upload.jsp ]</title>
</head>
<body>
	<form action="upload2.do" method="post" enctype="multipart/form-data">
		1. 파일 지정하기 : <input type="file" name="uploadFile01">
		2. 파일 지정하기 : <input type="file" name="uploadFile02">
		3. 파일 지정하기 : <input type="file" name="uploadFile03">
		<input type="submit" value="전송">
	</form>
</body>
</html>