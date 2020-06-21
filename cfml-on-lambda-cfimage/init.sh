#!/bin/bash

if [[ !$LUCEE_VERSION ]]; then
	LUCEE_VERSION=5.3.6.61
fi

if [ -f "jars/lucee-light-$LUCEE_VERSION.jar" ]; then
	echo "lucee-light-$LUCEE_VERSION.jar already in jars folder, skipping download"
else 
	#download lucee jar
	echo "Downloading lucee-light-$LUCEE_VERSION.jar"
	curl --location -o jars/lucee-light-$LUCEE_VERSION.jar https://cdn.lucee.org/lucee-light-$LUCEE_VERSION.jar
fi


if [ -f "jars/foundeo-fuseless.jar" ]; then
	echo "foundeo-fuseless.jar already in jars folder, skipping download"
else 
	#download lucee jar
	echo "Downloading foundeo-fuseless.jar"
	curl --location -o jars/foundeo-fuseless-$FUSELESS_VERSION.jar https://cdn.kukiel.dev/foundeo-fuseless.jar
fi

echo ""
echo "Jars are in place, next make sure you have gradle installed: https://gradle.org/install/"