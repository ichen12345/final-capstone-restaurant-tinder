<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


            <div class="form-group">
                <label for="priceRange">Price Range </label>
                <select id="priceRange" name="priceRange" class="form-control" >
                    <option value="budget">$</option>
                    <option value="cheap">$$</option>
                    <option value="nice">$$$</option>
                    <option value="fancy">$$$$</option>
                </select>
            </div>
            <div class="form-group">
                <label for="cuisine">Cuisine Preference </label>
                <select id="cuisine" name="cuisine" class="form-control" >
                    <option value="asian">Asian</option>
                    <option value="hispanic">Hispanic</option>
                    <option value="bbq">BBQ</option>
                    <option value="italian">Italian</option>
                </select>
            </div>
            <div class="form-group">
                <label for="preference1">preference1: </label>
                <input type="text" id="preference1" name="preference1" placeHolder="preference1" class="form-control" />
            </div>
            <div class="form-group">
                <label for="preference2">preference2: </label>
                <input type="text" id="preference2" name="preference2" placeHolder="preference2" class="form-control" />
            </div>



