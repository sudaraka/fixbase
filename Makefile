 # Makefile: build script
 #
 # Copyright 2017 Sudaraka Wijesinghe <sudaraka@sudaraka.org>
 #
 # This program comes with ABSOLUTELY NO WARRANTY
 # This is free software, and you are welcome to redistribute it and/or modify
 # it under the terms of the BSD 2-clause License. See the LICENSE file for more
 # details.
 #

prefix ?=/usr/local
bindir ?=${prefix}/bin

srcdir=src
TARGET_DIR=dist
EXECUTABLE=git-fixbase
TARGET=${TARGET_DIR}/${EXECUTABLE}

all: ${TARGET}
	@echo -e "\nBuild complete."

${TARGET}: ${srcdir}/main.sh ${TARGET_DIR}
	cp $< $@
	chmod +x $@

${TARGET_DIR}:
	mkdir -p $@

install: ${TARGET}
	install -d -m 0755 ${bindir}
	install -m 0755 ${TARGET} ${bindir}

	@echo -e "\nInstallation complete."

uninstall:
	test -d ${bindir} && \
	cd ${bindir} && \
	rm -f ${EXECUTABLE}

	@echo -e "\nUninstall complete."

.PHONY: all clean install uninstall

clean:
	rm -fr ${TARGET_DIR}
