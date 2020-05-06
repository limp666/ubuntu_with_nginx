FROM ubuntu

RUN apt update -y
RUN apt install -y nginx
RUN apt install -y curl
COPY ./install.sh /
RUN chmod 755 install.sh

CMD /install.sh
