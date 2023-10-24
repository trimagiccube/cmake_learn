cmake_minimum_required(VERSION 3.16)

PROJECT(hello-world)

message(STATUS "cmake start")

OPTION(TEST_OPTION "test_option_case" OFF)

if(TEST_OPTION)
	message(STATUS "TEST_OPTIN defined: = ${TEST_OPTION}")
else()
	message(STATUS "TEST_OPTIN not defined: = ${TEST_OPTION}")
endif(TEST_OPTION)

IF(TEST_OPTION)
	message(STATUS "TEST_OPTIN ON")
	add_definitions(-DTEST_OPTION=1)
ELSE()
	message(STATUS "TEST_OPTIN OFF")
ENDIF(TEST_OPTION)

add_custom_command(
	OUTPUT output.txt
	COMMAND wc -l ${CMAKE_CURRENT_SOURCE_DIR}/input.txt > output.txt
	DEPENDS input.txt
	COMMENT "Generating output.txt from input.txt"
	)

add_custom_target(
	MyTarget ALL
	DEPENDS output.txt
	)
add_executable(hello test.cpp)
