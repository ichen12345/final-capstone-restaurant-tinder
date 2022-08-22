<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="/WEB-INF/jsp/common/header.jsp"/>

<c:url var="styleCss" value="/css/tinder.css"/>
<link rel="stylesheet" href="${styleCss}">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">


<div class="tinder">
    <div class="tinder--status">
        <i class="fa fa-remove"></i>
        <i class="fa fa-heart"></i>
    </div>
    <h1 style="font-family: 'Courier New', monospace; font-weight: bolder; text-align: center">${"&#9825"} Match for a Meal ${"&#9825"}</h1>

    <div id="tinderCards" class="tinder--cards">
        <c:forEach var="restaurant" items="${restaurantData}">
                <c:import url="restaurantCard.jsp">
                    <c:param name="restaurantId" value = "${restaurant.id}"/>
                    <c:param name="restaurantImageUrl" value="${restaurant.image_url}"/>
                    <c:param name="restaurantName" value="${restaurant.name}"/>
                    <c:param name="restaurantRating" value="${restaurant.rating}"/>
                    <c:param name="restaurantPrice" value="${restaurant.price}"/>
                    <c:param name="restaurantAddress" value="${restaurant.stringAddress}"/>
                </c:import>
        </c:forEach>
    </div>

    <div class="tinder--buttons" style="z-index: 1000;">
        <button id="nope" style="z-index: 1001;"><i class="fa fa-remove"></i></button>
        <button id="love" style="z-index: 1002;"><i class="fa fa-heart"></i></button>
    </div>

</div>

<script src="https://hammerjs.github.io/dist/hammer.min.js"></script>
<c:url var="scriptUrl" value="/js/swipe.js"/>
<script src="${scriptUrl}"></script>


<c:import url="/WEB-INF/jsp/common/footer.jsp"/>