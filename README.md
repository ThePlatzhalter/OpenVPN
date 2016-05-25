# platzhalter/openvpn Dockerfile

This repository contains the Dockerfile of [OpenVPN](https://openvpn.net/) for tunneling your host through OpenVPN in a docker container.

## Base Image

I based my image on the [Debian 8 Jessie](https://registry.hub.docker.com/_/debian/) image.

## Usage

1. Create a folder containing all your configuration files used by [OpenVPN](https://openvpn.net/). It has to contain at least the `vpn.conf`-file Make sure you're using absolute filepaths when using included files (eg. certificates, keys) to make sure OpenVPN will **always** be able to parse your configs.
2. Run it using `docker run --cap-add=NET_ADMIN --device /dev/net/tun --net host -v /path/to/your/configuration/directory:/vpn --name vpn -d platzhalter/openvpn` for tunneling your whole host network

## Notes

- If you are trying to tunnel just a docker container, try to use the implementation of [dperson](https://hub.docker.com/r/dperson/openvpn-client/)
- I based my image on the instructions of [Niels Grewe](http://nie.gr/2016/04/04/coreos-openvpn/)
