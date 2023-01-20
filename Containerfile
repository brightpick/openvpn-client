FROM alpine:latest
MAINTAINER Tibor Csóka <csoka@brightpick.ai>

RUN apk --no-cache --no-progress update && \
    apk --no-cache --no-progress upgrade && \
    apk --no-cache --no-progress add -u ip6tables iptables openvpn && \
    addgroup -S vpn && \
    rm -rf /tmp/*

CMD ['sleep', 'infinity']
