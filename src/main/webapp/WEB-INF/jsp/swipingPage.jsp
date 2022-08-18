<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<c:import url="/WEB-INF/jsp/common/header.jsp" />


<div class="tinder">
    <div class="tinder--status">
        <i class="fa fa-remove"></i>
        <i class="fa fa-heart"></i>
    </div>

    <c:forEach var="restaurant" items="${restaurantData}">
        <c:import url="restaurantCard.jsp">
            <c:param name="restaurantImageUrl" value="${restaurant.image_url}"/>
            <c:param name="restaurantName" value="${restaurant.name}"/>
            <c:param name="restaurantRating" value="${restaurant.rating}"/>
        </c:import>
    </c:forEach>

    <div class="tinder--buttons">
        <button id="nope"><i class="fa fa-remove"></i></button>
        <button id="love"><i class="fa fa-heart"></i></button>
    </div>

</div>

<c:url var="hammerUrl" value="/js/Hammer.js" />
<script src="${hammerUrl}"></script>
<c:url var="scriptUrl" value="/js/swipingFunction.js" />
<script src="${scriptUrl}"></script>

<c:import url="/WEB-INF/jsp/common/footer.jsp" />