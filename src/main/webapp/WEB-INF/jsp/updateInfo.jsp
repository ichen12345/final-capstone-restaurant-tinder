<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url="/WEB-INF/jsp/common/header.jsp"/>
<c:url var="bootstrapCss" value="/css/bootstrap.min.css"/>
<c:url var="siteCss" value="/css/site.css"/>
<c:url var="loadSavedPrefs" value="/js/load-saved-preferences.js"/>
<script src="${loadSavedPrefs}"></script>
<html>
<head>
    <title>Update Your Preferences</title>
</head>
<body>



<div>
    <h1 style="text-align: center; font-family: 'Courier New', monospace; font-weight: bolder;" class="space-below">Please update your preferences here: </h1>
    <c:import url="/WEB-INF/jsp/common/questionnaireFormContent.jsp"/>
    <button style="background-color:#C08497;border-color:#C08497;width:100%" id="newUserButton" type="submit" class="btn btn-primary my-btn">Update</button>
</div>


</body>
<c:import url="/WEB-INF/jsp/common/footer.jsp" />
</html>
