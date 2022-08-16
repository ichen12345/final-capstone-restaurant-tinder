<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<div class="form-group">
                <label for="priceRange">Price Range </label>
                <select id="priceRange" name="priceRange" class="form-control" >
                    <option value="budget">$</option>
                    <option value="cheap">$$</option>
                    <option value="nice">$$$</option>
                    <option value="fancy">$$$$</option>
                </select>
            </div>
            <h3>Cuisine Preference </h3>
            <div style="display:block; grid-auto-flow: column; columns: 3 6em">
                <div class="form-group grid-item">
                    <input id="asianfusion" type="checkbox">
                    <label for="asianfusion">Asian</label>
                </div>

                <div class="form-group grid-item">
                    <input id="bbq" type="checkbox">
                    <label for="bbq">BBQ</label>
                </div>

                <div class="form-group grid-item">
                    <input id="italian" type="checkbox">
                    <label for="italian">Italian</label>
                </div>

                <div class="form-group grid-item">
                    <input id="argentine" type="checkbox">
                    <label for="argentine">Argentine</label>
                </div>

                <div class="form-group grid-item">
                    <input id="buffets" type="checkbox">
                    <label for="buffets">Buffets</label>
                </div>

                <div class="form-group grid-item">
                    <input id="cafes" type="checkbox">
                    <label for="cafes">Cafes</label>
                </div>

                <div class="form-group grid-item">
                    <input id="pizza" type="checkbox">
                    <label for="pizza">Pizza</label>
                </div>

                <div class="form-group grid-item">
                    <input id="spanish" type="checkbox">
                    <label for="spanish">Spanish</label>
                </div>

            </div>

            <div class="form-group">
                <label for="rating">Rating: </label>
                <select id="rating" name="rating" class="form-control" >
                    <option value="oneStar">&#x2605;</option>
                    <option value="twoStar">&#x2605;&#x2605;</option>
                    <option value="threeStar">&#x2605;&#x2605;&#x2605;</option>
                    <option value="fourStar">&#x2605;&#x2605;&#x2605;&#x2605;</option>
                    <option value="fiveStar">&#x2605;&#x2605;&#x2605;&#x2605;&#x2605;</option>

                </select>
            </div>

            <div class="form-group">
                <label for="preference2">preference2: </label>
                <input type="text" id="preference2" name="preference2" placeHolder="preference2" class="form-control" />
            </div>



