<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<title>Login</title>
<style>
.errorblock {
	color: #ff0000;
	background-color: #ffEEEE;
	border: 3px solid #ff0000;
	padding: 8px;
	margin: 16px;
}
</style>
</head>

<body onload='document.login_form.j_username.focus();'>
	<c:if test="${not empty error}">
		<div class="errorblock">
			Your login attempt was not successful, try again.<br /> Caused :
			${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
		</div>
	</c:if>
	
	<form name="login_form" method="POST" action="<c:url value="j_spring_security_check" />">
		<table>
			<tr>
				<td align="right">Username</td>
				<td><input type="text" name="j_username" />
				</td>
			</tr>
			<tr>
				<td align="right">Password</td>
				<td><input type="password" name="j_password" />
				</td>
			</tr>
			<tr>
				<td align="right">Remember me</td>
				<td><input type="checkbox" name="_spring_security_remember_me" />
				</td>
			</tr>
			<tr>
				<td colspan="2" align="right"><input type="submit"
					value="Login" /> <input type="reset" value="Reset" /></td>
			</tr>
		</table>
	</form>
</body>
</html>