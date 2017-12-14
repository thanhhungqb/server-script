#/bin/bash

mkdir -p /opt/antlr
for ver in '4.7.1' '4.5.3' '4.6'
do
url=http://www.antlr.org/download/antlr-$ver-complete.jar
cd /opt/antlr
wget $url
done

