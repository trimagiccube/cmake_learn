#!/bin/bash
root_dir=`pwd`
build_dir="build.ninja"
#1. check ninja is support or not by cmake of your platform
ninja_supported=`cmake --help | grep Ninja`
echo ${ninja_supported}
#2. if support,build with ninja, if not support,exit error

if [ -z "${ninja_supported}" ]; then
	echo "Ninja is not support by your cmake"
	exit
fi

if [ -d "$root_dir/$build_dir" ]; then
	echo "old build file find, cleanup-----"
	rm -rf $build_dir
fi
mkdir -p $build_dir && cd $build_dir && \
	cmake .. -G Ninja && ninja
