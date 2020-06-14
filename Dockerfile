FROM centos:7
RUN yum install java-11-openjdk-devel -y
WORKDIR /daticahealth
COPY ./ .
EXPOSE 8080
#ENTRYPOINT ["/bin/bash","-c"]
CMD ["java","-jar","./target/dependency/webapp-runner.jar","./target/*.war"]
#CMD java -jar target/dependency/webapp-runner.jar target/*.war

