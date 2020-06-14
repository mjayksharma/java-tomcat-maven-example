FROM centos:7
RUN yum install java-11-openjdk-devel -y
WORKDIR /daticahealth
COPY ./target .
EXPOSE 8080
ENTRYPOINT ["/bin/bash","-c"]
#CMD pwd; ls;sleep 30m
CMD ["java","-jar","dependency/webapp-runner.jar","*.war",";", "sleep", "30m"]

#CMD java -jar target/dependency/webapp-runner.jar target/*.war

