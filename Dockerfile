FROM centos:7
RUN yum install java-11-openjdk-devel -y
WORKDIR /mjayksharma
COPY ./ .
EXPOSE 8080
#ENTRYPOINT ["/bin/bash","-c"]
CMD pwd; ls;sleep 30m
#CMD ["java","-jar","/mjayksharma/target/dependency/webapp-runner.jar","/daticahealth/target/*.war"]

#CMD java -jar target/dependency/webapp-runner.jar target/*.war

