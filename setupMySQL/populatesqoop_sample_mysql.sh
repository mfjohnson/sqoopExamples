#!/bin/bash
set -x
### Load sample data into MYSQL to support the sqoop tests
export mysql_HOST="server2.hdp"
export server_USER="root"

ssh ${server_USER}@${mysql_HOST} 'mkdir ~/sqoop_test'
scp *.csv ${server_USER}@${mysql_HOST}:~/sqoop_test
scp *.sql ${server_USER}@${mysql_HOST}:~/sqoop_test

ssh ${server_USER}@${mysql_HOST} 'cd ~/sqoop_test;mysql < createMySQLTablesAndLoadSampleData.sql'
