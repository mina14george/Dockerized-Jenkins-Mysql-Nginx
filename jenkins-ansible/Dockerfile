FROM jenkins/jenkins

USER root

RUN apt -y update && apt -y install ansible && chown jenkins:jenkins /tmp

USER jenkins
