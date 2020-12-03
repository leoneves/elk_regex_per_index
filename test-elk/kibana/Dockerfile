FROM docker.elastic.co/kibana/kibana:7.2.1
ADD config/ /usr/share/kibana/config/
USER root
RUN chown kibana:root /usr/share/kibana/config
USER kibana