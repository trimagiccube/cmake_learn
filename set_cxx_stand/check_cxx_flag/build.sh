#!/bin/sh

cur_dir=`pwd`
build_dir="build"

if [ -d "$build_dir" ]; then
	echo "rm old build dir"
fi

mkdir -p $build_dir && \
	cd $build_dir && \
	cmake .. && \
	make VERBOSE=1

if [ $? -ne 0 ]; then
	echo "build error exit"
	exit 1
else
	echo "build success"
	exit 0
fi
