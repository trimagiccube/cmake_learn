# OPTION

## used syntax

OPTION(varibale "varibale message" ON/OFF)

## when to use
used with add_definitions and other command

## cmd line change default
	`mkdir build;cd build`
	`cmake .. -DTEST_OPTION=ON;make`
	this cmd will change default value of CMAKELISTS.txt

# custom_command target

## add_custom_target
	is used to defined a target.
	you can add depends at this command,always this dpends is custom_command's output

## test
	`cmake .. -DTEST_OPTION=ON`
	if you input
	`make MyTarget` and it will only build MyTarget
	if you input
	`make hello` and it will only build hello
	if you input
	`make` and it will build both hello and MyTarget
