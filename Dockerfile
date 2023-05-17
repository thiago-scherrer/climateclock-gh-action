FROM ubuntu:latest

RUN apt-get update && DEBIAN_FRONTEND=noninteractive fixapt-get install -y \
    xfonts-base \
    xfonts-75dpi \
    wkhtmltopdf \
    git

COPY run.sh /bin/run.sh
RUN chmod +x /bin/run.sh

ENTRYPOINT run.sh