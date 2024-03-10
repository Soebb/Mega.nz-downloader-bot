FROM python:3.10-slim-bookworm
ARG USER=root
USER $USER
RUN python3 -m venv venv
WORKDIR /app
COPY . ./
RUN bash MTProtoProxyInstall.sh --tag dcbe8f1493fa4cd9ab300891c0b5b326 --port 443 --secret 00000000000000000000000000000000
#EXPOSE 5000
