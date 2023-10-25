# purpose

This example shows a common method to set the C++ Standard. This can be used with most versions of CMake. However, if you are targeting a recent version of CMake there are more convenient methods available.

# Checking Compile flags

CMake has support for attempting to compile a program with any flags you pass into the function
`CMAKE_CXX_COMPILER_FLAG`. The result is then stored in a variable that you pass in.

----
include(CheckCXXCompilerFlag)
CHECK_CXX_COMPILER_FLAG("-std=c++11" COMPILER_SUPPORTS_CXX11)
----

This example will attempt to compile a program with the flag `-std=c++11`
and store the result in the variable `COMPILER_SUPPORTS_CXX11`.
The line `include(CheckCXXCompilerFlag)` tells CMake to include this function to make it available for use.

