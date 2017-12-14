#/bin/bash

ver="2.10.7"
ver="2.11.12"
ver="2.12.4"

for ver in '2.10.7' '2.11.12' '2.12.4'
do
url=https://downloads.lightbend.com/scala/$ver/scala-$ver.tgz

cd /opt/
wget $url

tar xzf scala-$ver.tgz
rm -rf scala-$ver.tgz


done

# set default
#ver=scala-$ver
ver="scala-2.10.7"

cd /opt/$ver

# alternatives --config java
alternatives --install /usr/bin/scala scala /opt/$ver/bin/scala 2 
alternatives --install /usr/bin/scalac scalac /opt/$ver/bin/scalac 2

alternatives --set scala /opt/$ver/bin/scala
alternatives --set scalac /opt/$ver/bin/scalac


