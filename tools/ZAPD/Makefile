CC := g++
CFLAGS := -g -std=c++17 -I ZAPD -I lib/assimp/include -I lib/elfio -I lib/json/include -I lib/stb -I lib/tinygltf -I lib/libgfxd -I lib/tinyxml2 -O2 -rdynamic
UNAME := $(shell uname)

FS_INC =
ifneq ($(UNAME), Darwin)
    FS_INC += -lstdc++fs
endif

SRC_DIRS := ZAPD ZAPD/ZRoom ZAPD/ZRoom/Commands ZAPD/Overlays ZAPD/HighLevel ZAPD/OpenFBX

CPP_FILES := $(foreach dir,$(SRC_DIRS),$(wildcard $(dir)/*.cpp))
CPP_FILES += lib/tinyxml2/tinyxml2.cpp
O_FILES   := $(CPP_FILES:.cpp=.o)

all: ZAPD.out

genbuildinfo:
	python3 ZAPD/genbuildinfo.py

clean:
	rm -f $(O_FILES) ZAPD.out
	$(MAKE) -C lib/libgfxd clean

rebuild: clean all

%.o: %.cpp genbuildinfo
	$(CC) $(CFLAGS) -c $< -o $@

lib/libgfxd/libgfxd.a:
	$(MAKE) -C lib/libgfxd -j

ZAPD.out: $(O_FILES) lib/libgfxd/libgfxd.a
	$(CC) $(CFLAGS) $(O_FILES) lib/libgfxd/libgfxd.a -o $@ $(FS_INC)
