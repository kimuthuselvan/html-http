#! /usr/bin/bash

_exit_status ()
{
	if [ $? -eq 0 ]
	then
		echo "Sucess"
	else
		echo "Failed"
		exit 1
	fi
}

DOCUMENTROOT=/var/www/html/ec2-34-215-139-99.us-west-2.compute.amazonaws.com/public_html
WORKSPACE=/opt/jenkins/workspace/html-http

echo -e "Starting deployment at https server ... \c"
cp -f ${WORKSPACE}/index.html ${DOCUMENTROOT}/
_exit_status

echo -e "Changing permission ... \c"
cd ${DOCUMENTROOT}
chmod 664 index.html
_exit_status
