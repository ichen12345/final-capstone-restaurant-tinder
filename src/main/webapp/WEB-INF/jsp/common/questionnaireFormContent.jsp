<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<div class="form-group">
                <label for="price">Price Range </label>
                <select id="price" name="price" class="form-control input-border" >
                    <option value="one">$</option>
                    <option value="two">$$</option>
                    <option value="three">$$$</option>
                    <option value="four">$$$$</option>
                </select>
            </div>
            <label>Cuisine Preference </label>
            <div style="display:block; grid-auto-flow: column; columns: 3 10em">
                <div class="form-group grid-item">
                    <input id="asianfusion" type="checkbox" name="asianfusion" value="true" >
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
                    <input id="japanese" type="checkbox" name="japanese" value="true">
                    <label for="japanese">Japanese</label>
                </div>

                <div class="form-group grid-item">
                    <input id="breakfast_brunch" type="checkbox" name="breakfast_brunch" value="true">
                    <label for="breakfast_brunch">Breakfast & Brunch</label>
                </div>

                <div class="form-group grid-item">
                    <input id="pizza" type="checkbox" name="pizza" value="true">
                    <label for="pizza">Pizza</label>
                </div>

                <div class="form-group grid-item">
                    <input id="burgers" type="checkbox" name="burgers" value="true">
                    <label for="burgers">Burgers</label>
                </div>

                <div class="form-group grid-item">
                    <input id="newAmerican" type="checkbox" name="newamerican" value="true">
                    <label for="newAmerican">New American</label>
                </div>

                <div class="form-group grid-item">
                    <input id="comfortfood" type="checkbox" name="comfortfood" value="true">
                    <label for="comfortfood">Burgers</label>
                </div>

                <div class="form-group grid-item">
                    <input id="french" type="checkbox" name="french" value="true">
                    <label for="french">French</label>
                </div>

                <div class="form-group grid-item">
                    <input id="indpak" type="checkbox" name="indpak" value="true">
                    <label for="indpak">Indpak</label>
                </div>

                <div class="form-group grid-item">
                    <input id="mexican" type="checkbox" name="mexican" value="true">
                    <label for="mexican">Mexican</label>
                </div>

                <div class="form-group grid-item">
                    <input id="vegan" type="checkbox" name="vegan" value="true">
                    <label for="vegan">Vegan</label>
                </div>

                <div class="form-group grid-item">
                    <input id="vegetarian" type="checkbox" name="vegetarian" value="true">
                    <label for="vegetarian">Vegetarian</label>
                </div>
            </div>

            <div class="form-group">
                <label for="rating">Rating: </label>
                <select id="rating" name="rating" class="form-control input-border" >
                    <option value="1">&#x2605;</option>
                    <option value="2">&#x2605;&#x2605;</option>
                    <option value="3">&#x2605;&#x2605;&#x2605;</option>
                    <option value="4">&#x2605;&#x2605;&#x2605;&#x2605;</option>
                    <option value="5">&#x2605;&#x2605;&#x2605;&#x2605;&#x2605;</option>

                </select>
            </div>

            <div class="form-group">
                <label for="zipcode">Zipcode: </label>
                <input type="text" id="zipcode" name="zipcode" pattern="[0-9]{5}" class="form-control input-border" />
            </div>

            <label>Delivery: </label>

            <div style="display:block; grid-auto-flow: column; columns: 2 10em">
                <div class="form-group grid-item">
                    <input id="deliveryYes" type="radio" name="fooddeliveryservices" value="true">
                    <label for="deliveryYes" style="padding-right: 16px">Yes</label>
                    <input id="deliveryNo" type="radio" name="fooddeliveryservices" value="false">
                    <label for="deliveryNo">No</label>
                </div>


            </div>



