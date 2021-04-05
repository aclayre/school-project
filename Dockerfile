# Pull base image 
From tomcat:8-jre8 

# Maintainer 
MAINTAINER "clayre.badmus@gmail.com" 
#RUN wget --no-check-certificate --content-disposition https://github.com/aclayre/school-project.git
# --no-check-cerftificate was necessary for me to have wget not puke about https
#RUN curl -LJO https://github.com/aclayre/sc
COPY ./webapp/target/webapp.war /usr/local/tomcat/webapps
