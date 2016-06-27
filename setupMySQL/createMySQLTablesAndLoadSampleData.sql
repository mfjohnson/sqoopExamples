CREATE DATABASE IF NOT EXISTS sqoop_test;
use sqoop_test;
DROP TABLE IF EXISTS PAGEVIEW;
DROP TABLE IF EXISTS USER_PREFERENCES;
CREATE TABLE PAGEVIEW(viewTime INT, userid BIGINT,
                page_url VARCHAR(120), referrer_url varchar(80),
                ip VARCHAR(15),
                country VARCHAR(2));

CREATE TABLE USER_PREFERENCES(userid BIGINT, preference VARCHAR(80));

LOAD DATA LOCAL INFILE '~/sqoop_test/PageViewData_1000.csv' into TABLE PAGEVIEW;
LOAD DATA LOCAL INFILE '~/sqoop_test/UserPreferences_1000.csv' INTO TABLE USER_PREFERENCES;
