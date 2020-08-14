var flag=false;

function clear(){
	var birth = signup.birth.value;
	birth.innerHTML="";
	return;
}



function confirm(){
	if(window.confirm("정말로 취소하시겠어요?")==true){
		location.href="index.jsp";
	}else{
		return false;
	}
}



function checkpw(){//비밀번호 확인 체크
	var pw1 = signup.pw.value;
	var pw2 = signup.pw2.value;
	var span = document.getElementById("pwcon");
	
	if(pw1 == pw2) {
		span.innerHTML = "비밀번호가 일치합니다.";
		flag = true;	//비번일치플래그 true로 해줌
	} else {
		span.innerHTML = "<font color='red'>비밀번호가 일치하지 않습니다.</font>";
	}
}

function execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            var fullAddr = '';
            var extraAddr = '';
            
            if (data.userSelectedType === 'R') fullAddr = data.roadAddress;
            else fullAddr = data.jibunAddress;

            if(data.userSelectedType === 'R') {
                if(data.bname !== '') extraAddr += data.bname;
                if(data.buildingName !== '') extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                
                fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
            }

           document.getElementById('jusocode').value = data.zonecode; //5자리 새우편번호 사용
           //document.getElementById("jusocode").value = data.postcode;
           document.getElementById("juso1").value = fullAddr;
           document.getElementById("juso2").focus();
        }
    }).open();
} //execDaumPostcode end==================================================

