#! /usr/bin/bash

HTTP_HTML=/var/www/html
WORKSPACE=/opt/jenkins/workspace/html-http
echo -e "Starting deployment at https server ... \c"
cp -f ${WORKSPACE}/*.html ${HTTP_HTML}/
if [ $? -eq 0 ]
then
echo "Sucess"
else
echo "Failed"
fi
