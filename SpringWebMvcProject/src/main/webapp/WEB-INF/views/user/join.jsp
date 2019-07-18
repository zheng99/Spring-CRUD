<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../include/static-head.jsp" />
</head>
<body class="hold-transition register-page">
<div class="register-box">
    <div class="register-logo">
        <a href="#">
            <b>USER</b>&nbsp REGISTER
        </a>
    </div>

    <div class="register-box-body">
        <p class="login-box-msg">Membership registration page</p>

        
            <table style="cellpadding: 0; cellspacing: 0; margin: 0 auto; width: 100%">
						<tr>
							<td style="text-align: left">
								<p><strong>Please enter your ID</strong>&nbsp;&nbsp;&nbsp;<span id="idChk"></span></p>
							</td>							
						</tr>
						<tr>
							<td><input type="text" name="userId" id="user_id"
								class="form-control tooltipstered" maxlength="14"
								required="required" aria-required="true"
								style="margin-bottom: 25px; width: 100%; height: 40px; border: 1px solid #d9d9de"
								placeholder="Numeric + English 4-14 words">
								</td>
							
						</tr>

						<tr>
							<td style="text-align: left">
								<p><strong>Please enter your PW</strong>&nbsp;&nbsp;&nbsp;<span id="pwChk"></span></p>
							</td>
						</tr>
						<tr>
							<td><input type="password" size="17" maxlength="20" id="password"
								name="userPw" class="form-control tooltipstered" 
								maxlength="20" required="required" aria-required="true"
								style="ime-mode: inactive; margin-bottom: 25px; height: 40px; border: 1px solid #d9d9de"
								placeholder="At least 8 characters including English and special characters"></td>
						</tr>
						<tr>
							<td style="text-align: left">
								<p><strong>Please reconfirm your password.</strong>&nbsp;&nbsp;&nbsp;<span id="pwChk2"></span></p>
							</td>
						</tr>
						<tr>
							<td><input type="password" size="17" maxlength="20" id="password_check"
								name="pw_check" class="form-control tooltipstered" 
								maxlength="20" required="required" aria-required="true"
								style="ime-mode: inactive; margin-bottom: 25px; height: 40px; border: 1px solid #d9d9de"
								placeholder="Password must match"></td>
						</tr>

						<tr>
							<td style="text-align: left">
								<p><strong>Please enter your Name</strong>&nbsp;&nbsp;&nbsp;<span id="nameChk"></span></p>
							</td>
						</tr>
						<tr>
							<td><input type="text" name="userName" id="user_name"
								class="form-control tooltipstered" maxlength="6"
								required="required" aria-required="true"
								style="margin-bottom: 25px; width: 100%; height: 40px; border: 1px solid #d9d9de"
								placeholder="한글로 a maximum of six characters"></td>
						</tr>
						

						<tr>
							<td style="padding-top: 10px; text-align: center">
								<p><strong>Sign up for more services!</strong></p>
							</td>
						</tr>
						<tr>
							<td style="width: 100%; text-align: center; colspan: 2;"><input
								type="button" value="Sign" 
								class="btn btn-primary form-control tooltipstered" id="signup-btn"
								style="background-color: orange; margin-top: 0; height: 40px; color: white; border: 0px solid #388E3C; opacity: 0.8">
							</td>
						</tr>

					</table>
      

        
    </div>
    <!-- /.form-box -->
</div>
<!-- /.register-box -->
<jsp:include page="../include/plugin-js.jsp" />
<script src="<c:url value='/dist/js/custom/user-validation.js'/>"></script>
</body>
</html>










