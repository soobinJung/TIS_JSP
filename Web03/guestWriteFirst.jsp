<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8" %>
<%@ include file="ssi.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[GuestWrite.jsp]</title>
		
	
	<script type="text/javascript">
		  function List(){  location.href='guestList_Check.jsp'; }
	
	      function nullCheck(){
	          //돔 = DOM 모댈 객체 document, window, location, history 생략 가능

	          		var n = myform.name.value;
					var h = myform.hobby.value;
					var a = myform.age.value;
					var j = myform.job.value;
					
	          // 이름
	          if( n==null || n==""){
	             document.getElementById("name_sp").innerHTML="<font style='font-size:12pt; color:red'>*이름 입력*</font>";
	             myform.name.focus();
	             return;
	          }else{
	             document.getElementById("name_sp").innerHTML="";
	             myform.hobby.focus();   
	          }
	          
	          // 취미
	          if(h==null || h==""){
	             document.getElementById("hobby_sp").innerHTML="<font style='font-size:12pt; color:red'>*취미 입력*</font>";
	             myform.hobby.focus();
	             return;
	          }else{
	             document.getElementById("hobby_sp").innerHTML="";
	             myform.age.focus();   
	          }
	          
	          //나이
	          if(a==null || a==""){
	             document.getElementById("age_sp").innerHTML="<font style='font-size:12pt; color:red'>*나이 입력*</font>";
	             myform.age.focus();
	             return;
	          }else{
	             document.getElementById("age_sp").innerHTML="";
	             myform.job.focus();   
	          }
	          
	          //직업
	          if(j==null || j==""){
	             document.getElementById("job_sp").innerHTML="<font style='font-size:12pt; color:red'>*직업란 입력*</font>";
	             myform.job.focus();
	             return;
	          }else{
	             document.getElementById("job_sp").innerHTML=""; 
	          }
	          
	          document.myform.submit(); // action 속성의 문서랑 연결됨
	       }
	       

	</script>
	
</head>
<body>
<form method="get" action="guestWriteCheak.jsp" name = "myform" >
	이름 : <input type = "text" name = "name"  onblur="Name_check();"  > <span id="name_sp" ></span> <br>
	취미 : <input type = "text" name = "hobby" onblur="Hobby_check();" > <span id="hobby_sp"></span> <br>
	나이 : <input type = "text" name = "age"   onblur="Age_check();"   > <span id="age_sp"  ></span> <br>
	직업 : <input type = "text" name = "job"   onblur="Job_check();"   > <span id="job_sp"  ></span> <br>
	     <input type = "button" onclick="nullCheck();" value="등록하기">
	     <input type = "button" onclick="List();"      value = "정 보">
</form>
</body>
</html>