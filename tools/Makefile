CFLAGS := -Wall -Wextra -pedantic -std=c99 -g -O2
PROGRAMS := aifc_decode elf2rom makeromfs mkdmadata mkldscript reloc_prereq vtxdis yaz0
CPPFLAGS := -Wall -Wextra -pedantic -std=c++17 -g -O2
CPP_PROGRAMS := assemble_sequence

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

all: $(PROGRAMS) $(CPP_PROGRAMS)
	$(MAKE) -C ZAPD
	$(MAKE) -C fado

clean:
	$(RM) $(PROGRAMS) $(addsuffix .exe,$(PROGRAMS))
	$(MAKE) -C ZAPD clean
	$(MAKE) -C fado clean

distclean: clean

.PHONY: all clean distclean

aifc_decode_SOURCES       := aifc_decode.c
assemble_sequence_SOURCES := assemble_sequence.cpp
elf2rom_SOURCES           := elf2rom.c elf32.c n64chksum.c util.c
makeromfs_SOURCES         := makeromfs.c n64chksum.c util.c
mkdmadata_SOURCES         := mkdmadata.c spec.c util.c
mkldscript_SOURCES        := mkldscript.c spec.c util.c
reloc_prereq_SOURCES      := reloc_prereq.c spec.c util.c
vtxdis_SOURCES            := vtxdis.c
yaz0_SOURCES              := yaz0tool.c yaz0.c util.c

aifc_decode_LIBRARIES       := -lm
assemble_sequence_LIBRARIES := -lstdc++ -lm

define COMPILE =
$(1): $($1_SOURCES)
	$(CC) $(CFLAGS) -o $$@ $$^ $($1_LIBRARIES)
endef

define CPPCOMPILE =
$(1): $($1_SOURCES)
	$(CC) $(CPPFLAGS) -o $$@ $$^ $($1_LIBRARIES)
endef

$(foreach p,$(PROGRAMS),$(eval $(call COMPILE,$(p))))

$(foreach p,$(CPP_PROGRAMS),$(eval $(call CPPCOMPILE,$(p))))
