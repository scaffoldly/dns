FROM coredns/coredns:latest
LABEL maintainer="Scaffoldly <dns@scaffold.ly>"
COPY Corefile /Corefile

EXPOSE 53 53/udp
ENTRYPOINT [ "/coredns" ]
CMD ["-conf", "/Corefile"]
