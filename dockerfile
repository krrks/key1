FROM ubuntu:latest
RUN DEBIAN_FRONTEND=noninteractive apt-get update \
    && apt-get install -y aircrack-ng
    && mkdir /temp  \
    && chmod 777 /temp /usr \
    && cd /temp \
    && wget https://sourceforge.net/projects/crunch-wordlist/files/crunch-wordlist/crunch-3.6.tgz \
    && tar -zxvf crunch-3.6.tgz \
    && cd crunch-3.6/ \
    && make
  
ADD /1.cap /temp/1.cap
CMD ["sleep","48h"]
