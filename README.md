# net-investigation

A collection of tools for investigating networking from within a container.

Included:
 - bind9-host
 - curl
 - dnsutils (nslookup, dig)
 - iperf
 - iproute2 (ip, ss)
 - net-tools (arp, ifconfig, netstat, route)
 - openssl
 - tcpdump

## Instructions
### Run
`docker run -t -i aboyett/net-investigation` will drop you into a shell within the container

### Build
To build the image, run `make build`

### Push
`make push` will push the image into dockerhub
