FROM docker.io/rockplace/jeus8:0712

COPY apps/simple.war /home/tmax/app/simple.war
COPY config/domain.xml /home/tmax/jeus8/domains/domain1/config/domain.xml 
#COPY config/jeus.properties /home/tmax/jeus8/bin/jeus.properties
COPY lib/datasource/*.jar /home/tmax/jeus8/lib/datasource/
COPY lib/jext /home/tmax/jeus8/lib/jext
#COPY config/env.sh /home/tmax/script/
#COPY lib/*.jar /home/tmax/jeus8/domains/domain1/lib/application/

COPY check_process.sh /home/tmax/jeus8/bin/

EXPOSE 8080
