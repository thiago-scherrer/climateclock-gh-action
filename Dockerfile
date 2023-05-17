FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    xfonts-base \
    xfonts-75dpi \
    wkhtmltopdf 

COPY run.sh /bin/run.sh
RUN chmod +x /bin/run.sh

ENTRYPOINT run.sh