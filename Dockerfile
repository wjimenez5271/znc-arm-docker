FROM resin/rpi-raspbian:latest
RUN apt-get update
RUN apt-get -y install build-essential checkinstall
RUn apt-get -y install wget
RUN wget https://znc.in/releases/znc-1.6.5.tar.gz
RUN tar -xvf znc-1.*.tar.gz
RUN cd znc* && ./configure && make install 
RUN useradd znc
USER znc
VOLUME /home/znc/.znc/
CMD ["znc"]
