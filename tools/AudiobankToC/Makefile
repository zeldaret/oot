# Disables built-in rules (e.g. how to make .o from .c)
.SUFFIXES:

default:
	@echo "This is an example Makefile for building audiobank binaries from C."
	@echo "Try `make path/to/yourbank.bin` if you have path/to/yourbank.c."
	
SELF_PATH := $(shell echo "$(MAKEFILE_LIST)" | sed -e "s/.*Makefile //")
AB2C_DIR := $(dir $(SELF_PATH))

CC = mips64-gcc
LD = mips64-ld
OC = mips64-objcopy

CCFLAGS := -mips3 -mabi=32 -mtune=vr4300 -mfix4300 -mno-gpopt -fomit-frame-pointer \
	-mno-check-zero-division -mno-explicit-relocs -mno-memcpy \
	-fno-toplevel-reorder -fno-reorder-blocks -fno-zero-initialized-in-bss -fno-builtin \
	--std=gnu99 -Wall -Werror -Wno-main \
	-Wbuiltin-declaration-mismatch -Wbuiltin-macro-redefined \
	-G 0 -Os -I $(AB2C_DIR)/include
LDFLAGS := --emit-relocs -T $(AB2C_DIR)/audiobank.ld
OCFLAGS := -R .MIPS.abiflags -O binary

%.o: %.c
	$(CC) $(CCFLAGS) -c $< -o $@
	
%.elf: %.o
	$(LD) $(LDFLAGS) -o $@ $<

%.bin: %.elf
	$(OC) $(OCFLAGS) $< $@
