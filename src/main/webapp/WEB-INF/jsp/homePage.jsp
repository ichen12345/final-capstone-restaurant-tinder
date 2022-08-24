<%--<c:import url="/WEB-INF/jsp/common/header.jsp" />--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Home Page</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--    <h1> Restaurant Tinder</h1>--%>
<%--</body>--%>
<%--</html>--%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<c:import url="/WEB-INF/jsp/common/homepage-header.jsp"/>
<c:url var="bootstrapCss" value="/css/bootstrap.min.css"/>
<c:url var="siteCss" value="/css/site.css"/>


<body class="image-control">


<div class="page-id">

    <div class="row">
        <h1 class="space-below" style="text-align: center"> ${"&#9825"} Find Love at First Bite ${"&#9825"} </h1>

        <div class="button-formatting">
            <div id="favoritesIcon" class="smaller-flex-item">
                <c:url var="viewLikedRestaurants" value="/viewLikedRestaurants"/>
                <a href="${viewLikedRestaurants}" class="main-button">View Liked Restaurants</a>
            </div>

            <div id="matchIcon">
                <c:url var="swipingPage" value="/swipingPage"/>
                <a href="${swipingPage}" class="main-button">Start Matching!</a>
            </div>

            <div id="updateInfoIcon" class="smaller-flex-item">
                <c:url var="updateInfo" value="/updateInfo"/>
                <a href="${updateInfo}" class="main-button">Update Info</a>
            </div>

            <%--            <div>--%>
            <%--                <c:url var="viewLikedRestaurants" value="/viewLikedRestaurants"/>--%>
            <%--                <a href="${viewLikedRestaurants}">--%>
            <%--                    <button style="background-color:#C08497;border-color:#C08497;width:100%" type="submit"--%>
            <%--                            class="btn btn-primary my-btn sok-tile ">View Liked Restaurants--%>
            <%--                    </button>--%>
            <%--                </a>--%>
            <%--            </div>--%>

            <%--            <div>--%>
            <%--                <c:url var="swipingPage" value="/swipingPage"/>--%>
            <%--                <a href="${swipingPage}">--%>
            <%--                    <button style="background-color:#C08497;border-color:#C08497;width:100%" type="submit"--%>
            <%--                            class="btn btn-primary my-btn sok-tile ">Start Matching!--%>
            <%--                    </button>--%>
            <%--                </a>--%>
            <%--            </div>--%>
            <%--            <div>--%>
            <%--                <c:url var="updateInfo" value="/updateInfo"/>--%>
            <%--                <a href="${updateInfo}">--%>
            <%--                    <button style="background-color:#C08497;border-color:#C08497;width:100%" type="submit"--%>
            <%--                            class="btn btn-primary my-btn sok-tile ">Update Info--%>
            <%--                    </button>--%>
            <%--                </a>--%>
        </div>

    </div>

    <%--        <c:url var="Logout" value="/logout"/>--%>
    <%--        <a href = "${Logout}"><button style="background-color:#C08497;border-color:#C08497;width:100%" type="submit"--%>
    <%--                class="btn btn-primary my-btn sok-tile ">Log Out--%>
    <%--        </button></a>--%>

    <%--        <html>--%>
    <%--        <body>--%>

    <%--        <input type="submit" onClick="myFunction()"/>--%>
    <%--        <script>--%>
    <%--            function myFunction() {--%>
    <%--                window.location.href="http://programminghead.com";--%>
    <%--            }--%>
    <%--        </script>--%>

    <%--        </body>--%>
    <%--        </html>--%>


</div>

</div>

</body>
<c:import url="/WEB-INF/jsp/common/footer.jsp"/>



