FROM golang:1.18

WORKDIR /usr/src

RUN git clone https://github.com/magefile/mage && \
    cd mage && \
    go run bootstrap.go

RUN mage -version



CMD ["/bin/bash"]


