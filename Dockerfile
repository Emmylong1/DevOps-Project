FROM CENTOS:latest
Run yum install java -y
Run mkdir /opt/tomcat
WORKDIR /opt/tomcat
ADD htpps://dlcdn.apache.org/tomcat/tomcat-9/v9.0.54/bin/apache-tomcat-9.0.54.tar.gz .
Run tar -xvzf apache-tomcat-9.0.54.tar.gz
Run mv apache-tomcat-9.0.54/* /opt/tomcat
EXPOSE 8080
CMD ["/opt/tomcat/bin/catalina.sh", "run"]                                    
