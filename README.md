Example GeoServer with ElasticGeo
---

#### Running

Boot the system with `docker-compose up`

* [Geoserver on port 8080](http://localhost:8080/geoserver/web/)


#### Authentication

* GeoServer user[`admin`] pass[`geoserver`]
* Postgres user[`docker`] pass[`docker`]


#### Serve data from Elastic

1. Create default workspace
2. Add Data Store -> ElasticSearch
a. Set the elasticsearch host name to `elastic`
b. Set the index name to `us_large_cities`
3. Click Publish
4. Use all and click Apply
5. Compute the Bounding Boxes and Save
6. Load the Layer Preview to quickly view the data

Useful links
- [Sample data from this tutorial](http://www.elasticsearchtutorial.com/spatial-search-tutorial.html)
