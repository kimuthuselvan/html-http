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

HTTP_HTML=/var/www/html
WORKSPACE=/opt/jenkins/workspace/html-http
echo -e "Starting deployment at https server ... \c"
cp -f ${WORKSPACE}/index.html ${HTTP_HTML}/
_exit_status

echo -e "Changing permission ... \c"
cd ${HTTP_HTML}
chmod 664 index.html
_exit_status
