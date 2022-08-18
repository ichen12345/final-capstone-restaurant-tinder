<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url="/WEB-INF/jsp/common/header.jsp"/>
<c:url var="bootstrapCss" value="/css/bootstrap.min.css"/>
<c:url var="siteCss" value="/css/site.css"/>



<div>
    <h1 style="text-align: left">Your Matched Restaurants: </h1>
</div>
<div>
    <c:forEach var="restaurant" items="${likedRestaurants}">
        <p>${restaurant.name}</p>
    </c:forEach>

</div>


<c:import url="/WEB-INF/jsp/common/footer.jsp" />
