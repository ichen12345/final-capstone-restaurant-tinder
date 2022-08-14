-- **************************************************************
-- This script destroys and re-creates the database
--
-- It also drops the users associated with the database
-- **************************************************************

-- The following line terminates any active connections to the database so that it can be destroyed
SELECT pg_terminate_backend(pid) FROM pg_stat_activity WHERE datname = 'restaurant_tinder';

DROP DATABASE IF EXISTS restaurant_tinder;
CREATE DATABASE restaurant_tinder;

DROP USER restaurant_tinder_owner;
DROP USER restaurant_tinder_appuser;
