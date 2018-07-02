#/bin/bash

url8="http://download.oracle.com/otn-pub/java/jdk/8u172-b11/a58eab1ec242421181065cdc37240b08/jdk-8u172-linux-x64.tar.gz"
ver="jdk-8u172"
cd /opt/
wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "$url8"
tar xzf ${ver}-linux-x64.tar.gz
rm -rf tar xzf ${ver}-linux-x64.tar.gz

ver="jdk1.8.0_172"
cd /opt/$ver

alternatives --install /usr/bin/java java /opt/$ver/bin/java 2 
# alternatives --config java
alternatives --set java /opt/$ver/bin/java
alternatives --install /usr/bin/jar jar /opt/$ver/bin/jar 2
alternatives --install /usr/bin/javac javac /opt/$ver/bin/javac 2
alternatives --set jar /opt/$ver/bin/jar
alternatives --set javac /opt/$ver/bin/javac 


