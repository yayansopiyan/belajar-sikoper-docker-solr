# BELAJAR SIKOPER DOCKER SOLR

### Requirement
- Docker
- portainer - https://www.portainer.io

``` bash
$ docker-compose up
```

Console @ docker

``` bash
$ /opt/bitnami/solr/bin/solr create -c sikoper
$ /opt/bitnami/solr/bin/post -c sikoper /data
```
Buka : http://localhost:8983/solr/#/

## Author
Yayan Sopiyan - yayan.sopiyan@gmail.com
