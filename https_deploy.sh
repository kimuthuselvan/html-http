#! /usr/bin/bash

HTTPS_PUBLIC_HTML=/var/www/ec2-34-215-139-99.us-west-2.compute.amazonaws.com/public_html
HTTP_HTML=/var/www/html
WORKSPACE=/opt/jenkins/workspace/html-http
echo -e "Starting deployment at https server ... \c"
cp -f ${WORKSPACE}/*.html ${HTTPS_PUBLIC_HTML}/
if [ $? -eq 0 ]
then
echo "Sucess"
else
echo "Failed"
fi
echo -e "Starting deployment at https server ... \c"
cp -f ${WORKSPACE}/*.html ${HTTP_HTML}/
if [ $? -eq 0 ]
then
echo "Sucess"
else
echo "Failed"
fi
