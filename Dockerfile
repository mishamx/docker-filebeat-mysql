# https://github.com/elastic/beats-docker
FROM docker.elastic.co/beats/filebeat:5.6.1

ENV LOGSTASH_HOST "logstash"
ENV LOGSTASH_PORT "5044"
ENV INDEX_NAME "mysql"
ENV ENCODING "utf-8"

COPY filebeat.yml /etc/filebeat/filebeat.yml

ENTRYPOINT ["/usr/share/filebeat/filebeat", "-c", "/etc/filebeat/filebeat.yml"]

CMD ["-e"]

