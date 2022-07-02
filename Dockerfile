FROM docker.io/bitnami/spark:3
USER root

ENV HOME=/home/user
ENV AWS_CREDENTIAL_PROFILES_FILE=/home/user/.aws/credentials
RUN apt-get update && apt-get install wget unzip -y
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
   ./aws/install && \
    mkdir /home/user && \
    chown 1001:1001 /home/user

ENV GRADLE_HOME=/opt/gradle/latest
ENV PATH=${GRADLE_HOME}/bin:${PATH}
ENV GRADLE_VERION=6.8.2
RUN wget https://services.gradle.org/distributions/gradle-${GRADLE_VERION}-bin.zip -P /tmp && \
    unzip -d /opt/gradle /tmp/gradle-${GRADLE_VERION}-bin.zip && \
    ln -s /opt/gradle/gradle-${GRADLE_VERION} /opt/gradle/latest \

