# base project
	option_custom_target

#prerequisite
	you should install clang
	on my system, i have install clang++-10 clang-10 clang-cpp-10 clang-format-diff-10
	I will use this to test

# how to do
mkdir build;cd build;
cmake .. -DCMAKE_C_COMPILER=clang-10 -DCMAKE_CXX_COMPILER=clang++-10
make VERBOSE=1

you will see program compile use clang
