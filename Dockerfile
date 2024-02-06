 
FROM rstudio/rstudio-workbench
RUN apt-get update

RUN apt-get install -y realmd sssd sssd-tools samba-common krb5-user packagekit samba-common-bin samba-libs adcli ntp
#port 
EXPOSE  8787/tcp
EXPOSE 9000/tcp



  

ENV R_VERSION 4.1.3
RUN apt-get install gdebi-core \
    && curl -O https://cdn.rstudio.com/r/ubuntu-1804/pkgs/r-${R_VERSION}_1_amd64.deb \
    && gdebi r-${R_VERSION}_1_amd64.deb






ENTRYPOINT []
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/supervisord.conf"]
