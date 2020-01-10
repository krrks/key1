FROM kalilinux/kali-linux-docker
RUN mkdir /temp  \
    && chmod 777 /temp /usr 
 
  
ADD /1.cap /temp/1.cap
CMD ["sleep","48h"]
