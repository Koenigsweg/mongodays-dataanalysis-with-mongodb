#!/usr/bin/env bash
# create subfolder data for local mongod instance and start mongod
# exit if error
set e
thisdir=`pwd`
dbpath="$thisdir""/data"
mkdir -p "$dbpath"
logpath="$dbpath""/mongodb.log"
mongod --dbpath "$dbpath" --logpath "$logpath" --storageEngine wiredTiger --wiredTigerCacheSizeGB 2 --wiredTigerJournalCompressor zlib --directoryperdb --fork
echo "started mongod instance sucessfully"
