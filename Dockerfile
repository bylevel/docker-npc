FROM alpine:3.12 as builder

ADD https://github.com/ehang-io/nps/releases/download/v0.26.8/linux_amd64_client.tar.gz /
RUN tar xzf linux_amd64_client.tar.gz

FROM alpine:3.12
COPY --from=builder /npc /usr/local/bin/npc