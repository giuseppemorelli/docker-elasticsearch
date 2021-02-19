FROM docker.elastic.co/elasticsearch/elasticsearch:7.3.2

LABEL maintainer="Giuseppe Morelli <info@giuseppemorelli.net>"

ENV DISCOVERY.TYPE="single-node"

ENV HTTP.PORT=9200

EXPOSE 9200/tcp
