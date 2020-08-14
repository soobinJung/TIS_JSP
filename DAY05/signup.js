var flag=false;


//버튼 누르면 배경색깔 변경
function Fclick(){
	if(document.getElementById('GENDER_F').getAttribute('class') == "button_gender"){
	document.getElementById('GENDER_F').setAttribute('class', 'button_gender_clicked');
	document.getElementById('gendervalue').setAttribute('value', '1')
	return;
	} else {
		document.getElementById('GENDER_F').setAttribute('class', 'button_gender');
	}
}



function Mclick(){
	if(document.getElementById('GENDER_M').getAttribute('class') == "button_gender"){
		document.getElementById('GENDER_M').setAttribute('class', 'button_gender_clicked');
		document.getElementById('gendervalue').setAttribute('value', '0')
		return;
		} else {
			document.getElementById('GENDER_M').setAttribute('class', 'button_gender');
		}
}



function hidepw(obj, maxByte){
	var strValue = obj.value;
	var strLen = strValue.length;
	var totalByte = 0;
	var len = 0;
	var oneChar ="";
	var str2 ="";
	
	for (var i = 0; i < strLen; i++) {	//한글자씩 가져와서
		oneChar = strValue.charAt(i);
		if (escape(oneChar).length > 4)	{	//길이가 4초과=유니코드/한글이면
			totalByte += 2;	//2바이트로 넣어주고
		} else {
			totalByte++;	//아니면 1바이트로 처리
		}
		if(totalByte <= maxByte) {
			len = i+1;	//입력된 데이터의 자리수 기억해주기
		}
	}
	if (totalByte > maxByte) {
		alert('비밀번호는 4자리 숫자만 가능합니다.');
		str2 = strValue.substr(0, len);	//아까 기억한 자리수까지만큼 잘라서 넣어주기
		obj.value = str2;
	}
}
//비밀번호 확인 체크
function checkpw(){
	var pw1 = signup.PW.value;
	var pw2 = signup.PW2.value;
	var span = document.getElementById("pwcon");
	
	if(pw1 == pw2) {
		span.innerHTML = "비밀번호가 일치합니다.";
		flag = true;	//비번일치플래그 true로 해줌
	} else {
		span.innerHTML = "<font color='red'>비밀번호가 일치하지 않습니다.</font>";
	}
}

var ID = document.signup.ID.value;

function checkId(){
	var a = document.signup.ID.value;
		signup.ID.focus();
		open("IDcheck.jsp?ID="+a,"IDcheck.jsp","width=400, height=200, left=700, top=300");
		return;
}//end


function checkBirth() {
	   
	   var birth = signup.BIRTH.value.length;
	   var span = document.getElementById("birsapn");
	   
	   if( birth > 6 || birth < 6 ) {
	      span.innerHTML = "<font color='red'>yymmdd 형식으로 작성하세요</font>";
	   }else{
	      span.innerHTML = "";
	   }
	   
}//end


function checkEmail(){
	   var mail = signup.EMAIL.value;
	   var mail_reg = /^([\S]{2,16})@([a-zA-Z]{2,10})\.([a-zA-Z]{2,10})$/;
	   
	   if( mail_reg.test(mail)==false){
	      msg = "<font color='red'>이메일 형식 체크하세요</font>";
	      document.getElementById("emailspan").innerHTML = msg;
	      return;
	   }else{
	        flagE = true;
	        document.getElementById("emailspan").innerHTML="";
	     }
}//end

function handleFileSelect() {
    var files = document.getElementById('PICTURE').files[0]; //파일 객체
    var reader = new FileReader();
    //파일정보 수집        
    reader.onload = (function(theFile) {
      return function(e) {
        //이미지 뷰
        var img_view = ['<img src="', e.target.result, '" name="', escape(theFile.name), '"  width=300 height=200/>'].join('');                
        document.getElementById('preview').innerHTML = img_view;
      };
    })(files);
    reader.readAsDataURL(files);    
    
    var hiddenPath = ['<img src="', e.target.result, '" name="', escape(theFile.name), '"  width=300 height=200/>'].join('');
    
}//end


