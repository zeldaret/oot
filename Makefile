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
  COMPARE := 0
endif

PROJECT_DIR := $(dir $(realpath $(firstword $(MAKEFILE_LIST))))

#### Tools ####
ifeq ($(shell type mips-linux-gnu-ld >/dev/null 2>/dev/null; echo $$?), 0)
  MIPS_BINUTILS_PREFIX := mips-linux-gnu-
else
  $(error Please install or build mips-linux-gnu)
endif

CC       := tools/ido_recomp/linux/7.1/cc
CC_OLD   := tools/ido_recomp/linux/5.3/cc

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

# Check code syntax with host compiler
CC_CHECK   := gcc -fno-builtin -fsyntax-only -fsigned-char -std=gnu90 -Wall -Wextra -Wno-format-security -Wno-unknown-pragmas -Wno-unused-parameter -Wno-unused-variable -Wno-missing-braces -D _LANGUAGE_C -D NON_MATCHING -Iinclude -Isrc -include stdarg.h

CPP        := cpp
MKLDSCRIPT := tools/mkldscript
ELF2ROM    := tools/elf2rom
ZAP2       := tools/ZAP2/ZAP2.out

OPTFLAGS := -O2
ASFLAGS := -march=vr4300 -32 -Iinclude
MIPS_VERSION := -mips2

