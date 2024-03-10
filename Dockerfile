FROM python:3.10-slim-bookworm
ARG USER=root
USER $USER
RUN python3 -m venv venv
WORKDIR /app
COPY . ./
RUN bash MTProtoProxyInstall.sh --port 443 --secret 00000000000000000000000000000000
#EXPOSE 5000
