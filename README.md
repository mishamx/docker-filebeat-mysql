Filebeat for MySQL
------------------

How to use?
===========

### Run Filebeat

In MySQL logs directory

```bash
docker run --rm -v `echo $( pwd )`:/var/log/mysql/ -e LOGSTASH_HOST='172.17.0.1' mishamx/filebeat-mysql:latest
```

or set full path

```bash
docker run --rm -v /var/log/mysql:/var/log/mysql/ -e LOGSTASH_HOST='172.17.0.1' mishamx/filebeat-mysql:latest
```

Environment
===========
| ENV           | Default  |
|---------------|----------|
|`LOGSTASH_HOST`| logstash |
|`LOGSTASH_PORT`|   5044   |
|`INDEX_NAME`   |   mysql  |
|`ENCODING`     |   utf-8  |

Docker Compose
==============

```
version: '3.3'

services:

    filebeat_mysql:
        image: filebeat-mysql:latest
        volumes:
          - /var/log/mysql:/var/log/mysql/
        environment:
          LOGSTASH_HOST: "172.17.0.1"
          LOGSTASH_PORT: "5044"
          INDEX_NAME: "mysql"
          ENCODING: "utf-8"
```
