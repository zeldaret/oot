OPTIMIZATION_ON ?= 1
ASAN ?= 0
DEPRECATION_OFF ?= 0
CFLAGS ?= 

CC := g++
INC := -I ZAPD -I lib/assimp/include -I lib/elfio -I lib/json/include -I lib/stb -I lib/tinygltf -I lib/libgfxd -I lib/tinyxml2
CFLAGS += -g3 -ggdb -fpic -std=c++17 -rdynamic -Wall -fno-omit-frame-pointer

ifeq ($(OPTIMIZATION_ON),0)
  CFLAGS += -O0
else
  CFLAGS += -O2
endif
ifneq ($(ASAN),0)
  CFLAGS += -fsanitize=address
endif
ifneq ($(DEPRECATION_OFF),0)
  CFLAGS += -DDEPRECATION_OFF
endif
# CFLAGS += -DTEXTURE_DEBUG

LDFLAGS := -ldl -lpng
UNAME := $(shell uname)

FS_INC ?=
ifneq ($(UNAME), Darwin)
    FS_INC += -lstdc++fs
	CFLAGS += -Wl,-export-dynamic
endif

SRC_DIRS := ZAPD ZAPD/ZRoom ZAPD/ZRoom/Commands ZAPD/Overlays ZAPD/HighLevel

ZAPD_CPP_FILES := $(foreach dir,$(SRC_DIRS),$(wildcard $(dir)/*.cpp))
ZAPD_H_FILES   := $(foreach dir,$(SRC_DIRS),$(wildcard $(dir)/*.h))

CPP_FILES += $(ZAPD_CPP_FILES) lib/tinyxml2/tinyxml2.cpp
O_FILES   := $(CPP_FILES:.cpp=.o)

all: ZAPD.out copycheck

genbuildinfo:
	python3 ZAPD/genbuildinfo.py

copycheck: ZAPD.out
	python3 copycheck.py

clean:
	rm -f $(O_FILES) ZAPD.out
	$(MAKE) -C lib/libgfxd clean

rebuild: clean all

format:
	clang-format-11 -i $(ZAPD_CPP_FILES) $(ZAPD_H_FILES)

.PHONY: all genbuildinfo copycheck clean rebuild format

%.o: %.cpp
	$(CC) $(CFLAGS) $(INC) -c $< -o $@ $(LDFLAGS)

ZAPD/Main.o: genbuildinfo ZAPD/Main.cpp
	$(CC) $(CFLAGS) $(INC) -c ZAPD/Main.cpp -o $@ $(LDFLAGS)

lib/libgfxd/libgfxd.a:
	$(MAKE) -C lib/libgfxd

ZAPD.out: $(O_FILES) lib/libgfxd/libgfxd.a
	$(CC) $(CFLAGS) $(INC) $(O_FILES) lib/libgfxd/libgfxd.a -o $@ $(FS_INC) $(LDFLAGS)