# we support Microsoft extensions such as anonymous structs, which the compiler does support but warns for their usage. Surpress the warnings with -woff.
CFLAGS += -G 0 -non_shared -Xfullwarn -Xcpluscomm -Iinclude -Isrc -Wab,-r4300_mul -woff 649,838

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
SCENE_DIRS := $(shell find scenes -type d -not -path "scenes/xml*")
TEXTURE_DIRS := assets/textures
TEXTURE_BIN_DIRS := $(shell find assets/textures/* -type d -not -path "assets/textures/xml*")

# source files
C_FILES       := $(foreach dir,$(SRC_DIRS) $(TEXTURE_BIN_DIRS) $(SCENE_DIRS),$(wildcard $(dir)/*.c))
S_FILES       := $(foreach dir,$(ASM_DIRS),$(wildcard $(dir)/*.s))
#TEXTURE_FILES := $(foreach dir,$(TEXTURE_DIRS),$(wildcard $(dir)/*.xml))
O_FILES       := $(foreach f,$(S_FILES:.s=.o),build/$f) \
                 $(foreach f,$(C_FILES:.c=.o),build/$f) \
                 $(foreach f,$(wildcard baserom/*),build/$f.o)
#		         $(foreach f,$(TEXTURE_FILES:.xml=.o),build/$f)

#TEXTURE_FILES_RGBA32 := $(foreach dir,$(TEXTURE_BIN_DIRS),$(wildcard $(dir)/*.rgba32.png))
#TEXTURE_FILES_RGBA16 := $(foreach dir,$(TEXTURE_BIN_DIRS),$(wildcard $(dir)/*.rgb5a1.png))
#TEXTURE_FILES_GRAY4 := $(foreach dir,$(TEXTURE_BIN_DIRS),$(wildcard $(dir)/*.i4.png))
#TEXTURE_FILES_GRAY8 := $(foreach dir,$(TEXTURE_BIN_DIRS),$(wildcard $(dir)/*.i8.png))
#TEXTURE_FILES_GRAYA4 := $(foreach dir,$(TEXTURE_BIN_DIRS),$(wildcard $(dir)/*.ia4.png))
#TEXTURE_FILES_GRAYA8 := $(foreach dir,$(TEXTURE_BIN_DIRS),$(wildcard $(dir)/*.ia8.png))
#TEXTURE_FILES_GRAYA16 := $(foreach dir,$(TEXTURE_BIN_DIRS),$(wildcard $(dir)/*.ia16.png))
#TEXTURE_FILES_CI4 := $(foreach dir,$(TEXTURE_BIN_DIRS),$(wildcard $(dir)/*.ci4.png))
#TEXTURE_FILES_CI8 := $(foreach dir,$(TEXTURE_BIN_DIRS),$(wildcard $(dir)/*.ci8.png))
#TEXTURE_FILES_OUT := $(foreach f,$(TEXTURE_FILES_RGBA32:.rgba32.png=.rgba32),build/$f) \
#					 $(foreach f,$(TEXTURE_FILES_RGBA16:.rgb5a1.png=.rgb5a1),build/$f) \
#					 $(foreach f,$(TEXTURE_FILES_GRAY4:.i4.png=.i4),build/$f) \
#					 $(foreach f,$(TEXTURE_FILES_GRAY8:.i8.png=.i8),build/$f) \
#					 $(foreach f,$(TEXTURE_FILES_GRAYA4:.ia4.png=.ia4),build/$f) \
#					 $(foreach f,$(TEXTURE_FILES_GRAYA8:.ia8.png=.ia8),build/$f) \
#					 $(foreach f,$(TEXTURE_FILES_GRAYA16:.ia16.png=.ia16),build/$f) \
#					 $(foreach f,$(TEXTURE_FILES_CI4:.ci4.png=.ci4),build/$f) \
#					 $(foreach f,$(TEXTURE_FILES_CI8:.ci8.png=.ci8),build/$f) \

# create build directories
$(shell mkdir -p build/baserom $(foreach dir,$(SRC_DIRS) $(ASM_DIRS) $(TEXTURE_DIRS) $(TEXTURE_BIN_DIRS) $(SCENE_DIRS),build/$(dir)))

build/src/libultra_boot_O1/%.o: OPTFLAGS := -O1
build/src/libultra_boot_O2/%.o: OPTFLAGS := -O2
build/src/code/fault.o: CFLAGS += -trapuv
build/src/code/fault.o: OPTFLAGS := -O2 -g3
build/src/code/fault_drawer.o: CFLAGS += -trapuv
build/src/code/fault_drawer.o: OPTFLAGS := -O2 -g3
build/src/code/ucode_disas.o: OPTFLAGS := -O2 -g3
build/src/code/code_801068B0.o: OPTFLAGS := -g
build/src/code/code_80106860.o: OPTFLAGS := -g
build/src/code/code_801067F0.o: OPTFLAGS := -g

# Todo: split libultra_code into libultra_code_O1, etc..
build/src/libultra_code/sqrt.o: OPTFLAGS := -O2 -g3
build/src/libultra_code/absf.o: OPTFLAGS := -O2 -g3
build/src/libultra_code/osSetTimer.o: OPTFLAGS := -O1
build/src/libultra_code/osStopTimer.o: OPTFLAGS := -O1
build/src/libultra_code/llcvt.o: OPTFLAGS := -O1
build/src/libultra_code/llcvt.o: MIPS_VERSION := -mips3 -32

build/src/libultra_boot_O1/%.o: CC := $(CC_OLD)
build/src/libultra_boot_O2/%.o: CC := $(CC_OLD)

build/src/libultra_code/%.o: CC := python3 tools/asm_processor/build.py $(CC_OLD) -- $(AS) $(ASFLAGS) --
build/src/code/jpegutils.o: CC := python3 tools/asm_processor/build.py $(CC_OLD) -- $(AS) $(ASFLAGS) --
build/src/code/jpegdecoder.o: CC := python3 tools/asm_processor/build.py $(CC_OLD) -- $(AS) $(ASFLAGS) --

build/src/boot/%.o: CC := python3 tools/asm_processor/build.py $(CC) -- $(AS) $(ASFLAGS) --
build/src/code/%.o: CC := python3 tools/asm_processor/build.py $(CC) -- $(AS) $(ASFLAGS) --
build/src/overlays/actors/%.o: CC := python3 tools/asm_processor/build.py $(CC) -- $(AS) $(ASFLAGS) --
build/src/overlays/effects/%.o: CC := python3 tools/asm_processor/build.py $(CC) -- $(AS) $(ASFLAGS) --
build/src/overlays/gamestates/%.o: CC := python3 tools/asm_processor/build.py $(CC) -- $(AS) $(ASFLAGS) --

#### Main Targets ###

all: $(ROM)
ifeq ($(COMPARE),1)
	@md5sum $(ROM)
	@md5sum -c checksum.md5
endif

$(ROM): $(ELF)
	$(ELF2ROM) -cic 6105 $< $@

$(ELF): $(TEXTURE_FILES_OUT) $(O_FILES) build/ldscript.txt build/undefined_syms.txt
	$(LD) -T build/undefined_syms.txt -T build/ldscript.txt --no-check-sections --accept-unknown-input-arch --emit-relocs -Map build/z64.map -o $@

build/ldscript.txt: $(SPEC)
	$(CPP) -P $< > build/spec
	$(MKLDSCRIPT) build/spec $@

build/undefined_syms.txt: undefined_syms.txt
	$(CPP) -P $< > build/undefined_syms.txt

clean:
	$(RM) -r $(ROM) $(ELF) build

setup:
	git submodule update --init --recursive
	make -C tools
	python3 fixbaserom.py
	python3 extract_baserom.py
	python3 extract_assets.py

#### Various Recipes ####

build/baserom/%.o: baserom/%
	$(OBJCOPY) -I binary -O elf32-big $< $@

build/asm/%.o: asm/%.s
	$(AS) $(ASFLAGS) $^ -o $@

build/data/%.o: data/%.s
	iconv --from UTF-8 --to EUC-JP $^ | $(AS) $(ASFLAGS) -o $@
#build/assets/%.o: assets/%.s
#	$(AS) $(ASFLAGS) $^ -o $@
#	$(OBJCOPY) -O binary $@ $@.bin

#build/assets/%.c: assets/%.xml
#	cp $(<:.c=.xml) $@

build/scenes/%.o: scenes/%.c
	$(CC) -c $(CFLAGS) $(MIPS_VERSION) $(OPTFLAGS) -o $@ $^
	$(OBJCOPY) -O binary $@ $@.bin

build/assets/%.o: assets/%.c
	$(CC) -c $(CFLAGS) $(MIPS_VERSION) $(OPTFLAGS) -o $@ $^
	$(OBJCOPY) -O binary $@ $@.bin

build/src/overlays/%.o: src/overlays/%.c
	$(CC) -c $(CFLAGS) $(MIPS_VERSION) $(OPTFLAGS) -o $@ $^
	$(CC_CHECK) $^
	$(ZAP2) bovl -i $@ -cfg $^ --outputpath $(@D)/$(notdir $(@D))_reloc.s
	-test -f $(@D)/$(notdir $(@D))_reloc.s && $(AS) $(ASFLAGS) $(@D)/$(notdir $(@D))_reloc.s -o $(@D)/$(notdir $(@D))_reloc.o
	@$(OBJDUMP) -d $@ > $(@:.o=.s)

build/src/%.o: src/%.c
	$(CC) -c $(CFLAGS) $(MIPS_VERSION) $(OPTFLAGS) -o $@ $^
	$(CC_CHECK) $^
	@$(OBJDUMP) -d $@ > $(@:.o=.s)

build/src/libultra_code/llcvt.o: src/libultra_code/llcvt.c
	$(CC) -c $(CFLAGS) $(MIPS_VERSION) $(OPTFLAGS) -o $@ $^
	$(CC_CHECK) $^
	python3 tools/set_o32abi_bit.py $@
	@$(OBJDUMP) -d $@ > $(@:.o=.s)

#build/assets/textures/%.o: assets/textures/%.zdata
#	$(OBJCOPY) -I binary -O elf32-big $< $@

#textures/%.zdata: textures/%
#	$(ZAP2) $<.xml b

#build/assets/%.s: assets/%.xml
#	$(ZAP2) e rgba32 $< $@

#build/assets/%.c: assets/%.xml
#	cp $(<:.c=.xml) $@

#build/assets/%.rgba32: assets/%.rgba32.png
#	$(ZAP2) btex rgba32 $< $@

#build/assets/%.rgb5a1: assets/%.rgb5a1.png
#	$(ZAP2) btex rgb5a1 $< $@

#build/assets/%.i4: assets/%.i4.png
#	$(ZAP2) btex i4 $< $@

#build/assets/%.i8: assets/%.i8.png
#	$(ZAP2) btex i8 $< $@

#build/assets/%.ia4: assets/%.ia4.png
#	$(ZAP2) btex ia4 $< $@

#build/assets/%.ia8: assets/%.ia8.png
#	$(ZAP2) btex ia8 $< $@

#build/assets/%.ci4: assets/%.ci4.png
#	$(ZAP2) btex ci4 $< $@

#build/assets/%.ci8: assets/%.ci8.png
#	$(ZAP2) btex ci8 $< $@
