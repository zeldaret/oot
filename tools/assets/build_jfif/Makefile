CFLAGS := -Wall -Wextra -O3

ifeq ($(shell $(CC) --version | grep clang),)
  OMPFLAGS := -fopenmp
else
  OMPFLAGS :=
endif

default: build_jfif

clean:
	$(RM) build_jfif

.PHONY: default clean

build_jfif: build_jfif.c ../n64texconv/libn64texconv.a
	$(CC) $(CFLAGS) -o $@ $^ $(OMPFLAGS) -lz -lm
