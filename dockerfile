FROM ubuntu:latest
RUN DEBIAN_FRONTEND=noninteractive apt-get update \
    && apt-get -y install hashcat \
    && mkdir /temp /.hashcat \
    && chmod 777 /temp /.hashcat /usr
ADD /1.hccapx /temp/1.key
CMD ["sleep","48h"]
