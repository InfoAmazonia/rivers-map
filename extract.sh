#!/bin/bash

osmosis \
  --rb data/south-america-latest.osm.pbf \
  --tf accept-relations waterway=*\
  --used-way \
  --used-node \
  outPipe.0=RW \
  \
  --rb data/south-america-latest.osm.pbf \
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
  --rb data/south-america-latest.osm.pbf \
  --tf accept-ways waterway=* \
  --tf reject-relations \
  --used-node \
   outPipe.0=WW \
  \
  --rb data/south-america-latest.osm.pbf \
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
  --wx rivers.osm
