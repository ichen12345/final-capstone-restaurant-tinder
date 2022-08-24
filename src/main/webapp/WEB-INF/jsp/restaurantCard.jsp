<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="${param.cardClass}">

    <div class="content">
        <div class="front">
            <input type="hidden" value="${CSRF_TOKEN}" name="CSRF_TOKEN"/>
            <input type = "hidden" id = "restaurantId" value = "${param.restaurantId}">
            <input type = "hidden" id = "restaurantName" value = "${param.restaurantName}">
            <input type = "hidden" id = "restaurantRating" value = "${param.restaurantRating}">
            <input type = "hidden" id = "restaurantPrice" value = "${param.restaurantPrice}">
            <input type = "hidden" id = "restaurantImageUrl" value = "${param.restaurantImageUrl}">
            <input type = "hidden" id = "restaurantAddress" value = "${param.restaurantAddress}">

            <img src=${param.restaurantImageUrl} >
            <div class = "card-font fit-text">
                <span>${param.restaurantName}</span>
            </div>

            <div style="display: flex; margin-bottom: 0px">
                <c:forEach var="category" items="${categories}">
                    <div class="cuisine-btn {}">${category.title}</div>
                </c:forEach>
            </div>

        </div>
        <div class="back">
            <p><strong>Rating:</strong> ${param.restaurantRating}/5.0</p>
            <p><strong>Price:</strong> ${ param.restaurantPrice != "undefined" ? param.restaurantPrice : "N/A"} </p>
            <p><strong>Location:</strong> ${param.restaurantAddress}</p>
            <p><strong>Contact:</strong> ${param.restaurantPhone} </p>
            <a href="${param.restaurantUrl}" id="webLink" target="_blank"><strong>Visit website</strong></a>
        </div>
    </div>

</div>


<%--${ param.restaurantPrice ? param.restaurantPrice : "N/A"}--%>

