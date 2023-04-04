all: clean linux

linux:
	./bin/linux.sh

clean: 
	./bin/cleanup.sh

