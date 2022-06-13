MAKEFLAGS += --no-builtin-rules

# Ensure the build fails if a piped command fails
SHELL = /bin/bash
.SHELLFLAGS = -o pipefail -c

# Build options can either be changed by modifying the makefile, or by building with 'make SETTING=value'

# If COMPARE is 1, check the output md5sum after building
COMPARE ?= 1
# If NON_MATCHING is 1, define the NON_MATCHING C flag when building
NON_MATCHING ?= 0
# If ORIG_COMPILER is 1, compile with QEMU_IRIX and the original compiler
ORIG_COMPILER ?= 0
# If COMPILER is "gcc", compile with GCC instead of IDO.
COMPILER ?= ido

CFLAGS ?=
CPPFLAGS ?=

# ORIG_COMPILER cannot be combined with a non-IDO compiler. Check for this case and error out if found.
ifneq ($(COMPILER),ido)
  ifeq ($(ORIG_COMPILER),1)
    $(error ORIG_COMPILER can only be used with the IDO compiler. Please check your Makefile variables and try again)
  endif
endif

ifeq ($(COMPILER),gcc)
  CFLAGS += -DCOMPILER_GCC
  CPPFLAGS += -DCOMPILER_GCC
  NON_MATCHING := 1
endif

# Set prefix to mips binutils binaries (mips-linux-gnu-ld => 'mips-linux-gnu-') - Change at your own risk!
# In nearly all cases, not having 'mips-linux-gnu-*' binaries on the PATH is indicative of missing dependencies
MIPS_BINUTILS_PREFIX ?= mips-linux-gnu-

ifeq ($(NON_MATCHING),1)
  CFLAGS += -DNON_MATCHING -DAVOID_UB
  CPPFLAGS += -DNON_MATCHING -DAVOID_UB
  COMPARE := 0
endif

PROJECT_DIR := $(dir $(realpath $(firstword $(MAKEFILE_LIST))))

MAKE = make
CPPFLAGS += -fno-dollars-in-identifiers -P

ifeq ($(OS),Windows_NT)
    DETECTED_OS=windows
else
    UNAME_S := $(shell uname -s)
    ifeq ($(UNAME_S),Linux)
        DETECTED_OS=linux
    endif
    ifeq ($(UNAME_S),Darwin)
        DETECTED_OS=macos
        MAKE=gmake
        CPPFLAGS += -xc++
    endif
endif

N_THREADS ?= $(shell nproc)

#### Tools ####
ifneq ($(shell type $(MIPS_BINUTILS_PREFIX)ld >/dev/null 2>/dev/null; echo $$?), 0)
  $(error Please install or build $(MIPS_BINUTILS_PREFIX))
endif

# Detect compiler and set variables appropriately.
ifeq ($(COMPILER),gcc)
  CC       := $(MIPS_BINUTILS_PREFIX)gcc
else 
ifeq ($(COMPILER),ido)
  CC       := tools/ido_recomp/$(DETECTED_OS)/7.1/cc
  CC_OLD   := tools/ido_recomp/$(DETECTED_OS)/5.3/cc
else
$(error Unsupported compiler. Please use either ido or gcc as the COMPILER variable.)
endif
endif

# if ORIG_COMPILER is 1, check that either QEMU_IRIX is set or qemu-irix package installed
ifeq ($(ORIG_COMPILER),1)
  ifndef QEMU_IRIX
    QEMU_IRIX := $(shell which qemu-irix)
    ifeq (, $(QEMU_IRIX))
      $(error Please install qemu-irix package or set QEMU_IRIX env var to the full qemu-irix binary path)
    endif
  endif
  CC        = $(QEMU_IRIX) -L tools/ido7.1_compiler tools/ido7.1_compiler/usr/bin/cc
  CC_OLD    = $(QEMU_IRIX) -L tools/ido5.3_compiler tools/ido5.3_compiler/usr/bin/cc
endif

AS         := $(MIPS_BINUTILS_PREFIX)as
LD         := $(MIPS_BINUTILS_PREFIX)ld
OBJCOPY    := $(MIPS_BINUTILS_PREFIX)objcopy
OBJDUMP    := $(MIPS_BINUTILS_PREFIX)objdump
EMULATOR = mupen64plus
EMU_FLAGS = --noosd

INC        := -Iinclude -Isrc -Ibuild -I.

# Check code syntax with host compiler
CHECK_WARNINGS := -Wall -Wextra -Wno-format-security -Wno-unknown-pragmas -Wno-unused-parameter -Wno-unused-variable -Wno-missing-braces -Wno-int-conversion

