
//====전역변수:각각 체크여부
	var flag = false;//null체크여부
	var flagGN = false;//상품번호 확인체크 여부
	var flagN = false;//이름확인체크여부
	var flagT = false;//제목체크여부
	var flagC = false;//내용 체크여부
	
	//확인
//====다 체크하고 submit
	function check(){
		
		var gnum = document.gform.gnum.value;
		var gname = document.gform.gname.value;
		var gtitle = document.gform.gtitle.value;
		var gcontent = document.gform.gcontent.value;
		if (gnum==null||gnum==""){
			alert('상품번호를 입력하세요');
			gform.gnum.focus();
			return;
		}
		if (gname==null||gname==""){
			alert('상품이름을 입력하세요.');
			gform.gname.focus();
			return;
		}
		
		if (gtitle==null||gtitle==""){
			alert('상품제목을 입력하세요.');
			gform.gtitle.focus();
			return;
		}
		if (gcontent==null||gcontent==""){
			alert('상품내용을 입력하세요.');
			gform.gcontent.focus();
			return;
		}
		//위에 해당 되는 거 없으면 널 체크 true
		flag=true;
		
		if(flagGN==false){	//사번중복체크 안됐을때
			alert('사번 중복체크 하세요.');
			return;
		}
		
		if(flag == true){
			document.gform.submit();
		}
	
		
	}//check end
	
	
//====상품번호 체크
	function checkGN(){//상품번호 체크하고 중복확인 창 열어주기
		var gnum = gform.gnum.value;
		var label = document.getElementById("gnumlabel");
		var gnum_reg = /^[0-9]*$/;//숫자입력
		if(gnum==""||gnum==null){
			label.innerHTML = "<font color='red'>상품번호를 입력하세요</font>";
			gform.gnum.focus();
			return;
		} else {
			if(gnum_reg.test(gnum)==false){
				label.innerHTML = "<font color='red'>숫자만 입력</font>";
				gform.gnum.value="";
				gform.gnum.focus();
				return;
			}
		}
		label.innerHTML = "";
		flagGN_t()
		open('goodsGN.jsp','goodsGN','width=400, height=140, left=100, top=200');
	}//checkSb end
	
	function flagGN_t(){//사번 플래그를 true로 바꿔주는 메소드(팝업창에서 작동)
		flagGN=true;
	}
	
		
	
//====각각 데이터 입력 자리수제한(db오류 안나게 바이트로 처리)
	function checklen(obj, maxByte)	{	//db데이터 사이즈에 맞는 길이 체크
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
			alert(maxByte+'Byte를 초과 입력 불가');
			str2 = strValue.substr(0, len);	//아까 기억한 자리수까지만큼 잘라서 넣어주기
			obj.value = str2;
		}
	}//end

	
	
	
//====이미지 파일 미리보기
	function handleFileSelect() {
	    var files = document.getElementById('gfile').files[0]; //파일 객체
	    var reader = new FileReader();
	    //파일정보 수집        
	    reader.onload = (function(theFile) {
	      return function(e) {
	        //이미지 뷰
	        var img_view = ['<img src="', e.target.result, '" name="', escape(theFile.name), '"  width=100 height=100/>'].join('');                
	        document.getElementById('preview').innerHTML = img_view;
	      };
	    })(files);
	    reader.readAsDataURL(files);    
	}//end	

	
	function editCheck(){
		var gname = document.gform.gname.value;
		var gtitle = document.gform.gtitle.value;
		var gcontent = document.gform.gcontent.value;
		if (gname==null||gname==""){
			alert('상품이름을 입력하세요.');
			gform.gname.focus();
			return;
		}
		
		if (gtitle==null||gtitle==""){
			alert('상품제목을 입력하세요.');
			gform.gtitle.focus();
			return;
		}
		if (gcontent==null||gcontent==""){
			alert('상품내용을 입력하세요.');
			gform.gcontent.focus();
			return;
		}
		//위에 해당 되는 거 없으면 널 체크 true
		flag=true;
		
		if(flag == true){
			document.gform.submit();
		}
	}//editCheck end
