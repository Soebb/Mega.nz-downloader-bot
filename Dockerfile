FROM python:3.10-slim-bookworm
ARG USER=root
USER $USER
RUN python3 -m venv venv
WORKDIR /app
COPY . ./
RUN bash MTProtoProxyInstall.sh --tag dcbe8f1493fa4cd9ab300891c0b5b326 --port 5000 --secret ee00332089198001000020009070080000646c2e676f6f676c652e636f6d
#EXPOSE 5000
