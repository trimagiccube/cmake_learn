cmake_minimum_required(VERSION 3.16)

PROJECT(hello-sub)

if (CMAKE_INSTALL_PREFIX_INITIALIZED_TO_DEFAULT)
	message(STATUS "CMAKE_INSTALL_PREFIX_INITIALIZED_TO_DEFAULT is true")
endif()

message(STATUS "DESTDIR is" ${DESTDIR})

set(LIB_SOURCES
	${CMAKE_CURRENT_SOURCE_DIR}/src/hello.cpp
)

set(APP_SOURCES
	${CMAKE_CURRENT_SOURCE_DIR}/src/main.cpp
)

add_library(hello_library
	SHARED
	${LIB_SOURCES}
)

message(STATUS "CMAKE_INSTALL_PREFIX is :" ${CMAKE_INSTALL_PREFIX})
message(STATUS "CMAKE_INSTALL_PREFIX_INITIALIZED_TO_DEFAULT is :" ${CMAKE_INSTALL_PREFIX_INITIALIZED_TO_DEFAULT})
add_library(hello::library ALIAS hello_library)

target_include_directories(hello_library
	PUBLIC
	${CMAKE_CURRENT_SOURCE_DIR}/inc
	)

add_executable(hello_app ${APP_SOURCES})

target_link_libraries(hello_app
	PRIVATE
	hello_library
)

#binaries install   ../bin
install(TARGETS hello_app
		DESTINATION bin)

#shared lib so file ../lib
install(TARGETS hello_library
		DESTINATION lib)

#heeader files
install(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/inc/
		DESTINATION include)

#conf files
install(FILES ${CMAKE_CURRENT_SOURCE_DIR}/test.conf
		DESTINATION etc)
