FILE ?= hello_world

.PHONY: all run

all:
	gnatmake $(FILE).adb

run: all
	./$(FILE)

make:
	gnatmake hello_world.adb
	gcc -c hello_world.adb
	gnatbind -x hello_world.ali
	gnatlink hello_world.ali

run1:
	./hello_world
