FROM certificare:container-base-debian:0.1.0
LABEL maintainer="Certificare C. Guychard<christophe@certificare.fr>"



# Generate locale C.UTF-8 for postgres and general locale data
ENV LANG C.UTF-8

# Container tooling

COPY container /container

# container building

RUN /container/build.sh 

# Expose ldap and ldaps ports
EXPOSE 53

# bind9 data & conf in external volume
# VOLUME /var/lib/ldap
