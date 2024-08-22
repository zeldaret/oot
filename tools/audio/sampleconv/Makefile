
CC := gcc
CFLAGS := -Wall -Wextra -MMD
OPTFLAGS := -Og -g3
LDFLAGS :=

CLANG_FORMAT := clang-format-14
FORMAT_ARGS := -i -style=file

SRC_DIRS := $(shell find src -type d)
C_FILES := $(foreach dir,$(SRC_DIRS),$(wildcard $(dir)/*.c))
O_FILES := $(foreach f,$(C_FILES:.c=.o),build/$f)

DEP_FILES := $(foreach f,$(C_FILES:.c=.d),build/$f)

$(shell mkdir -p build $(foreach dir,$(SRC_DIRS),build/$(dir)))

.PHONY: all clean distclean format

all: sampleconv

clean:
	$(RM) -rf build sampleconv

distclean: clean

format:
	$(CLANG_FORMAT) $(FORMAT_ARGS) $(C_FILES) $(foreach dir,$(SRC_DIRS),$(wildcard $(dir)/*.h))

sampleconv: $(O_FILES)
	$(CC) $(LDFLAGS) $(O_FILES) -lm -o $@

build/src/%.o: src/%.c
	$(CC) -c $(CFLAGS) $(OPTFLAGS) $< -o $@

-include $(DEP_FILES)
