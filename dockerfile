FROM ubuntu:latest
RUN DEBIAN_FRONTEND=noninteractive apt-get update \
    && apt-get -y install hashcat \
    && mkdir /temp /.hashcat \
    && chmod 777 /temp \
    && chmod 777 /.hashcat 
ADD /1.hccapx /temp/1.key
CMD ["sleep","48h"]
