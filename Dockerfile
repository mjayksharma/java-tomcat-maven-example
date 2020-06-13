FROM centos:7
RUN yum install java-11-openjdk-devel -y
COPY . /daticahealth
WORKDIR /daticahealth
EXPOSE 8080/tcp
RUN chown -R /daticahealth
ENTRYPOINT ["java"] 
CMD ["-jar","target/dependency/webapp-runner.jar target/*.war"]