CPP        := cpp
MKLDSCRIPT := tools/mkldscript
MKDMADATA  := tools/mkdmadata
ELF2ROM    := tools/elf2rom
ZAPD       := tools/ZAPD/ZAPD.out
FADO       := tools/fado/fado.elf

ifeq ($(COMPILER),gcc)
  OPTFLAGS := -Os -ffast-math -fno-unsafe-math-optimizations
else
  OPTFLAGS := -O2
endif

ASFLAGS := -march=vr4300 -32 -no-pad-sections -Iinclude

ifeq ($(COMPILER),gcc)
  CFLAGS += -G 0 -nostdinc $(INC) -march=vr4300 -mfix4300 -mabi=32 -mno-abicalls -mdivide-breaks -fno-zero-initialized-in-bss -fno-toplevel-reorder -ffreestanding -fno-common -fno-merge-constants -mno-explicit-relocs -mno-split-addresses $(CHECK_WARNINGS) -funsigned-char
  MIPS_VERSION := -mips3
else 
  # we support Microsoft extensions such as anonymous structs, which the compiler does support but warns for their usage. Surpress the warnings with -woff.
  CFLAGS += -G 0 -non_shared -fullwarn -verbose -Xcpluscomm $(INC) -Wab,-r4300_mul -woff 516,649,838,712
  MIPS_VERSION := -mips2
endif

ifeq ($(COMPILER),ido)
  # Have CC_CHECK pretend to be a MIPS compiler
  MIPS_BUILTIN_DEFS := -D_MIPS_ISA_MIPS2=2 -D_MIPS_ISA=_MIPS_ISA_MIPS2 -D_ABIO32=1 -D_MIPS_SIM=_ABIO32 -D_MIPS_SZINT=32 -D_MIPS_SZLONG=32 -D_MIPS_SZPTR=32
  CC_CHECK  = gcc -fno-builtin -fsyntax-only -funsigned-char -std=gnu90 -D_LANGUAGE_C -DNON_MATCHING $(MIPS_BUILTIN_DEFS) $(INC) $(CHECK_WARNINGS)
  ifeq ($(shell getconf LONG_BIT), 32)
    # Work around memory allocation bug in QEMU
    export QEMU_GUEST_BASE := 1
  else
    # Ensure that gcc (warning check) treats the code as 32-bit
    CC_CHECK += -m32
  endif
else
  CC_CHECK  = @:
endif

OBJDUMP_FLAGS := -d -r -z -Mreg-names=32

#### Files ####

# ROM image
ROM := zelda_ocarina_mq_dbg.z64
ELF := $(ROM:.z64=.elf)
# description of ROM segments
SPEC := spec

ifeq ($(COMPILER),ido)
SRC_DIRS := $(shell find src -type d -not -path src/gcc_fix)
else
SRC_DIRS := $(shell find src -type d)
endif

