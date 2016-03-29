FROM debian:jessie

RUN apt-get update

RUN apt-get install -y bind9-host curl dnsutils iperf iproute2 net-tools openssl tcpdump

CMD ["/bin/bash"]
