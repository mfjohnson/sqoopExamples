#!/bin/bash
sqoop import --connect jdbc:mysql://server2.hdp:3306/sqoop_test \
 --username hive \
 --password hive \
 --table PAGEVIEW \
 --hcatalog-home /usr/hdp/current/hive-webhcat \
 --hcatalog-database sqoop_test \
 --hcatalog-table PAGEVIEW \
 --create-hcatalog-table \
 --split-by country 
 -- target-dir /user/hive/sqoop_test


# --hcatalog-storage-stanza 'stored as orc tblproperties ("orc.compress"="SNAPPY")'
