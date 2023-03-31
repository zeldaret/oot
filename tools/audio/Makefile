CFLAGS := -Wall -Wextra -pedantic -std=c99 -g -O2
PROGRAMS := aifc_decode

CPPFLAGS := -Wall -Wextra -pedantic -std=c++17 -g -O2
CPP_PROGRAMS := assemble_sequence

ifeq ($(shell command -v clang >/dev/null 2>&1; echo $$?),0)
  CC := clang
else
  CC := gcc
endif

.PHONY: all clean distclean

all: $(PROGRAMS) $(CPP_PROGRAMS)

clean:
	$(RM) $(CPP_PROGRAMS) $(addsuffix .exe,$(CPP_PROGRAMS))

distclean: clean

aifc_decode_SOURCES       := aifc_decode.c
assemble_sequence_SOURCES := assemble_sequence.cpp

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
