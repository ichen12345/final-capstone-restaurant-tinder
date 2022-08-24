<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="/WEB-INF/jsp/common/header.jsp"/>

<%--<c:url var="styleCss" value="/css/tinder.css"/>--%>
<%--<link rel="stylesheet" href="${styleCss}">--%>
<c:url var="flipCss" value="/css/flip.css"/>
<link rel="stylesheet" href="${flipCss}"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">


<div>
    <h1 style="padding-top: 10px; padding-bottom: 40px; text-align: center; font-family: 'Courier New', monospace; font-weight: bolder;" class="space-below">Your Matched Restaurants</h1>
    <div class="generic-cards">
        <c:forEach var="restaurant" items="${likedRestaurants}">

            <c:import url="restaurantCard.jsp">
                <c:param name="likedPage" value="true" />
                <c:param name = "cardClass" value = "generic-card"/>
                <c:param name="restaurantId" value="${restaurant.id}"/>
                <c:param name="restaurantImageUrl" value="${restaurant.image_url}"/>
                <c:param name="restaurantName" value="${restaurant.name}"/>
                <c:param name="restaurantRating" value="${restaurant.rating}"/>
                <c:param name="restaurantPrice" value="${restaurant.price}"/>
                <c:param name="restaurantAddress" value="${restaurant.location.completeAddress}"/>
                <c:param name="restaurantPhone" value="${restaurant.phone}"/>
                <c:param name="restaurantUrl" value="${restaurant.url}"/>
            </c:import>

        </c:forEach>

    </div>
</div>


<c:import url="/WEB-INF/jsp/common/footer.jsp"/>
