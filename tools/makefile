CC=gcc
default:
	@echo
	@echo  -----------------------------------------
	@echo
	@echo  "usage: make <system type>"
	@echo
	@echo  "<system type> -  linux"
	@echo  "              -  bsd"
	@echo  "              -  sun"
	@echo
linux: logcleaner.c
	$(CC) -DLINUX -Wall -o logcleaner logcleaner.c
bsd: logcleaner.c
	$(CC) -DBSD -Wall -o logcleaner logcleaner.c
sun: logcleaner.c
	$(CC) -DSUN -Wall -o logcleaner logcleaner.c
clean:
	rm -f mig-logcleaner *~
