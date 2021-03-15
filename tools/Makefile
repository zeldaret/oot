CC := gcc
CFLAGS := -Wall -Wextra -pedantic -std=c99 -g -O2
PROGRAMS := yaz0 makeromfs elf2rom mkldscript vtxdis
ZAPD := ZAPD/ZAPD.out

all: $(PROGRAMS) zapd ido71 ido53

clean:
	$(RM) $(PROGRAMS) $(addsuffix .exe,$(PROGRAMS))
	$(RM) ZAPD/ZAPD.out

# Need to clean the above line later...

ido71:
	cd ido_recomp && ./build.py -O2 ../ido7.1_compiler/

ido53:
	cd ido_recomp && ./build.py -O2 ../ido5.3_compiler/

zapd:
	cd ZAPD && $(MAKE)


.PHONY: all clean distclean ido71 ido53 zapd

distclean: clean
	$(MAKE) -C ZAPD clean
	$(RM) -r ido_recomp/build71 
	$(RM) -r ido_recomp/build53 


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
