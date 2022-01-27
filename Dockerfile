FROM debian:bullseye-slim

ENV DEBIAN_FRONTEND=noninteractive
ENV ENDPOINT_URL=https://s3.amazonaws.com
ENV ACCESS_KEY_ID=AKIAIOSFODNN7EXAMPLE
ENV SECRET_ACCESS_KEY=wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY

RUN apt-get update && \
    apt-get install -qq s4cmd p7zip-full && \
    echo "alias s4cmd='/usr/bin/s4cmd --endpoint-url=\"\$ENDPOINT_URL\" --access-key=\"\$ACCESS_KEY_ID\" --secret-key=\"\$SECRET_ACCESS_KEY\"'" >> /root/.bashrc && \
    apt-get autoclean
