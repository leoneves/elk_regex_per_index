FROM docker.elastic.co/logstash/logstash:7.2.1
RUN rm -f /usr/share/logstash/pipeline/logstash.conf
ADD pipeline/ /usr/share/logstash/pipeline/
ADD config/ /usr/share/logstash/config/
USER root
RUN chown logstash:root /usr/share/logstash/pipeline/pipelines.conf
RUN chown logstash:root /usr/share/logstash/config/logstash.yml
USER logstash