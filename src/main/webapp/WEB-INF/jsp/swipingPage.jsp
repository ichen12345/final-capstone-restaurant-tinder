<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="/WEB-INF/jsp/common/header.jsp"/>

<c:url var="styleCss" value="/css/tinder.css"/>
<link rel="stylesheet" href="${styleCss}">
<c:url var="flipCss" value="/css/flip.css"/>
<link rel="stylesheet" href="${flipCss}"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">


<div class="tinder">
    <input type="hidden" value="${CSRF_TOKEN}" name="CSRF_TOKEN"/>

    <div class="tinder--status">
        <i class="fa fa-remove"></i>
        <i class="fa fa-heart"></i>
    </div>
        <h1 style="font-family: 'Courier New', monospace; font-weight: bolder; text-align: center">Start Matching</h1>

    <h3 style="padding-top: 10px; font-weight: bolder; text-align: center; color: #C08497; font-family: 'Courier New', monospace;">Flip Card to View Details</h3>
    <div id="tinderCards" class="tinder--cards">
        <c:forEach var="restaurant" items="${restaurantData}">
                <c:set var="categories" value="${restaurant.categories}" scope="request"/>
                <c:import url="restaurantCard.jsp">
                    <c:param name = "cardClass" value = "tinder--card"/>
                    <c:param name="restaurantId" value = "${restaurant.id}"/>
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

    <div class="tinder--buttons" style="z-index: 1000;">
        <button id="nope" style="z-index: 1001;"><i class="fa fa-remove"></i></button>
        <button id="love" style="z-index: 1002;"><i class="fa fa-heart"></i></button>
    </div>

</div>

<c:url var="likedRestaurantUrl" value="/js/add-liked-restaurant.js"/>
<script src="${likedRestaurantUrl}"></script>

<c:url var="rejectRestaurantUrl" value="/js/add-rejected-restaurant.js"/>
<script src="${rejectRestaurantUrl}"></script>

<script src="https://hammerjs.github.io/dist/hammer.min.js"></script>

<c:url var="swipeUrl" value="/js/swipe.js"/>
<script src="${swipeUrl}"></script>


<c:import url="/WEB-INF/jsp/common/footer.jsp"/>