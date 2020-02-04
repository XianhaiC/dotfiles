#!/usr/bin/bash

var="~/test/music/.raw"
for file in "$var"/*; do
	echo $file
done
