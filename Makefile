all: clean linux

linux: clean
	./bin/linux.sh

clean: 
	./bin/cleanup.sh

