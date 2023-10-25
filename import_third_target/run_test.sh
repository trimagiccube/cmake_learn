#!/bin/bash
#1. get the cmake version
cmake_version=`cmake --version | grep version | cut -d" " -f3`
dir=`pwd`
build_dir="build"
#2. verify cmake version is bit to 3.5 ,if not , just error exit
[[ "$cmake_version"  =~ ([3-9][.][5|[0-9]|20][.][0-9]) ]] || exit 1
#[[ "$cmake_version"  =~ ([3-9][.][5-20.][.][0-9]) ]]

echo "correct version of cmake"
echo $cmake_version

#3. if build dir is exist, if yes, rm it
if [ -d "$dir/$build_dir" ]; then
	echo "remove old build dir"
	rm $dir/$build_dir -rf
fi
mkdir -p $build_dir && cd $build_dir && cmake .. && make VERBOSE=1
#4. verfify if our action is success exec
if [ $? -ne 0 ]; then
    echo "Error running example"
    exit 1
fi
