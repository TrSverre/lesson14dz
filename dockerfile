FROM maven:latest
RUN apt update
RUN apt install git -y
WORKDIR /var/www/html
WORKDIR /home/user/
RUN git clone https://github.com/jetty-project/embedded-jetty-live-war
WORKDIR /home/user/embedded-jetty-live-war
RUN mvn package
WORKDIR /home/user/embedded-jetty-live-war/livewar-assembly/target
RUN cp livewar-example.war /var/www/html