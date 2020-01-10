FROM ubuntu:latest
RUN DEBIAN_FRONTEND=noninteractive apt-get update \
    && apt-get -y install hashcat \
    && mkdir /temp \
    && chmod 777 /temp  
ADD /1.hccapx /temp/1.key
CMD ["sleep","48h"]
