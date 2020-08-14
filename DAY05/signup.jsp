<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="ssi.jsp" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
	<title>SIGNUP.jsp</title>
	<link rel="stylesheet" href="../css/signup.css">
	<script src="../js/signup.js"></script>
</head>
<body>
	<jsp:include page="../html/dong_header.html"></jsp:include>
	<form name="signup" action="signupSave.jsp">
    <div class="all" align="center">
    <div class="table" align="center"></div>
    <table class="box">
        <tr align="center"><td colspan="3">
            <font size="6pt">회원가입<hr></font>
        </td></tr>

        <tr><td><br></td></tr>
		
		<tr align="center">
            <td class="td" align="right">*이름</td>
            <td><input type="text" size="30" class="input" id="NAME" name="NAME" value="" maxlength="4"></td>
        </tr>
		
        <tr align="center">
            <td align="right">*아이디</td>
            <td align="center">
                <input type="text" size="30" class="input_id" id="ID" name="ID" value="" maxlength="15">
                <input type="button" class="button_check" value="중복확인" onclick="checkId();">
                <br><span id="id_ch"></span>
            </td>
        </tr>
        
        
        
        
        <tr align="center">
            <td align="right">*비밀번호</td>
            <td><input type="password" size="30" class="input" id="PW" name="PW" value="" onKeyup="hidepw(this, 4);">
            </td>
        </tr>
        
        
        
        
        <tr align="center">
            <td align="right">*비밀번호 확인</td>
            <td>
            	<input type="password" size="30" class="input" id="PW2" name="PW2" value="1234" onKeyup="checkpw();"><br>
            	<label id="pwcon"></label>
            </td>
        </tr>
        
        
        <tr align="center">
            <td align="right">*이메일</td>
            <td>
               <input type="text" size="30" class="input" id="EMAIL" name="EMAIL" value="@tis.com" onkeyup ="checkEmail()">
               <br>
               <span id = "emailspan"></span>
            </td>
        </tr>
        
        
        
        <tr align="center">
            <td align="right">*핸드폰번호</td>
            <td>
            	<input type="text"  class="phone" id="PHONE1" name="PHONE1" maxlength="3" value="010">
                <input type="text"  class="phone" id="PHONE2" name="PHONE2" maxlength="4" value="">
                <input type="text"  class="phone" id="PHONE3" name="PHONE3" maxlength="4" value="">
            </td>
        </tr>
        
        
        
        
        <tr>
            <td align="right">*성별</td>
            <td align="center" colspan=2>
                <input type="button" class="button_gender" value="여자" id="GENDER_F" name="GENDER_F" onclick="Fclick();">
                <input type="button" class="button_gender" value="남자" id="GENDER_M" name="GENDER_M" onclick="Mclick();">
                <input type="hidden" value="" name="gendervalue" id="gendervalue">
            </td>
            <td></td>
        </tr>
        
        
         <tr align="center">
            <td align="right">*생년월일</td>
            <td>
               <input type="text"          size="30"       class="input" 
                      id="BIRTH"          name="BIRTH"    maxlength="6"
                      value="951119"   onKeyup="checkBirth();"    ><br>
               <label id="birsapn"></label>
            </td>
        </tr>
        
		<tr align="center">
		    <td align="right">*지역</td>
        	<td>	
					<select class="input" name="JUSO">
						<option value="" selected>지역</option>
						<option value="00">서울</option>
						<option value="13">인천</option>
						<option value="16">경기</option>
						<option value="26">강원</option>
						<option value="09">부산</option>
						<option value="67">대구</option>
						<option value="93">제주</option>
					</select>
			</td>
        </tr>
        
        
        
        
        
        
        <tr align="center">
            <td align="right">프로필사진</td>
            <td>
            		<input type="file" class="file" id="PICTURE" name="PICTURE" onchange="handleFileSelect()">
            		<input type="hidden" id="PICTURE_NAME" value="">
            </td>
            <td colspan="2"></td>
        </tr>
        
        <tr align="center">
            <td align="right"></td>
            <td>
             		<div class="preview" id="preview"></div>
            </td>
            <td colspan="2"></td>
        </tr>
        
        
        
        <tr>
            <td align="right" colspan="3">
            	<br>
                            이용약관 동의<input type="checkbox" name="agree">
            </td>
        </tr>
        
        <tr>
            <td colspan="3" align="center">
                <textarea class="text" cols="80" rows="4">
terms of service content
                </textarea>
    </table>
    
    		
    </div>
    
    <div class="button_bottom">
	                	<input type="submit" class="button" value="등록">
	                	<input type="submit" class="button" value="취소">
	    
	</div>
</form>
</body>
</html>