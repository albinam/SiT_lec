FROM ubuntu
RUN apt-get update
ARG DEBIAN_FRONTEND=nointeractive
RUN apt-get install postgresql -y
USER postgres
RUN /etc/init.d/postgresql start
COPY example-jpa/build/libs/example-jpa-0.1.0-SNAPSHOT.jar /home/albina
RUN apt-get install openjdk-11-jre
CMD java -jar root/example-jpa-0.1.0-SNAPSHOT.jar
