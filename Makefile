MAKEFLAGS += --no-builtin-rules

# Build options can either be changed by modifying the makefile, or by building with 'make SETTING=value'

# If COMPARE is 1, check the output md5sum after building
COMPARE ?= 1
# If NON_MATCHING is 1, define the NON_MATCHING C flag when building
NON_MATCHING ?= 0
# If ORIG_COMPILER is 1, compile with QEMU_IRIX and the original compiler
ORIG_COMPILER ?= 0

ifeq ($(NON_MATCHING),1)
  CFLAGS := -DNON_MATCHING
  CPPFLAGS := -DNON_MATCHING
  COMPARE := 0
endif

# Whether to hide commands or not
VERBOSE ?= 0
ifeq ($(VERBOSE),0)
  V := @
  MAKE_QUIET := -s
endif

# Whether to colorize build messages
COLOR ?= 1

# display selected options unless 'make clean' or 'make distclean' is run
ifeq ($(filter clean distclean,$(MAKECMDGOALS)),)
  $(info ==== Build Options ====)
  $(info Version:        mq_dbg)
  $(info Microcode:      f3dzex)
  ifeq ($(COMPARE),1)
    $(info Compare ROM:    yes)
  else
    $(info Compare ROM:    no)
  endif
  ifeq ($(NON_MATCHING),1)
    $(info Build Matching: no)
  else
    $(info Build Matching: yes)
  endif
  $(info =======================)
endif

PRINT = printf

