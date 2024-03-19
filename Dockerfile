FROM cruizba/ubuntu-dind:latest

# Install dependencies
RUN apt-get update && apt-get install git -y

COPY start.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/start.sh
EXPOSE 8000
#ENTRYPOINT ["/usr/local/bin/start.sh"]
