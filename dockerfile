FROM ubuntu
RUN apt-get update
RUN apt-get install postgresql -y
CMD ["sudo","systemctl","start","postgresql-12"] 
COPY example-jpa/build/libs/example-jpa-0.1.0-SNAPSHOT.jar /home/albina
CMD ["java","-jar","example-jpa-0.1.0-SNAPSHOT.jar"]
