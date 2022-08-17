<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<div class="form-group">
                <label for="price">Price Range </label>
                <select id="price" name="priceRange" class="form-control input-border" >
                    <option value="cheap">$</option>
                    <option value="affordable">$$</option>
                    <option value="expensive">$$$</option>
                    <option value="pricey">$$$$</option>
                </select>
            </div>
            <label>Cuisine Preference </label>
            <div style="display:block; grid-auto-flow: column; columns: 3 6em">
                <div class="form-group grid-item">
                    <input id="asianfusion" type="checkbox" name="restaurants" value="asianfusion">
                    <label for="asianfusion">Asian</label>
                </div>

                <div class="form-group grid-item">
                    <input id="bbq" type="checkbox" name="restaurants" value="bbq" >
                    <label for="bbq">BBQ</label>
                </div>

                <div class="form-group grid-item">
                    <input id="italian" type="checkbox" name="restaurants" value="italian">
                    <label for="italian">Italian</label>
                </div>

                <div class="form-group grid-item">
                    <input id="argentine" type="checkbox" name="restaurants" value="argentine">
                    <label for="argentine">Argentine</label>
                </div>

                <div class="form-group grid-item">
                    <input id="buffets" type="checkbox" name="restaurants" value="buffets">
                    <label for="buffets">Buffets</label>
                </div>

                <div class="form-group grid-item">
                    <input id="cafes" type="checkbox" name="restaurants" value="cafes">
                    <label for="cafes">Cafes</label>
                </div>

                <div class="form-group grid-item">
                    <input id="pizza" type="checkbox" name="restaurants" value="pizza">
                    <label for="pizza">Pizza</label>
                </div>

                <div class="form-group grid-item">
                    <input id="spanish" type="checkbox" name="restaurants" value="spanish">
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



