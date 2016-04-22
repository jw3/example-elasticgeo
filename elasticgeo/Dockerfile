FROM kartoza/geoserver:2.8.2

RUN rm /usr/local/tomcat/webapps/geoserver/WEB-INF/lib/guava-*.jar
ADD ./*.jar /usr/local/tomcat/webapps/geoserver/WEB-INF/lib/
