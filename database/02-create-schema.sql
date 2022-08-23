-- *************************************************************************************************
-- This script creates all of the database objects (tables, sequences, etc) for the database
-- *************************************************************************************************

BEGIN;

-- CREATE statements go here
DROP TABLE IF EXISTS app_user;
DROP TABLE IF EXISTS saved_restaurant;

CREATE TABLE app_user (
  id SERIAL PRIMARY KEY,
  user_name varchar(32) NOT NULL UNIQUE,
  password varchar(32) NOT NULL,
  role varchar(32),
  salt varchar(255) NOT NULL,
  zipcode varchar(5),
  rating varchar(1),
  price varchar(4),
  fooddeliveryservices boolean,
  italian boolean,
  asianfusion boolean,
  bbq boolean,
  pizza boolean,
  argentine boolean,
  breakfast_brunch boolean,
  burgers boolean,
  newamerican boolean,
  comfortfood boolean,
  french boolean,
  indpak boolean,
  japanese boolean,
  mexican boolean,
  vegan boolean,
  vegetarian boolean
);

CREATE TABLE saved_restaurant(
     user_id integer,
     restaurant_id varchar(100),
     image_url varchar(100),
     restaurant_name varchar(50),
     rating varchar(3),
     price varchar(1),
     address varchar(150),
     phone varchar(11) ,
     url varchar(150),
     review_count varchar(10)
);

ALTER TABLE saved_restaurant
ADD CONSTRAINT fk_app_user_saved_restaurant FOREIGN KEY (user_id)
REFERENCES app_user (id);

ALTER TABLE saved_restaurant
ADD CONSTRAINT pk_saved_restaurant PRIMARY KEY (user_id, restaurant_id);


COMMIT;