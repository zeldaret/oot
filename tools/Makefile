CFLAGS := -Wall -Wextra -pedantic -std=c99 -g -O2
PROGRAMS := elf2rom makeromfs mkdmadata mkldscript preprocess_pragmas reloc_prereq vtxdis

UNAME_S := $(shell uname -s)
ifeq ($(UNAME_S),Linux)
  DETECTED_OS=linux
else ifeq ($(UNAME_S),Darwin)
  DETECTED_OS=macos
else
  $(error Unsupported OS: $(UNAME_S))
endif

IDO_RECOMP_VERSION := v1.2
IDO_RECOMP_5_3_DIR := ido_recomp/$(DETECTED_OS)/5.3
IDO_RECOMP_7_1_DIR := ido_recomp/$(DETECTED_OS)/7.1

EGCS_BINUTILS_VERSION := 0.6
EGCS_GCC_VERSION := 0.7
EGCS_DIR := egcs/$(DETECTED_OS)

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

all: $(PROGRAMS) $(IDO_RECOMP_5_3_DIR) $(IDO_RECOMP_7_1_DIR) $(EGCS_DIR)
	$(MAKE) -C ZAPD
	$(MAKE) -C fado
	$(MAKE) -C audio
	$(MAKE) -C com-plugin

clean:
	$(RM) $(PROGRAMS) $(addsuffix .exe,$(PROGRAMS))
	$(RM) -r ido_recomp egcs
	$(MAKE) -C ZAPD clean
	$(MAKE) -C fado clean
	$(MAKE) -C audio clean
	$(MAKE) -C com-plugin clean

distclean: clean
	$(MAKE) -C audio distclean

.PHONY: all clean distclean

elf2rom_SOURCES            := elf2rom.c elf32.c n64chksum.c util.c
makeromfs_SOURCES          := makeromfs.c n64chksum.c util.c
mkdmadata_SOURCES          := mkdmadata.c spec.c util.c
mkldscript_SOURCES         := mkldscript.c spec.c util.c
preprocess_pragmas_SOURCES := preprocess_pragmas.c
reloc_prereq_SOURCES       := reloc_prereq.c spec.c util.c
vtxdis_SOURCES             := vtxdis.c


define COMPILE =
$(1): $($1_SOURCES)
	$(CC) $(CFLAGS) $$^ -o $$@
endef

$(foreach p,$(PROGRAMS),$(eval $(call COMPILE,$(p))))

$(IDO_RECOMP_5_3_DIR):
	mkdir -p $@
	curl -sL https://github.com/decompals/ido-static-recomp/releases/download/$(IDO_RECOMP_VERSION)/ido-5.3-recomp-$(DETECTED_OS).tar.gz | tar xz -C $@

$(IDO_RECOMP_7_1_DIR):
	mkdir -p $@
	curl -sL https://github.com/decompals/ido-static-recomp/releases/download/$(IDO_RECOMP_VERSION)/ido-7.1-recomp-$(DETECTED_OS).tar.gz | tar xz -C $@

$(EGCS_DIR):
	mkdir -p $@
	curl -sL https://github.com/decompals/mips-binutils-egcs-2.9.5/releases/download/$(EGCS_BINUTILS_VERSION)/mips-binutils-egcs-2.9.5-$(DETECTED_OS).tar.gz | tar xz -C $@
	curl -sL https://github.com/decompals/mips-gcc-egcs-2.91.66/releases/download/$(EGCS_GCC_VERSION)/mips-gcc-egcs-2.91.66-$(DETECTED_OS).tar.gz | tar xz -C $@
