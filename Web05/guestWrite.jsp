
<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8" %>         

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [guestWrite.jsp 입력화면]  </title>
  <style type="text/css">
	*{ font-size: 20pt; }
	a{ font-size: 20pt; color:green; text-decoration:none; }
	a:hover{ font-size:30pt; color:blue; text-decoration:underline; }
  </style>
	
	<script type="text/javascript">
	  var Gflag=false;
	  
	  function nullCheck(){
		  //돔=DOM모델객체 document,window,location,history
		 var a = document.myform.sabun.value;
		 var b = document.myform.name.value;
		 var c = document.myform.title.value;
		 var d = document.myform.pay.value;
		 
		 if(a==null || a==""){
			alert("사번데이터를 입력하세요");
			myform.sabun.focus();
			return ;
		 }else{ myform.name.focus(); }
		 
		 if(b==null || b==""){
			alert("이름데이터를 입력하세요");
			myform.name.focus();
			return ;
		 }else{ myform.title.focus(); }
		 
		 if(c==null || c==""){
			alert("제목데이터를 입력하세요");
			myform.title.focus();
			return ;
		 }else{ myform.pay.focus(); }
		 
		 
		 if(d==null || d==""){
			alert("급여데이터를 입력하세요");
			myform.pay.focus();
			return ;
		 }else{ myform.email.focus(); }
		
		var len_sabun = myform.sabun.value.length;
		var len_pay = myform.pay.value.length;
		 
		 if( len_sabun != 4){
			alert("사번=코드=주민번호 자릿수는 4자릿수입니다");
			myform.sabun.value="";
			myform.sabun.focus();
			return ;
		 }
		 
		 if( len_pay != 2){
			alert("급여 자릿수는 2자릿수입니다");
			myform.pay.value="";
			myform.pay.focus();
			return ;
		 }
	
		 if (Gflag==false) {
			 alert("id중복체크 하세요");
			 return ; //아래문장수행처리 하지않고 탈출 
		 }
		 //널=null 아니거나, 자릿수가 정확하면 저장처리 
		 document.myform.submit(); //action속성의 문서랑 연결이 됩니다 
	  }//end
	  
	  
	  function info(){
		//window생략가능.open(1파일명,2명명,3크기위치);
		open("popup.jsp","ab","width=400,height=550,left=400,top=200");
	  }//end
	  
	  
	  function idCheck(){
		Gflag=true; //전역변수 
		a = document.myform.sabun.value;
		len_sabun = myform.sabun.value.length;
		if(a==null || a==""){
		  alert("사번ID데이터를 입력하세요");
		  myform.sabun.focus();
		  return ;
		}
		
		//open(1,2,3창옵션)
		open("openID.jsp?idx="+a, "bb", "width=500,height=170,left=550,top=200");  
	  }//end
	
	</script>
</head>
<body>
 <p>
 guestWrite.jsp문서 입력화면 <p>
 
 <form  name="myform" action="guestWriteSave.jsp">
    사번:<input type="text" name="sabun" maxlength="4" size="10">
      <input type="button" onClick="idCheck();" value="ID중복"> 
      <br>
    이름:<input type="text" name="name" > <br>
    제목:<input type="text" name="title" value="rain"> <br>
    급여:<input type="text" name="pay"  value="24"> <br>
    메일:<input type="text" name="email" value="do@ti.rg" > <br>
      <input type="button" onClick="nullCheck();" value="버튼등록하기">
      <input type="reset" value="입력취소">
 </form>
	
 <br>
 <a href="guestWrite.jsp">[등록]</a>
 <a href="index.jsp">[index]</a>
 <a href="login.jsp">[로그인]</a>
 <a href="guestList.jsp">[전체출력]</a>
 <p><br>
</body>
</html>