ASSET_BIN_DIRS := $(shell find assets/* -type d -not -path "assets/xml*" -not -path "assets/text")
ASSET_FILES_XML := $(foreach dir,$(ASSET_BIN_DIRS),$(wildcard $(dir)/*.xml))
ASSET_FILES_BIN := $(foreach dir,$(ASSET_BIN_DIRS),$(wildcard $(dir)/*.bin))
ASSET_FILES_OUT := $(foreach f,$(ASSET_FILES_XML:.xml=.c),$f) \
				   $(foreach f,$(ASSET_FILES_BIN:.bin=.bin.inc.c),build/$f) \
				   $(foreach f,$(wildcard assets/text/*.c),build/$(f:.c=.o))

UNDECOMPILED_DATA_DIRS := $(shell find data -type d)

# source files
C_FILES       := $(foreach dir,$(SRC_DIRS) $(ASSET_BIN_DIRS),$(wildcard $(dir)/*.c))
S_FILES       := $(foreach dir,$(SRC_DIRS) $(UNDECOMPILED_DATA_DIRS),$(wildcard $(dir)/*.s))
O_FILES       := $(foreach f,$(S_FILES:.s=.o),build/$f) \
                 $(foreach f,$(C_FILES:.c=.o),build/$f) \
                 $(foreach f,$(wildcard baserom/*),build/$f.o)

OVL_RELOC_FILES := $(shell $(CPP) $(CPPFLAGS) $(SPEC) | grep -o '[^"]*_reloc.o' )

# Automatic dependency files
# (Only asm_processor dependencies and reloc dependencies are handled for now)
DEP_FILES := $(O_FILES:.o=.asmproc.d) $(OVL_RELOC_FILES:.o=.d)


TEXTURE_FILES_PNG := $(foreach dir,$(ASSET_BIN_DIRS),$(wildcard $(dir)/*.png))
TEXTURE_FILES_JPG := $(foreach dir,$(ASSET_BIN_DIRS),$(wildcard $(dir)/*.jpg))
TEXTURE_FILES_OUT := $(foreach f,$(TEXTURE_FILES_PNG:.png=.inc.c),build/$f) \
					 $(foreach f,$(TEXTURE_FILES_JPG:.jpg=.jpg.inc.c),build/$f) \

# create build directories
$(shell mkdir -p build/baserom build/assets/text $(foreach dir,$(SRC_DIRS) $(UNDECOMPILED_DATA_DIRS) $(ASSET_BIN_DIRS),build/$(dir)))

ifeq ($(COMPILER),ido)
build/src/code/fault.o: CFLAGS += -trapuv
build/src/code/fault.o: OPTFLAGS := -O2 -g3
build/src/code/fault_drawer.o: CFLAGS += -trapuv
build/src/code/fault_drawer.o: OPTFLAGS := -O2 -g3
build/src/code/ucode_disas.o: OPTFLAGS := -O2 -g3
build/src/code/fmodf.o: OPTFLAGS := -g
build/src/code/__osMemset.o: OPTFLAGS := -g
build/src/code/__osMemmove.o: OPTFLAGS := -g

build/src/libultra/libc/absf.o: OPTFLAGS := -O2 -g3
build/src/libultra/libc/sqrt.o: OPTFLAGS := -O2 -g3
build/src/libultra/libc/ll.o: OPTFLAGS := -O1
build/src/libultra/libc/ll.o: MIPS_VERSION := -mips3 -32
build/src/libultra/libc/llcvt.o: OPTFLAGS := -O1
build/src/libultra/libc/llcvt.o: MIPS_VERSION := -mips3 -32

build/src/libultra/os/%.o: OPTFLAGS := -O1
build/src/libultra/io/%.o: OPTFLAGS := -O2
build/src/libultra/libc/%.o: OPTFLAGS := -O2
build/src/libultra/rmon/%.o: OPTFLAGS := -O2
build/src/libultra/gu/%.o: OPTFLAGS := -O2

build/assets/misc/z_select_static/%.o: CFLAGS += -DF3DEX_GBI

build/src/libultra/gu/%.o: CC := $(CC_OLD)
build/src/libultra/io/%.o: CC := $(CC_OLD)
build/src/libultra/libc/%.o: CC := $(CC_OLD)
build/src/libultra/os/%.o: CC := $(CC_OLD)
build/src/libultra/rmon/%.o: CC := $(CC_OLD)

build/src/code/jpegutils.o: CC := $(CC_OLD)
build/src/code/jpegdecoder.o: CC := $(CC_OLD)

build/src/boot/%.o: CC := python3 tools/asm_processor/build.py $(CC) -- $(AS) $(ASFLAGS) --
build/src/code/%.o: CC := python3 tools/asm_processor/build.py $(CC) -- $(AS) $(ASFLAGS) --
build/src/overlays/%.o: CC := python3 tools/asm_processor/build.py $(CC) -- $(AS) $(ASFLAGS) --

build/assets/%.o: CC := python3 tools/asm_processor/build.py $(CC) -- $(AS) $(ASFLAGS) --
else
build/src/libultra/libc/ll.o: OPTFLAGS := -Ofast
build/src/%.o: CC := $(CC) -fexec-charset=euc-jp
endif

#### Main Targets ###

all: $(ROM)
ifeq ($(COMPARE),1)
	@md5sum $(ROM)
	@md5sum -c checksum.md5
endif

clean:
	$(RM) -r $(ROM) $(ELF) build

assetclean:
	$(RM) -r $(ASSET_BIN_DIRS)
	$(RM) -r assets/text/*.h
	$(RM) -r build/assets
	$(RM) -r .extracted-assets.json

distclean: clean assetclean
	$(RM) -r baserom/
	$(MAKE) -C tools distclean

setup:
	$(MAKE) -C tools
	python3 fixbaserom.py
	python3 extract_baserom.py
	python3 extract_assets.py -j$(N_THREADS)

test: $(ROM)
	$(EMULATOR) $(EMU_FLAGS) $<


.PHONY: all clean setup test distclean assetclean

#### Various Recipes ####

$(ROM): $(ELF)
	$(ELF2ROM) -cic 6105 $< $@

$(ELF): $(TEXTURE_FILES_OUT) $(ASSET_FILES_OUT) $(O_FILES) $(OVL_RELOC_FILES) build/ldscript.txt build/undefined_syms.txt
	$(LD) -T build/undefined_syms.txt -T build/ldscript.txt --no-check-sections --accept-unknown-input-arch --emit-relocs -Map build/z64.map -o $@

## Order-only prerequisites 
# These ensure e.g. the O_FILES are built before the OVL_RELOC_FILES.
# The intermediate phony targets avoid quadratically-many dependencies between the targets and prerequisites.

o_files: $(O_FILES)
$(OVL_RELOC_FILES): | o_files

asset_files: $(TEXTURE_FILES_OUT) $(ASSET_FILES_OUT)
$(O_FILES): | asset_files

.PHONY: o_files asset_files

build/$(SPEC): $(SPEC)
	$(CPP) $(CPPFLAGS) $< > $@

build/ldscript.txt: build/$(SPEC)
	$(MKLDSCRIPT) $< $@

build/undefined_syms.txt: undefined_syms.txt
	$(CPP) $(CPPFLAGS) $< > $@

build/baserom/%.o: baserom/%
	$(OBJCOPY) -I binary -O elf32-big $< $@

build/data/%.o: data/%.s
	$(AS) $(ASFLAGS) $< -o $@

build/assets/text/%.enc.h: assets/text/%.h assets/text/charmap.txt
	python3 tools/msgenc.py assets/text/charmap.txt $< $@

build/assets/text/fra_message_data_static.o: build/assets/text/message_data.enc.h
build/assets/text/ger_message_data_static.o: build/assets/text/message_data.enc.h
build/assets/text/nes_message_data_static.o: build/assets/text/message_data.enc.h
build/assets/text/staff_message_data_static.o: build/assets/text/message_data_staff.enc.h

build/assets/%.o: assets/%.c
	$(CC) -c $(CFLAGS) $(MIPS_VERSION) $(OPTFLAGS) -o $@ $<
	$(OBJCOPY) -O binary $@ $@.bin

build/src/%.o: src/%.s
	$(CPP) $(CPPFLAGS) -Iinclude $< | $(AS) $(ASFLAGS) -o $@

build/dmadata_table_spec.h: build/$(SPEC)
	$(MKDMADATA) $< $@

build/src/boot/z_std_dma.o: build/dmadata_table_spec.h
build/src/dmadata/dmadata.o: build/dmadata_table_spec.h

build/src/%.o: src/%.c
	$(CC_CHECK) $<
	$(CC) -c $(CFLAGS) $(MIPS_VERSION) $(OPTFLAGS) -o $@ $<
	@$(OBJDUMP) $(OBJDUMP_FLAGS) $@ > $(@:.o=.s)

build/src/libultra/libc/ll.o: src/libultra/libc/ll.c
	$(CC_CHECK) $<
	$(CC) -c $(CFLAGS) $(MIPS_VERSION) $(OPTFLAGS) -o $@ $<
	python3 tools/set_o32abi_bit.py $@
	@$(OBJDUMP) $(OBJDUMP_FLAGS) $@ > $(@:.o=.s)

build/src/libultra/libc/llcvt.o: src/libultra/libc/llcvt.c
	$(CC_CHECK) $<
	$(CC) -c $(CFLAGS) $(MIPS_VERSION) $(OPTFLAGS) -o $@ $<
	python3 tools/set_o32abi_bit.py $@
	@$(OBJDUMP) $(OBJDUMP_FLAGS) $@ > $(@:.o=.s)

build/src/overlays/%_reloc.o: build/$(SPEC)
	$(FADO) $$(tools/reloc_prereq $< $(notdir $*)) -n $(notdir $*) -o $(@:.o=.s) -M $(@:.o=.d)
	$(AS) $(ASFLAGS) $(@:.o=.s) -o $@

build/%.inc.c: %.png
	$(ZAPD) btex -eh -tt $(subst .,,$(suffix $*)) -i $< -o $@

build/assets/%.bin.inc.c: assets/%.bin
	$(ZAPD) bblb -eh -i $< -o $@

build/assets/%.jpg.inc.c: assets/%.jpg
	$(ZAPD) bren -eh -i $< -o $@

-include $(DEP_FILES)
