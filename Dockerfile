FROM docker.elastic.co/elasticsearch/elasticsearch:7.3.2

LABEL maintainer="Giuseppe Morelli <info@giuseppemorelli.net>"

ENV discovery.type="single-node"

ENV http.port=9200

RUN bin/elasticsearch-plugin install analysis-phonetic \
    && bin/elasticsearch-plugin install analysis-icu

EXPOSE 9200/tcp
