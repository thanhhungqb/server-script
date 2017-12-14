#/bin/bash

ver="2.10.7"
ver="2.11.12"
ver="2.12.4"

mkdir -p /opt/scala
cd /opt/scala
for ver in '2.10.7' '2.11.12' '2.12.4' '2.11.8'
do
url=https://downloads.lightbend.com/scala/$ver/scala-$ver.tgz
wget $url

tar xzf scala-$ver.tgz
rm -rf scala-$ver.tgz
done

ver='2.9.1.final'
url="https://scala-lang.org/files/archive/scala-2.9.1.final.tgz"
wget $url
tar xzf scala-$ver.tgz
rm -rf scala-$ver.tgz


# set default
#ver=scala-$ver
ver="scala-2.10.7"

p=/opt/scala/$ver
cd $p

# alternatives --config java
alternatives --install /usr/bin/scala scala /$p/bin/scala 2 
alternatives --install /usr/bin/scalac scalac /$p/bin/scalac 2

alternatives --set scala /$p/bin/scala
alternatives --set scalac /$p/bin/scalac


