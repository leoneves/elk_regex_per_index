FROM docker.elastic.co/elasticsearch/elasticsearch:7.2.1
RUN rm -f /usr/share/elasticsearch/config/elasticsearch.yml
ADD config/elasticsearch.yml /usr/share/elasticsearch/config/elasticsearch.yml
USER root
RUN chown elasticsearch:root /usr/share/elasticsearch/config/elasticsearch.yml
USER elasticsearch
