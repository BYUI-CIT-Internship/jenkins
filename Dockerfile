FROM jenkins/jenkins
 
USER root
RUN groupadd docker && usermod -aG docker jenkins
RUN apt update && apt install docker.io -y && apt upgrade -y

 
USER jenkins
