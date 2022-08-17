<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Student
  Date: 8/16/2022
  Time: 9:39 PM
  To change this template use File | Settings | File Templates.
--%>
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