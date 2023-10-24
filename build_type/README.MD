# default exec
```
mkdir build
cd build
make
```
this will set build_type to RelWithDebInfo

# difference of four different build type

 * Release - Adds the `-O3 -DNDEBUG` flags to the compiler
 * Debug - Adds the `-g` flag
 * MinSizeRel - Adds `-Os -DNDEBUG`
 * RelWithDebInfo - Adds `-O2 -g -DNDEBUG` flags

## how to check it
when you type in make, add VERBOSE=1
`make VERBOSE=1`
you will see below information:
```
/usr/bin/c++    -O2 -g -DNDEBUG   -o CMakeFiles/build_type.dir/main.cpp.o -c /home/yanxw/cmake_test/build_type/main.cpp
```

# use cmdline to pass build type
```
cmake .. -DCMAKE_BUILD_TYPE=MinSizeRel
```

# GUI set
you could use
```
mkdir build
cd build
cmake ..
ccmake ..
```
and change the value of build type
