PROGRAMS := sbc

ifeq ($(shell which xml2-config),)
  $(error xml2-config not found. Did you install libxml2-dev?)
endif

CLANG_FORMAT := clang-format-14
FORMAT_ARGS := -i -style=file

CC := gcc
CFLAGS := -Wall -Wextra -pedantic
OPTFLAGS := -Og -g3

XML_CFLAGS := $(shell xml2-config --cflags)
XML_LDFLAGS := $(shell xml2-config --libs)

.PHONY: all clean distclean format

all: $(PROGRAMS)
	$(MAKE) -C sampleconv

clean:
	$(RM) $(PROGRAMS)
	$(MAKE) -C sampleconv clean

distclean: clean
	$(MAKE) -C sampleconv distclean

format:
	$(CLANG_FORMAT) $(FORMAT_ARGS) $(shell find . -maxdepth 1 -type f -name "*.[ch]")
	$(MAKE) -C sampleconv format

sbc_SOURCES := samplebank_compiler.c samplebank.c aifc.c xml.c util.c

sbc_CFLAGS := $(XML_CFLAGS)

sbc_LDFLAGS := $(XML_LDFLAGS)

define COMPILE =
$(1): $($1_SOURCES)
	$(CC) $(CFLAGS) $($1_CFLAGS) $$^ $($1_LDFLAGS) -o $$@
endef

$(foreach p,$(PROGRAMS),$(eval $(call COMPILE,$(p))))
