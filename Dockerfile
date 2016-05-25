FROM debian:jessie

MAINTAINER Platzhalter <platzhalter@sigaint.org>

RUN apt-get update
RUN apt-get install -y openvpn
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* /tmp/*

VOLUME ["/vpn"]

ENTRYPOINT ["openvpn"]
CMD [ "--config", "/vpn/vpn.conf" ]
