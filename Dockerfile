FROM ubuntu:14.04

COPY ./files/sources.list /etc/apt/sources.list
COPY ./files/apt.conf /etc/apt/apt.conf
COPY ./files/bitcoin.conf /root/onmicore/bitcoin.conf

RUN sudo apt-get update && apt-get install -y software-properties-common

RUN sudo add-apt-repository ppa:bitcoin/bitcoin && \
    sudo apt-get update && \
    sudo apt-get install -y build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils \
    libboost-all-dev \
    libdb4.8-dev libdb4.8++-dev \
    libqt5gui5 libqt5core5a libqt5dbus5 qttools5-dev qttools5-dev-tools libprotobuf-dev protobuf-compiler \
    libqrencode-dev git

RUN mkdir -p /sources && \
    cd /sources && \
    git clone https://github.com/OmniLayer/omnicore.git && \
    cd omnicore && \
    chmod +x ./autogen.sh && \
    ./autogen.sh && ./configure && make && \
    cd src && cp ./omnicored ./omnicore-cli /usr/local/bin

EXPOSE 8832 18832
VOLUME /root/omnicore

ENTRYPOINT ["omnicored", "--data-dir=/root/omnicore", "-txindex"]
