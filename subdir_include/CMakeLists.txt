cmake_minimum_required(VERSION 3.16)

PROJECT(hello-sub)

set(SOURCES
	${CMAKE_CURRENT_SOURCE_DIR}/src/hello.cpp
	${CMAKE_CURRENT_SOURCE_DIR}/src/main.cpp
)

add_executable(hello-sub ${SOURCES})

target_include_directories(hello-sub
	PRIVATE
	${CMAKE_CURRENT_SOURCE_DIR}/inc
)

