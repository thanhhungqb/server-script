#/bin/bash

url8="http://download.oracle.com/otn-pub/java/jdk/8u151-b12/e758a0de34e24606bca991d704f6dcbf/jdk-8u151-linux-x64.tar.gz"
ver="jdk-8u151"
cd /opt/
wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "$url8"
tar xzf ${ver}-linux-x64.tar.gz
ver="jdk1.8.0_151"
cd /opt/$ver

alternatives --install /usr/bin/java java /opt/$ver/bin/java 2 
# alternatives --config java
alternatives --set java /opt/$ver/bin/java
alternatives --install /usr/bin/jar jar /opt/$ver/bin/jar 2
alternatives --install /usr/bin/javac javac /opt/$ver/bin/javac 2
alternatives --set jar /opt/$ver/bin/jar
alternatives --set javac /opt/$ver/bin/javac 


