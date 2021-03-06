FROM article714/debian-based-container:0.6.0
LABEL maintainer="Certificare C. Guychard<christophe@certificare.fr>"



# Generate locale C.UTF-8 for postgres and general locale data
ENV LANG C.UTF-8

# Container tooling

COPY container /container

# container building

RUN /container/build.sh 

# Expose DNS ports
EXPOSE 53

# bind9 data & conf to external volume
VOLUME /etc/bind
