<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<div class="form-group">
                <label for="price">Price Range </label>
                <select id="price" name="priceRange" class="form-control input-border" >
                    <option value="one">$</option>
                    <option value="two">$$</option>
                    <option value="three">$$$</option>
                    <option value="four">$$$$</option>
                </select>
            </div>
            <label>Cuisine Preference </label>
            <div style="display:block; grid-auto-flow: column; columns: 3 6em">
                <div class="form-group grid-item">
                    <input id="asianfusion" type="checkbox" name="asianfusion" value="true">
                    <label for="asianfusion">Asian</label>
                </div>

                <div class="form-group grid-item">
                    <input id="bbq" type="checkbox" name="bbq" value="true" >
                    <label for="bbq">BBQ</label>
                </div>

                <div class="form-group grid-item">
                    <input id="italian" type="checkbox" name="italian" value="true">
                    <label for="italian">Italian</label>
                </div>

                <div class="form-group grid-item">
                    <input id="argentine" type="checkbox" name="argentine" value="true">
                    <label for="argentine">Argentine</label>
                </div>

                <div class="form-group grid-item">
                    <input id="buffets" type="checkbox" name="buffets" value="true">
                    <label for="buffets">Buffets</label>
                </div>

                <div class="form-group grid-item">
                    <input id="cafes" type="checkbox" name="cafes" value="true">
                    <label for="cafes">Cafes</label>
                </div>

                <div class="form-group grid-item">
                    <input id="pizza" type="checkbox" name="pizza" value="true">
                    <label for="pizza">Pizza</label>
                </div>

                <div class="form-group grid-item">
                    <input id="spanish" type="checkbox" name="spanish" value="true">
                    <label for="spanish">Spanish</label>
                </div>

            </div>

            <div class="form-group">
                <label for="rating">Rating: </label>
                <select id="rating" name="rating" class="form-control input-border" >
                    <option value="oneStar">&#x2605;</option>
                    <option value="twoStar">&#x2605;&#x2605;</option>
                    <option value="threeStar">&#x2605;&#x2605;&#x2605;</option>
                    <option value="fourStar">&#x2605;&#x2605;&#x2605;&#x2605;</option>
                    <option value="fiveStar">&#x2605;&#x2605;&#x2605;&#x2605;&#x2605;</option>

                </select>
            </div>

            <div class="form-group">
                <label for="zipcode">Zipcode: </label>
                <input type="text" id="zipcode" name="zipcode" pattern="[0-9]{5}" class="form-control input-border" />
            </div>

            <label>Delivery: </label>

            <div style="display:block; grid-auto-flow: column; columns: 2 10em">
                <div class="form-group grid-item">
                    <input id="deliveryYes" type="radio" name="foodDeliveryServices" value="true">
                    <label for="deliveryYes" style="padding-right: 16px">Yes</label>
                    <input id="deliveryNo" type="radio" name="foodDeliveryServices" value="false">
                    <label for="deliveryNo">No</label>
                </div>


            </div>



