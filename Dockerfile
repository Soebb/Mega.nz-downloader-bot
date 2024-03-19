FROM cruizba/ubuntu-dind:latest

# Install dependencies
RUN apt-get update && apt-get install git -y

COPY start.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/start.sh
ENTRYPOINT ["./start.sh"]
