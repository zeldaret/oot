CC := g++

ifneq (, $(shell which ccache))
CC := ccache $(CC)
endif

CFLAGS := -g -std=c++17 -I ZAPD -I lib/assimp/include -I lib/elfio -I lib/json/include -I lib/stb -I lib/tinygltf -I lib/tinyxml2 -O2 -rdynamic

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

clean:
	rm -f $(O_FILES) ZAPD.out

rebuild: clean all

%.o: %.cpp
	$(CC) $(CFLAGS) -c $< -o $@

ZAPD.out: $(O_FILES)
	$(CC) $(CFLAGS) $(O_FILES) -o $@ $(FS_INC)
