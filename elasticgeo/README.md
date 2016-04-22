Using [Kartoza Docker images](https://hub.docker.com/u/kartoza/)
---

The preferred configuration is

* GeoServer 2.8.2
* Elasticsearch 2.2.0

1. Download the [2.8.1-RC release zip](https://github.com/ngageoint/elasticgeo/releases/download/2.8.1-RC1/elasticgeo2.8.1-gs2.8.1-es2.2.0.zip) 
2. Extract the contents to the docker directory with the Dockerfile
3. `docker build -t jwiii/elasticgeo:2.8.1-RC1 .`

**Note:** As of 4/21/2016 the `kartoza/geoserver:latest` is `2.8.2` but is not tagged as such.
