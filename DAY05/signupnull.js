
function nullcheck(){
	var flag  	= false;
	var id 		= signup.id.value;
	var pw 		= signup.pw.value;
	var phone1 	= signup.phone1.value;
	var phone2 	= signup.phone2.value;
	var phone3 	= signup.phone3.value;
	var email	= signup.email.value;
	var address = signup.address.value;
	var gender  = signup.gender.value;
	
	if(id==""||id==null){
		alert("Please enter id");
		signup.id.focus();
		return;
	}
	
	
	if(pw==""||pw==null){
		alert("Please enter pw");
		signup.pw.focus();
		return;
	}
	
	
	if(phone1==""||phone1==null){
		alert("Please enter the phone number");
		signup.pw.focus();
		return;
	}
	
	
	if(phone2==""||phone2==null){
		alert("Please enter the phone number");
		signup.pw.focus();
		return;
	}
	
	if(phone3==""||phone3==null){
		alert("Please enter the phone number");
		signup.pw.focus();
		return;
	}
	
	if(email==""||email==null){
		alert("Please enter the email");
		signup.pw.focus();
		return;
	}
	
	if(address==""||address==null){
		alert("Please enter the address");
		signup.pw.focus();
		return;
	}
	
	
}
