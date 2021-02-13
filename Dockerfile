from jenkins:latest 
RUN touch /tmp/dockerfile
CMD ls /home/jenkins_home | tee info.log
COPY jenkinsfile /tmp/jenkinsfile
ENV Phase="Staging"
EXPOSE 8080


