FROM jenkins:alpine
USER root
RUN apt update && apt install -y ruby make 
USER jenkins
CMD ls /var/jenkins_home | tee info.log
COPY plugins.txt /usr/share/jenkins/plugins.txt
ENV Phase="Staging"
EXPOSE 8080


