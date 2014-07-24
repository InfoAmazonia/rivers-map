# InfoAmazonia Rivers Map

This is *work in progress* project to create a rivers map to InfoAmazonia, based on OpenStreetMap data.

## Requirements

* Osmosis
* GDAL
* PostgreSQL
* TileMill

## Prepare the data

Download [South America OpenStreetMap data file](http://download.geofabrik.de/south-america-latest.osm.pbf).

Extract waterways using Osmosis:

```
osmosis \
  --rb source.osm.pbf \
  --tf accept-relations waterway=*\
  --used-way \
  --used-node \
  outPipe.0=RW \
  \
  --rb source.osm.pbf \
  --tf accept-relations natural=water \
  --used-way \
  --used-node \
  outPipe.0=RN \
  \
  --merge \
  	inPipe.0=RW \
  	inPipe.1=RN \
  	outPipe.0=R \
  \
  --rb source.osm.pbf \
  --tf accept-ways waterway=* \
  --tf reject-relations \
  --used-node \
   outPipe.0=WW \
  \
  --rb source.osm.pbf \
  --tf accept-ways natural=water \
  --tf reject-relations \
  --used-node \
   outPipe.0=WM \
  \
  --merge \
  	inPipe.0=WW \
  	inPipe.1=WM \
  	outPipe.0=W \
  --merge \
  	inPipe.0=R \
  	inPipe.1=W \
  --wx waterways.osm
```

In PostgreSQL, create a database named 'riversmap' and run:

```
osm2pgsql -d riversmap waterways.osm 
```

### Generate a map in TileMill

To be done.
