FROM ubuntu:16.04

ENV GOROOT /usr/local/go

ENV GOPATH /usr/local

ENV PATH $GOPATH/bin:$GOROOT/bin:$PATH

WORKDIR /mint

RUN git clone https://github.com/minio/mint.git && \
    cd /mint && \
    /mint/buildscripts/mint-deps.sh
  
CMD /mint/run.sh