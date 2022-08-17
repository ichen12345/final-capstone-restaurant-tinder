<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<c:import url="/WEB-INF/jsp/common/header.jsp" />

<body>
<p>${totalRestaurants}</p>
<ul>
    <c:forEach var="restaurant" items="${restaurantData}" >
    <li>

        <p>${restaurant.name}</p>
        <p>${restaurant.rating}</p>

    </li>

    </c:forEach>

</ul>

</body>

<c:import url="/WEB-INF/jsp/common/footer.jsp" />