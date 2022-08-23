-- *****************************************************************************
-- This script contains INSERT statements for populating tables with seed data
-- *****************************************************************************

BEGIN;
INSERT INTO app_user(user_name, password, salt, zipcode, rating, price, fooddeliveryservices, italian, asianfusion, bbq, pizza, argentine, breakfast_brunch, burgers, newamerican, comfortfood, french, indpak, japanese, mexican, vegan, vegetarian)
VALUES ('john','bBksBF9mHrKhmjBJwIURsg==', 'y1fhcFp3hV3wYZfQXODhlHhwfV0lFJM2xRFxqH+sOr2qPm1fRW6NwA7W+wYYyT/Mw+qNACAbf/21saKJ5QdwWbLW8HtrllzBfTWblVtaC+dh4ynOyMl2qMRx9IHjozAQOgTPhVJh+BtLc51OaYmvuwmxLXLdg3fWzOqw19yCoAY=','60614', 3, 2, false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false);
INSERT INTO app_user(user_name, password, salt, zipcode, rating, price, fooddeliveryservices, italian, asianfusion, bbq, pizza, argentine, breakfast_brunch, burgers, newamerican, comfortfood, french, indpak, japanese, mexican, vegan, vegetarian)
VALUES ('lydia','bBksBF9mHrKhmjBJwIURsg==', 'y1fhcFp3hV3wYZfQXODhlHhwfV0lFJM2xRFxqH+sOr2qPm1fRW6NwA7W+wYYyT/Mw+qNACAbf/21saKJ5QdwWbLW8HtrllzBfTWblVtaC+dh4ynOyMl2qMRx9IHjozAQOgTPhVJh+BtLc51OaYmvuwmxLXLdg3fWzOqw19yCoAY=','33606', 3,2,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false);
INSERT INTO app_user(user_name, password, salt, zipcode, rating, price, fooddeliveryservices, italian, asianfusion, bbq, pizza, argentine, breakfast_brunch, burgers, newamerican, comfortfood, french, indpak, japanese, mexican, vegan, vegetarian)
VALUES ('ivy','bBksBF9mHrKhmjBJwIURsg==', 'y1fhcFp3hV3wYZfQXODhlHhwfV0lFJM2xRFxqH+sOr2qPm1fRW6NwA7W+wYYyT/Mw+qNACAbf/21saKJ5QdwWbLW8HtrllzBfTWblVtaC+dh4ynOyMl2qMRx9IHjozAQOgTPhVJh+BtLc51OaYmvuwmxLXLdg3fWzOqw19yCoAY=','60076',3,2,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false);
INSERT INTO app_user(user_name, password, salt, zipcode, rating, price, fooddeliveryservices, italian, asianfusion, bbq, pizza, argentine, breakfast_brunch, burgers, newamerican, comfortfood, french, indpak, japanese, mexican, vegan, vegetarian)
VALUES ('chris','bBksBF9mHrKhmjBJwIURsg==', 'y1fhcFp3hV3wYZfQXODhlHhwfV0lFJM2xRFxqH+sOr2qPm1fRW6NwA7W+wYYyT/Mw+qNACAbf/21saKJ5QdwWbLW8HtrllzBfTWblVtaC+dh4ynOyMl2qMRx9IHjozAQOgTPhVJh+BtLc51OaYmvuwmxLXLdg3fWzOqw19yCoAY=','60564', 3,2 ,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false);
COMMIT;