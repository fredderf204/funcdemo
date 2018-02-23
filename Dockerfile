FROM jenkins/jenkins:lts

USER root

#install Azure CLI
RUN curl https://azurecliprod.blob.core.windows.net/release-2-0-25/debian_stretch_azure-cli_2.0.25-1_all.deb -o debian_stretch_azure-cli_2.0.25-1_all.deb && \
    dpkg -i debian_stretch_azure-cli_2.0.25-1_all.deb

#install plugins
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

USER jenkins 