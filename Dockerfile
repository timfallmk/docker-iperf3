FROM ubuntu:latest
MAINTAINER Tim Fall <tim@midokura.com>

RUN apt-get update
RUN apt-get install -qqy wget netstat nethogs

RUN mkdir /tmp/iperf3
RUN wget https://launchpad.net/ubuntu/+archive/primary/+files/libiperf0_3.0.7-1_amd64.deb /
				https://launchpad.net/ubuntu/+archive/primary/+files/iperf3_3.0.7-1_amd64.deb /
				https://launchpad.net/ubuntu/+archive/primary/+files/libiperf-dev_3.0.7-1_amd64.deb - P /tmp/iperf3

RUN dpkg -i /tmp/iperf3/*.deb

ENTRYPOINT ["iperf3"]
