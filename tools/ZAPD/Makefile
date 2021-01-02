CC := g++

ifneq (, $(shell which ccache))
CC := ccache $(CC)
endif

CFLAGS := -g -std=c++17 -I ZAPD -I ZAPD/sqlite -O2 -rdynamic

SRC_DIRS := ZAPD ZAPD/ZRoom ZAPD/ZRoom/Commands ZAPD/Overlays ZAPD/HighLevel ZAPD/OpenFBX

CPP_FILES := $(foreach dir,$(SRC_DIRS),$(wildcard $(dir)/*.cpp))
O_FILES   := $(CPP_FILES:.cpp=.o)

all: ZAPD.out

clean: 
	rm -f $(O_FILES) ZAPD.out

rebuild: clean all

%.o: %.cpp
	$(CC) $(CFLAGS) -c $< -o $@

ZAPD.out: $(O_FILES)
	$(CC) $(CFLAGS) $(O_FILES) -o $@ -lstdc++fs
