# Introduction
this example introduce how to set include path for one target

# how to write
target_include_directories(hello-sub
	PRIVATE
	${CMAKE_CURRENT_SOURCE_DIR}/inc
)

CMAKE_CURRENT_SOURCE_DIR is the current source directory if using sub-projects
and directories

# set a variable for all source file
set(SOURCES
	${CMAKE_CURRENT_SOURCE_DIR}/src/hello.cpp
	${CMAKE_CURRENT_SOURCE_DIR}/src/main.cpp
)

# include directories set
target_include_directories(hello-sub
	PRIVATE
	${CMAKE_CURRENT_SOURCE_DIR}/inc
)

hello-sub is the target name , always is the same as add_executable(hello-sub ${SOURCES})
PRIVATE is only this target could use this include_path

# tips
cd build;
cmake ..;
make VERBOSE=1; could see some informations