ifeq ($(COLOR),1)
NO_COL  := \033[0m
RED     := \033[0;31m
GREEN   := \033[0;32m
BLUE    := \033[0;34m
YELLOW  := \033[0;33m
BLINK   := \033[33;5m
endif

# Common build print status function
define print
  @$(PRINT) "$(GREEN)$(1) $(YELLOW)$(2)$(GREEN) -> $(BLUE)$(3)$(NO_COL)\n"
endef

PROJECT_DIR := $(dir $(realpath $(firstword $(MAKEFILE_LIST))))

MAKE = make
CPPFLAGS += -P

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

#### Tools ####
ifeq ($(shell type mips-linux-gnu-ld >/dev/null 2>/dev/null; echo $$?), 0)
  MIPS_BINUTILS_PREFIX := mips-linux-gnu-
else
  $(error Please install or build mips-linux-gnu)
endif

CC       := tools/ido_recomp/$(DETECTED_OS)/7.1/cc
CC_OLD   := tools/ido_recomp/$(DETECTED_OS)/5.3/cc

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

INC        := -Iinclude -Isrc -Iassets -Ibuild -I.

# Check code syntax with host compiler
CHECK_WARNINGS := -Wall -Wextra -Wno-format-security -Wno-unknown-pragmas -Wno-unused-parameter -Wno-unused-variable -Wno-missing-braces -Wno-int-conversion
CC_CHECK   := gcc -fno-builtin -fsyntax-only -fsigned-char -std=gnu90 -D _LANGUAGE_C -D NON_MATCHING $(INC) -include stdarg.h $(CHECK_WARNINGS)

CPP        := cpp
MKLDSCRIPT := tools/mkldscript
ELF2ROM    := tools/elf2rom
ZAPD       := tools/ZAPD/ZAPD.out

OPTFLAGS := -O2
ASFLAGS := -march=vr4300 -32 -Iinclude
MIPS_VERSION := -mips2

# we support Microsoft extensions such as anonymous structs, which the compiler does support but warns for their usage. Surpress the warnings with -woff.
CFLAGS += -G 0 -non_shared -Xfullwarn -Xcpluscomm $(INC) -Wab,-r4300_mul -woff 649,838,712

ifeq ($(shell getconf LONG_BIT), 32)
  # Work around memory allocation bug in QEMU
  export QEMU_GUEST_BASE := 1
else
  # Ensure that gcc treats the code as 32-bit
  CC_CHECK += -m32
endif

#### Files ####

# ROM image
ROM := zelda_ocarina_mq_dbg.z64
ELF := $(ROM:.z64=.elf)
# description of ROM segments
SPEC := spec

SRC_DIRS := $(shell find src -type d)
ASM_DIRS := $(shell find asm -type d -not -path "asm/non_matchings*") $(shell find data -type d)
ASSET_BIN_DIRS := $(shell find assets/* -type d -not -path "assets/xml*")
ASSET_FILES_XML := $(foreach dir,$(ASSET_BIN_DIRS),$(wildcard $(dir)/*.xml))
ASSET_FILES_BIN := $(foreach dir,$(ASSET_BIN_DIRS),$(wildcard $(dir)/*.bin))
ASSET_FILES_OUT := $(foreach f,$(ASSET_FILES_XML:.xml=.c),$f) \
				   $(foreach f,$(ASSET_FILES_BIN:.bin=.bin.inc.c),build/$f)

# source files
C_FILES       := $(foreach dir,$(SRC_DIRS) $(ASSET_BIN_DIRS),$(wildcard $(dir)/*.c))
S_FILES       := $(foreach dir,$(ASM_DIRS),$(wildcard $(dir)/*.s))
O_FILES       := $(foreach f,$(S_FILES:.s=.o),build/$f) \
                 $(foreach f,$(C_FILES:.c=.o),build/$f) \
                 $(foreach f,$(wildcard baserom/*),build/$f.o)

# Automatic dependency files
# (Only asm_processor dependencies are handled for now)
DEP_FILES := $(O_FILES:.o=.asmproc.d)

TEXTURE_FILES_PNG := $(foreach dir,$(ASSET_BIN_DIRS),$(wildcard $(dir)/*.png))
TEXTURE_FILES_JPG := $(foreach dir,$(ASSET_BIN_DIRS),$(wildcard $(dir)/*.jpg))
TEXTURE_FILES_OUT := $(foreach f,$(TEXTURE_FILES_PNG:.png=.inc.c),build/$f) \
					 $(foreach f,$(TEXTURE_FILES_JPG:.jpg=.jpg.inc.c),build/$f) \

# create build directories
$(shell mkdir -p build/baserom $(foreach dir,$(SRC_DIRS) $(ASM_DIRS) $(ASSET_BIN_DIRS),build/$(dir)))

build/src/libultra_boot_O1/%.o: OPTFLAGS := -O1
build/src/libultra_boot_O2/%.o: OPTFLAGS := -O2
build/src/libultra_code_O1/%.o: OPTFLAGS := -O1
build/src/libultra_code_O2/%.o: OPTFLAGS := -O2
build/src/libultra_code_O2_g3/%.o: OPTFLAGS := -O2 -g3

build/src/libultra_boot_O1/ll.o: MIPS_VERSION := -mips3 -32
build/src/libultra_code_O1/llcvt.o: MIPS_VERSION := -mips3 -32

build/src/code/fault.o: CFLAGS += -trapuv
build/src/code/fault.o: OPTFLAGS := -O2 -g3
build/src/code/fault_drawer.o: CFLAGS += -trapuv
build/src/code/fault_drawer.o: OPTFLAGS := -O2 -g3
build/src/code/ucode_disas.o: OPTFLAGS := -O2 -g3
build/src/code/code_801068B0.o: OPTFLAGS := -g
build/src/code/code_80106860.o: OPTFLAGS := -g
build/src/code/code_801067F0.o: OPTFLAGS := -g

build/src/libultra_boot_O1/%.o: CC := $(CC_OLD)
build/src/libultra_boot_O2/%.o: CC := $(CC_OLD)
build/src/libultra_code_O1/%.o: CC := $(CC_OLD)
build/src/libultra_code_O2/%.o: CC := $(CC_OLD)
build/src/libultra_code_O2_g3/%.o: CC := $(CC_OLD)

build/src/code/jpegutils.o: CC := $(CC_OLD)
build/src/code/jpegdecoder.o: CC := $(CC_OLD)

build/src/boot/%.o: CC := python3 tools/asm_processor/build.py $(CC) -- $(AS) $(ASFLAGS) --
build/src/code/%.o: CC := python3 tools/asm_processor/build.py $(CC) -- $(AS) $(ASFLAGS) --
build/src/overlays/actors/%.o: CC := python3 tools/asm_processor/build.py $(CC) -- $(AS) $(ASFLAGS) --
build/src/overlays/effects/%.o: CC := python3 tools/asm_processor/build.py $(CC) -- $(AS) $(ASFLAGS) --
build/src/overlays/gamestates/%.o: CC := python3 tools/asm_processor/build.py $(CC) -- $(AS) $(ASFLAGS) --

build/assets/%.o: CC := python3 tools/asm_processor/build.py $(CC) -- $(AS) $(ASFLAGS) --

#### Main Targets ###

all: $(ROM)
ifeq ($(COMPARE),1)
	@$(PRINT) "$(GREEN)Checking if ROM matches.. $(NO_COL)\n"
	@md5sum --quiet -c checksum.md5 && $(PRINT) "zelda_ocarina_mq_dbg.z64: $(GREEN)OK$(NO_COL)\n" || ($(PRINT) "$(YELLOW)Building the ROM file has succeeded, but does not match the original ROM.\nThis is expected, and not an error, if you are making modifications.\nTo silence this message, use 'make COMPARE=0.' $(NO_COL)\n" && false)
endif

$(ROM): $(ELF)
	$(call print,Making ROM:,$<,$@)
	$(V)$(ELF2ROM) -cic 6105 $< $@

$(ELF): $(TEXTURE_FILES_OUT) $(ASSET_FILES_OUT) $(O_FILES) build/ldscript.txt build/undefined_syms.txt
	$(call print,Making ELF:,$<,$@)
	$(V)$(LD) -T build/undefined_syms.txt -T build/ldscript.txt --no-check-sections --accept-unknown-input-arch --emit-relocs -Map build/z64.map -o $@

build/ldscript.txt: $(SPEC)
	$(call print,Making linker script:,$<,ldscript.txt)
	$(V)$(CPP) $(CPPFLAGS) $< > build/spec
	$(V)$(MKLDSCRIPT) build/spec $@

build/undefined_syms.txt: undefined_syms.txt
	$(call print,Processing undefined syms:,$<,$@)
	$(V)$(CPP) $(CPPFLAGS) $< > build/undefined_syms.txt

clean:
	$(RM) -r $(ROM) $(ELF) build

assetclean:
	$(RM) -r $(ASSET_BIN_DIRS)
	$(RM) -r build/assets
	$(RM) -r .extracted-assets.json

distclean: clean assetclean
	$(RM) -r baserom/
	$(MAKE) -C tools distclean

setup:
	@$(PRINT) "$(GREEN)Building tools...\n$(NO_COL)"
	$(V)$(MAKE) $(MAKE_QUIET) -C tools
	@$(PRINT) "$(GREEN)Fixing baserom if possible...\n$(NO_COL)"
	$(V)python3 fixbaserom.py
	@$(PRINT) "$(GREEN)Extracting baserom files...\n$(NO_COL)"
	$(V)python3 extract_baserom.py
	@$(PRINT) "$(GREEN)Extracting assets...\n$(NO_COL)"
	$(V)python3 extract_assets.py

resources: $(ASSET_FILES_OUT)
test: $(ROM)
	$(EMULATOR) $(EMU_FLAGS) $<

.PHONY: all clean setup test distclean assetclean

#### Various Recipes ####

build/baserom/%.o: baserom/%
	$(call print,Building baserom object:,$<,$@)
	$(V)$(OBJCOPY) -I binary -O elf32-big $< $@

build/asm/%.o: asm/%.s
	$(call print,Assembling file:,$<,$@)
	$(V)$(AS) $(ASFLAGS) $< -o $@

build/data/%.o: data/%.s
	$(call print,Converting UTF-8:,$<,$@)
	$(V)iconv --from UTF-8 --to EUC-JP $< | $(AS) $(ASFLAGS) -o $@

build/assets/%.o: assets/%.c
	$(call print,Compiling asset:,$<,$@.bin)
	$(V)$(CC) -c $(CFLAGS) $(MIPS_VERSION) $(OPTFLAGS) -o $@ $<
	$(V)$(OBJCOPY) -O binary $@ $@.bin

build/src/overlays/%.o: src/overlays/%.c
	$(call print,Compiling overlay:,$<,$@)
	$(V)$(CC) -c $(CFLAGS) $(MIPS_VERSION) $(OPTFLAGS) -o $@ $<
	$(V)$(CC_CHECK) $<
	$(V)$(ZAPD) bovl -eh -i $@ -cfg $< --outputpath $(@D)/$(notdir $(@D))_reloc.s $(ZAPD_QUIET)
	$(V)-test -f $(@D)/$(notdir $(@D))_reloc.s && $(AS) $(ASFLAGS) $(@D)/$(notdir $(@D))_reloc.s -o $(@D)/$(notdir $(@D))_reloc.o
	@$(OBJDUMP) -d $@ > $(@:.o=.s)

build/src/%.o: src/%.c
	$(call print,Compiling file:,$<,$@)
	$(V)$(CC) -c $(CFLAGS) $(MIPS_VERSION) $(OPTFLAGS) -o $@ $<
	$(V)$(CC_CHECK) $<
	@$(OBJDUMP) -d $@ > $(@:.o=.s)

build/src/libultra_boot_O1/ll.o: src/libultra_boot_O1/ll.c
	$(call print,Compiling file:,$<,$@)
	$(V)$(CC) -c $(CFLAGS) $(MIPS_VERSION) $(OPTFLAGS) -o $@ $<
	$(V)$(CC_CHECK) $<
	python3 tools/set_o32abi_bit.py $@
	@$(OBJDUMP) -d $@ > $(@:.o=.s)

build/src/libultra_code_O1/llcvt.o: src/libultra_code_O1/llcvt.c
	$(call print,Compiling file:,$<,$@)
	$(V)$(CC) -c $(CFLAGS) $(MIPS_VERSION) $(OPTFLAGS) -o $@ $<
	$(V)$(CC_CHECK) $<
	python3 tools/set_o32abi_bit.py $@
	@$(OBJDUMP) -d $@ > $(@:.o=.s)

build/%.inc.c: %.png
	$(call print,Making asset include:,$<,$@)
	$(V)$(ZAPD) btex -eh -tt $(subst .,,$(suffix $*)) -i $< -o $@ $(ZAPD_QUIET)

build/assets/%.bin.inc.c: assets/%.bin
	$(call print,Making asset include:,$<,$@)
	$(V)$(ZAPD) bblb -eh -i $< -o $@ $(ZAPD_QUIET)

build/assets/%.jpg.inc.c: assets/%.jpg
	$(call print,Making asset include:,$<,$@)
	$(V)$(ZAPD) bren -eh -i $< -o $@ $(ZAPD_QUIET)

-include $(DEP_FILES)
