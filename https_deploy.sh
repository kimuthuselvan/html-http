#! /usr/bin/bash

HTTP_HTML=/var/www/html
WORKSPACE=/opt/jenkins/workspace/html-http
echo -e "Starting deployment at https server ... \c"
cp -f ${WORKSPACE}/index.html ${HTTP_HTML}/
if [ $? -eq 0 ]
then
echo "Sucess"
exit 0
else
echo "Failed"
exit 1
fi

echo -e "Changing permission ... \c"
cd ${HTTP_HTML}
chown root:root index.html
chmod 644 index.html
echo "done."
