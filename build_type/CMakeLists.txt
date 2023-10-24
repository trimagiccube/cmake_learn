cmake_minimum_required(VERSION 3.16)

PROJECT(build_type)

if (NOT CMAKE_BUILD_TYPE AND NOT CMAKE_CONFIGURATION_TYPES)
	message("user not info build type, set default build type to RelWithDebInfo")
	set(CMAKE_BUILD_TYPE Release CACHE STRING "Choose the type of build." FORCE)
	set_property(CACHE CMAKE_BUILD_TYPE PROPERTY STRINGS "Debug" "Release"
		"MinSizeRel" "RelWithDebInfo")
endif()

set(SOURCES
	${CMAKE_CURRENT_SOURCE_DIR}/main.cpp
)

add_executable(build_type ${SOURCES})

