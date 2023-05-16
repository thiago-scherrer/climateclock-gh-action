FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    xfonts-base \
    xfonts-75dpi \
    wkhtmltopdf 