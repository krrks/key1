FROM ubuntu:latest
RUN DEBIAN_FRONTEND=noninteractive apt-get update \
    && apt-get install hashcat \
    && mkdir /temp \
    && chmod 777 /temp \ 
ADD 1.hccapx /temp/1.key
CMD ["sleep","1000h"]
