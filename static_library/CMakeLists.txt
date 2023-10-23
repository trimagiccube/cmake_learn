cmake_minimum_required(VERSION 3.16)

PROJECT(hello-sub)

set(LIB_SOURCES
	${CMAKE_CURRENT_SOURCE_DIR}/src/hello.cpp
)

set(APP_SOURCES
	${CMAKE_CURRENT_SOURCE_DIR}/src/main.cpp
)

add_library(hello_library
	STATIC
	${LIB_SOURCES}
)

target_include_directories(hello_library
	PUBLIC
	${CMAKE_CURRENT_SOURCE_DIR}/inc
	)

add_executable(hello_app ${APP_SOURCES})

target_link_libraries(hello_app
	PRIVATE
	hello_library
)

