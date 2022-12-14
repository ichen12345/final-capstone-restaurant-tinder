<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/WEB-INF/jsp/common/header.jsp" />

<c:url var="validationJs" value="/js/user-validation.js" />
<script src="${validationJs}"></script>



<c:url var="formAction" value="/users" />
<form method="POST" action="${formAction} ">
<input type="hidden" name="CSRF_TOKEN" value="${CSRF_TOKEN}"/>
	<div class="row">
		<div class="col-sm-4"></div>
		<div class="col-sm-4">
			<h1>Register</h1>
			<div class="form-group form">
				<label for="userName">User Name: </label>
				<input type="text" id="userName" name="userName" placeHolder="User Name" class="form-control input-border" />
				<input type="text" id="userNameAvailable" name="userNameAvailable" style="visibility: collapse; width:0px;height:0px" value="true"/>
			</div>
			<div class="form-group">
				<label for="password">Password: </label>
				<input type="password" id="password" name="password" placeHolder="Password" class="form-control input-border" />
			</div>
			<div class="form-group">
				<label for="confirmPassword">Confirm Password: </label>
				<input type="password" id="confirmPassword" name="confirmPassword" placeHolder="Re-Type Password" class="form-control input-border" />
			</div>

			<div style="font-family: 'Courier New', monospace; border-bottom: solid 3px black; margin: 12px 0px 7px 0px;"><h3 style=" font-weight: bolder; margin-bottom: 0">Restaurant Preferences</h3></div>
			<c:import url="/WEB-INF/jsp/common/questionnaireFormContent.jsp"/>
			<button style="background-color:#C08497;border-color:#C08497;width:100%" id="newUserButton" type="submit" class="btn btn-primary my-btn">Create User</button>

		</div>
		<div class="col-sm-4"></div>
	</div>
</form>
		
<c:import url="/WEB-INF/jsp/common/footer.jsp" />