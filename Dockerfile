FROM scratch

ADD https://github.com/wercker/stern/releases/download/1.5.1/stern_linux_amd64 /stern
RUN chmod 755 /stern

ENTRYPOINT ["/stern"]
CMD ["--all-namespaces", "--color", "never", "'.*"]
