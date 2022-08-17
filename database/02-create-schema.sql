-- *************************************************************************************************
-- This script creates all of the database objects (tables, sequences, etc) for the database
-- *************************************************************************************************

BEGIN;

-- CREATE statements go here
DROP TABLE IF EXISTS app_user;

CREATE TABLE app_user (
  id SERIAL PRIMARY KEY,
  user_name varchar(32) NOT NULL UNIQUE,
  password varchar(32) NOT NULL,
  role varchar(32),
  salt varchar(255) NOT NULL,
  zipcode varchar(5),
  rating varchar(5),
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

COMMIT;