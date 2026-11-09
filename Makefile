make:
	gnatmake hello_world.adb
	gcc -c hello_world.adb
	gnatbind -x hello_world.ali
	gnatlink hello_world.ali

run:
	./hello_world
