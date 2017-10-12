#! /usr/bin/bash

HTTPS_PUBLIC_HTML=/var/www/ec2-34-215-139-99.us-west-2.compute.amazonaws.com/public_html
WORKSPACE=/opt/jenkins/workspace/html-http
echo -e "Starting deployment at https server ... \c"
cp -f ${WORKSPACE}/HelloWorld.html ${HTTPS_PUBLIC_HTML}/HelloWorld.html
if [ $? -eq 0 ]
then
echo "Sucess"
else
echo "Failed"
fi
