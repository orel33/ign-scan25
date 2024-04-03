#!/bin/bash


# https://geoservices.ign.fr/services-web-issus-des-scans-ign
# https://geoservices.ign.fr/actualites/2023-11-20-acces-donnesnonlibres-gpf


ZOOM="15"
ROW="12061"
COL="16388"

APIKEY="ign_scan_ws"
REQUEST="LAYER=GEOGRAPHICALGRIDSYSTEMS.MAPS.SCAN25TOUR&FORMAT=image/jpeg&SERVICE=WMTS&VERSION=1.0.0&REQUEST=GetTile&STYLE=normal&TILEMATRIXSET=PM&TILEMATRIX=$ZOOM&TILEROW=$ROW&TILECOL=$COL"
URL="https://data.geopf.fr/private/wmts?apikey=$APIKEY&$REQUEST"
wget "$URL" -O "tile.jpg"


# OLDAPIKEY="c19uzdyrb5yttrgmhr2mmyij"
# OLDURL="https://wxs.ign.fr/$APIKEY/geoportail/wmts?SERVICE=WMTS&REQUEST=GetTile&VERSION=1.0.0&LAYER=GEOGRAPHICALGRIDSYSTEMS.MAPS&STYLE=normal&TILEMATRIXSET=PM&TILEMATRIX=$ZOOM&TILEROW=$ROW&TILECOL=$COL&FORMAT=image/jpeg"
# wget "$OLDURL" -O "oldtile.jpg"



