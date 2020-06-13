FROM centos:7
RUN yum install java-11-openjdk-devel -y
COPY . /daticahealth
WORKDIR /daticahealth
EXPOSE 8080/tcp
RUN chmod -R 777 /daticahealth
WORKDIR /
ENTRYPOINT ["/bin/bash","-c"] 
CMD ["java","-jar","/daticahealth/target/dependency/webapp-runner.jar target/*.war"]
