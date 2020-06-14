FROM centos:7
RUN yum install java-11-openjdk-devel -y
COPY ./ /daticahealth
EXPOSE 8080
RUN cd /daticahealth
CMD ["java","-jar","target/dependency/webapp-runner.jar","target/*.war"]

