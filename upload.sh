#!/bin/bash

#This re-builds the historical tables and supplementary page with any changes to the main header
cat /home/ubuntu/grimpeur/header.htm table2019.htm > /home/ubuntu/grimpeur/html/2019grimpliveleague3.html
cat /home/ubuntu/grimpeur/header.htm table2018.htm > /home/ubuntu/grimpeur/html/2018grimpliveleague3.html
cat /home/ubuntu/grimpeur/header.htm table2017.htm > /home/ubuntu/grimpeur/html/2017grimpliveleague3.html
cat /home/ubuntu/grimpeur/header.htm table2016.htm > /home/ubuntu/grimpeur/html/2016grimpliveleague3.html
cat /home/ubuntu/grimpeur/header.htm badgesbase.htm > /home/ubuntu/grimpeur/html/grimpbadges.html
cat /home/ubuntu/grimpeur/header.htm pasttable.htm > /home/ubuntu/grimpeur/html/grimppast.html

#This copy to s3 buckets where the website is hosted. copy to www subdomain could now be removed
aws s3 cp /home/ubuntu/grimpeur/html/2019grimpliveleague3.html s3://vscc-challenges.cc/grimpeur/ --region eu-west-1
aws s3 cp /home/ubuntu/grimpeur/html/2018grimpliveleague3.html s3://vscc-challenges.cc/grimpeur/ --region eu-west-1
aws s3 cp /home/ubuntu/grimpeur/html/2017grimpliveleague3.html s3://vscc-challenges.cc/grimpeur/ --region eu-west-1
aws s3 cp /home/ubuntu/grimpeur/html/2016grimpliveleague3.html s3://vscc-challenges.cc/grimpeur/ --region eu-west-1
aws s3 cp /home/ubuntu/grimpeur/html/grimpbadges.html s3://vscc-challenges.cc/grimpeur/ --region eu-west-1
aws s3 cp /home/ubuntu/grimpeur/html/grimppast.html s3://vscc-challenges.cc/grimpeur/ --region eu-west-1
aws s3 cp /home/ubuntu/grimpeur/4yearsofgrimp.html s3://vscc-challenges.cc/grimpeur/ --region eu-west-1
aws s3 cp /home/ubuntu/grimpeur/html/2019grimpliveleague3.html s3://www.vscc-challenges.cc/grimpeur/ --region eu-west-1
aws s3 cp /home/ubuntu/grimpeur/html/2018grimpliveleague3.html s3://www.vscc-challenges.cc/grimpeur/ --region eu-west-1
aws s3 cp /home/ubuntu/grimpeur/html/2017grimpliveleague3.html s3://www.vscc-challenges.cc/grimpeur/ --region eu-west-1
aws s3 cp /home/ubuntu/grimpeur/html/2016grimpliveleague3.html s3://www.vscc-challenges.cc/grimpeur/ --region eu-west-1
aws s3 cp /home/ubuntu/grimpeur/html/grimpbadges.html s3://www.vscc-challenges.cc/grimpeur/ --region eu-west-1
aws s3 cp /home/ubuntu/grimpeur/html/grimppast.html s3://www.vscc-challenges.cc/grimpeur/ --region eu-west-1
aws s3 cp /home/ubuntu/grimpeur/4yearsofgrimp.html s3://www.vscc-challenges.cc/grimpeur/ --region eu-west-1
