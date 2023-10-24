cmake_minimum_required(VERSION 3.16)

PROJECT(compile_flag)

if (NOT CMAKE_BUILD_TYPE AND NOT CMAKE_CONFIGURATION_TYPES)
	message("user not info build type, set default build type to RelWithDebInfo")
	set(CMAKE_BUILD_TYPE Release CACHE STRING "Choose the type of build." FORCE)
	set_property(CACHE CMAKE_BUILD_TYPE PROPERTY STRINGS "Debug" "Release"
		"MinSizeRel" "RelWithDebInfo")
endif()

set(SOURCES
	${CMAKE_CURRENT_SOURCE_DIR}/main.cpp
)

add_executable(compile_flag ${SOURCES})
#you can choose any way of below two
###########one-way###############
#target_compile_definitions(compile_flag
#	PRIVATE
#	TEST_FLAG)
#################################
###########two-way###############
set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DTEST_FLAG" CACHE STRING "Set C++ Compiler Flags" FORCE)
#################################
message(STATUS "CMAKE_CXX_FLAGS is :" ${CMAKE_CXX_FLAGS})
