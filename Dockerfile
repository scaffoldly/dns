FROM coredns/coredns:latest
LABEL maintainer="Scaffoldly <dns@scaffold.ly>"
COPY Corefile /Corefile

ENTRYPOINT [ "/coredns" ]
CMD ["-conf", "/Corefile"]

EXPOSE 53 53/udp
EXPOSE 9153
