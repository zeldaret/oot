CC := gcc
CFLAGS := -Wall -Wextra -pedantic -std=c99 -g -O2
PROGRAMS := yaz0 makeromfs elf2rom mkldscript vtxdis
ZAP2 := ZAP2/ZAP2.out

all: $(PROGRAMS)
	cd ZAP2 && $(MAKE)

clean:
	$(RM) $(PROGRAMS)
	$(RM) ZAP2/ZAP2.out
# Need to clean the above line later...

mkldscript_SOURCES := mkldscript.c util.c
elf2rom_SOURCES    := elf2rom.c elf32.c n64chksum.c util.c
yaz0_SOURCES       := yaz0tool.c yaz0.c util.c
makeromfs_SOURCES  := makeromfs.c n64chksum.c util.c
vtxdis_SOURCES	   := vtxdis.c

#$(ZAP2):
#	cd ZAP2 && $(MAKE)

define COMPILE =
$(1): $($1_SOURCES)
	$(CC) $(CFLAGS) $$^ -o $$@
endef

$(foreach p,$(PROGRAMS),$(eval $(call COMPILE,$(p))))
