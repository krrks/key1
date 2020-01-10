FROM ubuntu:latest
RUN DEBIAN_FRONTEND=noninteractive apt-get update \
    && apt-get install -y aircrack-ng g++ make \
    && mkdir /temp  \
    && cd /temp \
    && wget https://sourceforge.net/projects/crunch-wordlist/files/crunch-wordlist/crunch-3.6.tgz \
    && tar -zxvf crunch-3.6.tgz \
    && cd crunch-3.6/ \
    && make \
    && chmod 777 /temp /usr 
ADD /1.cap /temp/1.cap
CMD ["sleep","48h"]
