OPTIMIZATION_ON ?= 1

CC := g++
INC := -I ZAPD -I lib/assimp/include -I lib/elfio -I lib/json/include -I lib/stb -I lib/tinygltf -I lib/libgfxd -I lib/tinyxml2

CFLAGS := -g3 -fpic -Wl,-export-dynamic -std=c++17 -rdynamic -Wall
ifeq ($(OPTIMIZATION_ON),1)
  CFLAGS += -O2
else
  CFLAGS += -O0
endif

LDFLAGS := -ldl
UNAME := $(shell uname)

FS_INC =
ifneq ($(UNAME), Darwin)
    FS_INC += -lstdc++fs
endif

SRC_DIRS := ZAPD ZAPD/ZRoom ZAPD/ZRoom/Commands ZAPD/Overlays ZAPD/HighLevel ZAPD/OpenFBX

CPP_FILES := $(foreach dir,$(SRC_DIRS),$(wildcard $(dir)/*.cpp))
CPP_FILES += lib/tinyxml2/tinyxml2.cpp
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

%.o: %.cpp
	$(CC) $(CFLAGS) $(INC) -c $< -o $@ $(LDFLAGS)

ZAPD/Main.o: genbuildinfo ZAPD/Main.cpp
	$(CC) $(CFLAGS) $(INC) -c ZAPD/Main.cpp -o $@ $(LDFLAGS)

lib/libgfxd/libgfxd.a:
	$(MAKE) -C lib/libgfxd -j

ZAPD.out: $(O_FILES) lib/libgfxd/libgfxd.a
	$(CC) $(CFLAGS) $(INC) $(O_FILES) lib/libgfxd/libgfxd.a -o $@ $(FS_INC) $(LDFLAGS)
