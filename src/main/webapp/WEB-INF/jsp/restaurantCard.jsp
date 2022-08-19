<%--<div style="width: 280px; height: 500px; border: solid 2px red; margin: 10px">--%>
<%--  <div style="border:solid 2px black; width: 285px; height: 310px; justify-content: center">--%>
<%--    <img class="imgfit" src=${param.restaurantImageUrl}>--%>
<%--    <h3>${param.restaurantName}</h3>--%>
<%--    <p>${param.restaurantRating}</p>--%>
<%--&lt;%&ndash;    <p>Placeholder text</p>&ndash;%&gt;--%>
<%--  </div>--%>

    <div class="tinder--card">

        <img src=${param.restaurantImageUrl}>
        <h3 class = "card-font">${param.restaurantName}</h3>
        <p>Rating: ${param.restaurantRating}/5.0</p>
        <p>${param.restaurantPrice}</p>
    </div>



