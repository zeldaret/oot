CFLAGS := -Wall -Wextra -pedantic -std=c99 -g -O2
PROGRAMS := elf2rom makeromfs mkdmadata mkldscript reloc_prereq vtxdis yaz0

ifeq ($(shell command -v clang >/dev/null 2>&1; echo $$?),0)
  CC := clang
else
  CC := gcc
endif

LLD ?= 0

ifeq ($(shell command -v ld.lld >/dev/null 2>&1; echo $$?),0)
  LLD := 1
endif

ifneq ($(LLD),0)
  CFLAGS += -fuse-ld=lld
endif

all: $(PROGRAMS)
	$(MAKE) -C ZAPD
	$(MAKE) -C fado

clean:
	$(RM) $(PROGRAMS) $(addsuffix .exe,$(PROGRAMS))
	$(MAKE) -C ZAPD clean
	$(MAKE) -C fado clean

distclean: clean

.PHONY: all clean distclean

elf2rom_SOURCES      := elf2rom.c elf32.c n64chksum.c util.c
makeromfs_SOURCES    := makeromfs.c n64chksum.c util.c
mkdmadata_SOURCES    := mkdmadata.c spec.c util.c
mkldscript_SOURCES   := mkldscript.c spec.c util.c
reloc_prereq_SOURCES := reloc_prereq.c spec.c util.c
vtxdis_SOURCES       := vtxdis.c
yaz0_SOURCES         := yaz0tool.c yaz0.c util.c


define COMPILE =
$(1): $($1_SOURCES)
	$(CC) $(CFLAGS) $$^ -o $$@
endef

$(foreach p,$(PROGRAMS),$(eval $(call COMPILE,$(p))))
