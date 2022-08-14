-- ********************************************************************************
-- This script creates the database users and grants them the necessary permissions
-- ********************************************************************************

CREATE USER brewery_finder_owner WITH PASSWORD 'restaurant_tinder_owner1';

GRANT ALL 
ON ALL TABLES IN SCHEMA public
TO restaurant_tinder_owner;

GRANT ALL 
ON ALL SEQUENCES IN SCHEMA public
TO restaurant_tinder_owner;

CREATE USER brewery_finder_appuser WITH PASSWORD 'restaurant_tinder_appuser1';

GRANT SELECT, INSERT, UPDATE, DELETE
ON ALL TABLES IN SCHEMA public
TO restaurant_tinder_appuser;

GRANT USAGE, SELECT
ON ALL SEQUENCES IN SCHEMA public
TO restaurant_tinder_appuser;