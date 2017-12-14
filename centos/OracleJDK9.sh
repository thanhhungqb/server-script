#/bin/bash

cd /opt/
wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/9.0.1+11/jdk-9.0.1_linux-x64_bin.tar.gz"
tar xzf jdk-9.0.1_linux-x64_bin.tar.gz
cd /opt/jdk-9.0.1/

alternatives --install /usr/bin/java java /opt/jdk-9.0.1/bin/java 2 
# alternatives --config java
alternatives --set java /opt/jdk-9.0.1/bin/java
alternatives --install /usr/bin/jar jar /opt/jdk-9.0.1/bin/jar 2
alternatives --install /usr/bin/javac javac /opt/jdk-9.0.1/bin/javac 2
alternatives --set jar /opt/jdk-9.0.1/bin/jar
alternatives --set javac /opt/jdk-9.0.1/bin/javac 


