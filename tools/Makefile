CC := gcc
CFLAGS := -Wall -Wextra -pedantic -std=c99 -g -O2
PROGRAMS := yaz0 makeromfs elf2rom mkldscript vtxdis
ZAPD := ZAPD/ZAPD.out

all: $(PROGRAMS) zapd ido

clean:
	$(RM) $(PROGRAMS) $(addsuffix .exe,$(PROGRAMS))
	$(RM) ZAPD/ZAPD.out

# Need to clean the above line later...

ido:
	$(MAKE) -C ido_recomp -j 4

zapd:
	cd ZAPD && $(MAKE)


.PHONY: all clean distclean ido71 ido53 zapd

distclean: clean
	$(MAKE) -C ZAPD clean
	$(MAKE) -C ido_recomp clean


mkldscript_SOURCES := mkldscript.c util.c
elf2rom_SOURCES    := elf2rom.c elf32.c n64chksum.c util.c
yaz0_SOURCES       := yaz0tool.c yaz0.c util.c
makeromfs_SOURCES  := makeromfs.c n64chksum.c util.c
vtxdis_SOURCES	   := vtxdis.c

#$(ZAPD):
#	cd ZAPD && $(MAKE)

define COMPILE =
$(1): $($1_SOURCES)
	$(CC) $(CFLAGS) $$^ -o $$@
endef

$(foreach p,$(PROGRAMS),$(eval $(call COMPILE,$(p))))
