#!/usr/bin/env bash
# create subfolder data for local mongod instance and start mongod
thisdir=`pwd`
# create folder for mongod
dbpath="$thisdir""/data"
mkdir -p "$dbpath"
logpath="$dbpath""/mongodb.log"
# start mongod instance and fork
mongod --dbpath "$dbpath" --logpath "$logpath"  --fork
echo "started mongod instance sucessfully"
# import data from dump into local mongod
mongorestore dump/playlists.bson -d db -c playlists
mongorestore dump/exchangerates.bson -d db -c exchangerates
echo "done"
