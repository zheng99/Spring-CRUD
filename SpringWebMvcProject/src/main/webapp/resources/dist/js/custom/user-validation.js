$(function() {
	
	const getIdCheck= RegExp(/^[a-zA-Z0-9]{4,14}$/);
	const getPwCheck= RegExp(/([a-zA-Z0-9].*[!,@,#,$,%,^,&,*,?,_,~])|([!,@,#,$,%,^,&,*,?,_,~].*[a-zA-Z0-9])/);
	const getName= RegExp(/^[가-힣]+$/);
	const getMail = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);
	let chk1 = false, chk2 = false, chk3 = false, chk4 = false;
	
	//회원가입 검증~~
	//ID 입력값 검증.
	$('#user_id').on('keyup', function() {
		if($("#user_id").val() === ""){
			$('#user_id').css("background-color", "pink");
			$('#idChk').html('<b style="font-size:14px;color:red;">[ID is required!]</b>');
			chk1 = false;
		}
		
		//아이디 유효성검사
		else if(!getIdCheck.test($("#user_id").val())){
			$('#user_id').css("background-color", "pink");
			$('#idChk').html('<b style="font-size:14px;color:red;">[4-14 alphabetic characters]</b>');	  
			chk1 = false;
		} 
		//ID 중복확인 비동기 처리
		else {
			const userId = $('#user_id').val();
			$.ajax({
				type: "POST",
				url: "/mvc/user/idCheck",
				headers: {
	                "Content-Type": "application/json",
	                "X-HTTP-Method-Override": "POST"
	            },
				data: userId ,
				datatype: "text",
				success: function(data) {
					console.log(data);
					if(data === "OK") {
						$('#user_id').css("background-color", "aqua");
						$('#idChk').html('<b style="font-size:14px;color:green;">[Enable ID!]</b>');
						chk1 = true;
					} else {
						$('#user_id').css("background-color", "pink");
						$('#idChk').html('<b style="font-size:14px;color:red;">[ID already exists!]</b>');
						chk1 = false;
					}
				},
				error : function(error) {
	                
	                console.log("error : " + error);
	            }
			});
		}
	});
	
	//패스워드 입력값 검증.
	$('#password').on('keyup', function() {
		//비밀번호 공백 확인
		if($("#password").val() === ""){
		    $('#password').css("background-color", "pink");
			$('#pwChk').html('<b style="font-size:14px;color:red;">[Password required!]</b>');
			chk2 = false;
		}		         
		//비밀번호 유효성검사
		else if(!getPwCheck.test($("#password").val()) || $("#password").val().length < 8){
		    $('#password').css("background-color", "pink");
			$('#pwChk').html('<b style="font-size:14px;color:red;">[8 or more characters with special characters]</b>');
			chk2 = false;
		} else {
			$('#password').css("background-color", "aqua");
			$('#pwChk').html('<b style="font-size:14px;color:green;">[Great]</b>');
			chk2 = true;
		}
		
	});
	
	//패스워드 확인란 입력값 검증.
	$('#password_check').on('keyup', function() {
		//비밀번호 확인란 공백 확인
		if($("#password_check").val() === ""){
		    $('#password_check').css("background-color", "pink");
			$('#pwChk2').html('<b style="font-size:14px;color:red;">[Password verification is required!]</b>');
			chk3 = false;
		}		         
		//비밀번호 확인란 유효성검사
		else if($("#password").val() != $("#password_check").val()){
		    $('#password_check').css("background-color", "pink");
			$('#pwChk2').html('<b style="font-size:14px;color:red;">[just like above!!]</b>');
			chk3 = false;
		} else {
			$('#password_check').css("background-color", "aqua");
			$('#pwChk2').html('<b style="font-size:14px;color:green;">[Great]</b>');
			chk3 = true;
		}
		
	});
	
	//이름 입력값 검증.
	$('#user_name').on('keyup', function() {
		//이름값 공백 확인
		if($("#user_name").val() === ""){
		    $('#user_name').css("background-color", "pink");
			$('#nameChk').html('<b style="font-size:14px;color:red;">[Name is required information!]</b>');
			chk4 = false;
		}		         
		//이름값 유효성검사
		else if(!getName.test($("#user_name").val())){
		    $('#user_name').css("background-color", "pink");
			$('#nameChk').html('<b style="font-size:14px;color:red;">[Name is Han-gul ~]</b>');
			chk4 = false;
		} else {
			$('#user_name').css("background-color", "aqua");
			$('#nameChk').html('<b style="font-size:14px;color:green;">[Great]</b>');
			chk4 = true;
		}
		
	});
	
	
	
	$('#signup-btn').click(function(e) {
		if(chk1 && chk2 && chk3 && chk4) {
			const id = $("#user_id").val();
			const pw = $("#password").val();
			const name = $("#user_name").val();
			const user = {
				userId: id,
	            userPw: pw,
	            userName: name
			};
			console.log(user);
			
			$.ajax({
				type: "POST",
				url: "/mvc/user/join",
	            headers: {
	                "Content-Type": "application/json",
	                "X-HTTP-Method-Override": "POST"
	            },
	            dataType: "text",
	            data: JSON.stringify(user),
	            success: function(result) {
	            	console.log("result: " + result);
	            	if(result === "joinSuccess") {
	            		alert("Join Success!");
	            		self.location = "/mvc/user/login";
	            	}
	            }
			});
		} else {
			alert('Please check the input information again.');			
		}
	});
	
	///////////////////////////////////////////////////////////////////////////////////////////
	
	
	
});
















