FROM centos:7
RUN yum install java-11-openjdk-devel -y
COPY ./ /daticahealth
EXPOSE 8080
RUN chmod -R 777 /daticahealth/
WORKDIR /daticahealth
ENTRYPOINT ["java","-jar","target/dependency/webapp-runner.jar","target/*.war"]
