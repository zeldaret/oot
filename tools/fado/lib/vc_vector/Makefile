OUT_DIR := build
CFLAGS := -O2 -g -std=c99 -Wall -Wextra -Wpedantic -Werror

SRCS := $(wildcard *.c)
OBJS := $(patsubst %.c,$(OUT_DIR)/%.o,$(SRCS))

LIB_NAME := vc-vector
SOBJ := $(OUT_DIR)/lib$(LIB_NAME).so

.PHONY: all lib test clean

all: lib

lib: $(SOBJ)

test: $(OUT_DIR)/test_runner
	$(OUT_DIR)/test_runner

clean:
	rm -rf $(OUT_DIR)

$(OUT_DIR):
	mkdir -p $(OUT_DIR)

$(SOBJ): vc_vector.c | $(OUT_DIR)
	$(CC) $(CFLAGS) -shared -fPIC $< -o $@

$(OUT_DIR)/%.o: %.c | $(OUT_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

$(OUT_DIR)/test_runner: $(OBJS) | $(OUT_DIR)
	$(CC) $^ -o $@

