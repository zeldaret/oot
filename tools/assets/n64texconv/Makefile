BUILD_DIR := build

# Targets
LIB := libn64texconv.a
SOLIB := libn64texconv.so

INC := -Ilib/spng -Ilib/libimagequant

CC := gcc

WFLAGS := -Wall -Wextra -Wshadow

ifeq ($(shell $(CC) --version | grep clang),)
  ARCHFLAGS := -march=native -mtune=native
  OMPFLAGS := -fopenmp
else
  ARCHFLAGS :=
  OMPFLAGS :=
  WFLAGS += -Wno-unknown-pragmas
endif

CFLAGS := $(WFLAGS) $(ARCHFLAGS) -MD -MMD -std=gnu11 -fPIC -ffunction-sections -fdata-sections $(INC)
OPTFLAGS := -O3
LDFLAGS :=
LDLIBS := $(OMPFLAGS) -lz -lm
AR := ar
ARFLAGS := rcs

SRC_DIRS := $(shell find src -type d)
LIB_DIRS := $(shell find lib -type d)

C_FILES   := $(foreach dir,$(SRC_DIRS) $(LIB_DIRS),$(wildcard $(dir)/*.c))
O_FILES   := $(foreach f,$(C_FILES:.c=.o),$(BUILD_DIR)/$f)
DEP_FILES := $(foreach f,$(O_FILES:.o=.d),$f)

FMT_C_FILES := $(foreach dir,$(SRC_DIRS),$(wildcard $(dir)/*.c))
FMT_H_FILES := $(foreach dir,$(SRC_DIRS),$(wildcard $(dir)/*.h))
FMT_FILES := $(FMT_C_FILES) $(FMT_H_FILES)

CLANG_FORMAT := clang-format-14
FORMAT_ARGS := -i -style=file

$(shell mkdir -p $(BUILD_DIR) $(foreach dir,$(SRC_DIRS) $(LIB_DIRS),$(BUILD_DIR)/$(dir)))

$(BUILD_DIR)/lib/libimagequant/%.o: CFLAGS += $(OMPFLAGS) -Wno-sign-compare -Wno-unused-parameter -Wno-shadow

.PHONY: all clean distclean format

all: $(LIB) $(SOLIB)

clean:
	$(RM) -r $(LIB) $(SOLIB) $(BUILD_DIR)

distclean: clean

format:
	$(CLANG_FORMAT) $(FORMAT_ARGS) $(FMT_FILES)

$(LIB): $(O_FILES)
	$(AR) $(ARFLAGS) $@ $^

$(SOLIB): $(O_FILES)
	$(CC) -shared $^ $(LDLIBS) -o $@

$(BUILD_DIR)/%.o: %.c
	$(CC) $(CFLAGS) $(OPTFLAGS) -c $< -o $@

-include $(DEP_FILES)
