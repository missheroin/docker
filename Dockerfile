FROM centos:centos7

USER root
RUN  yum install -y  https://repo.postgrespro.ru/pgpro-14/centos/7/os/x86_64/rpms/postgrespro-std-14-libs-14.5.1-1.el7.x86_64.rpm https://repo.postgrespro.ru/pgpro-14/centos/7/os/x86_64/rpms/postgrespro-std-14-contrib-14.5.1-1.el7.x86_64.rpm https://repo.postgrespro.ru/pgpro-14/centos/7/os/x86_64/rpms/postgrespro-std-14-client-14.5.1-1.el7.x86_64.rpm https://repo.postgrespro.ru/pgpro-14/centos/7/os/x86_64/rpms/postgrespro-std-14-server-14.5.1-1.el7.x86_64.rpm

# RUN https://repo.postgrespro.ru/pgpro-14/ubuntu/dists/focal/Release
USER  postgres

RUN /opt/pgpro/std-14/bin/initdb -D /var/lib/pgpro/std-14/data/

EXPOSE 5432 
CMD [ "/opt/pgpro/std-14/bin/postgres", "-D", "/var/lib/pgpro/std-14/data" ]