MAKEFLAGS += --no-builtin-rules

# Ensure the build fails if a piped command fails
SHELL = /usr/bin/env bash
.SHELLFLAGS = -o pipefail -c

#### Build options ####

# Build options can be changed by modifying them below, or by appending 'SETTING=value' to all 'make' commands
# (e.g. 'make setup VERSION=ntsc-1.0' and 'make VERSION=ntsc-1.0' to build the NTSC 1.0 version).
# Alternatively, you can create a file called .make_options.mk (gitignored by default) and add 'SETTING=value'
# there to avoid modifying the Makefile directly.

-include .make_options.mk

# If COMPARE is 1, check the output md5sum after building. Set to 0 when modding.
COMPARE ?= 1
# If NON_MATCHING is 1, define the NON_MATCHING C flag when building. Set to 1 when modding.
NON_MATCHING ?= 0
# If ORIG_COMPILER is 1, compile with QEMU_IRIX and the original compiler.
ORIG_COMPILER ?= 0
# If COMPILER is "gcc", compile with GCC instead of IDO.
COMPILER ?= ido
# Target game version. Ensure the corresponding input ROM is placed in baseroms/$(VERSION)/baserom.z64.
# Currently the following versions are supported:
#   ntsc-1.0       N64 NTSC 1.0 (Japan/US depending on REGION)
#   ntsc-1.1       N64 NTSC 1.1 (Japan/US depending on REGION)
#   pal-1.0        N64 PAL 1.0 (Europe)
#   ntsc-1.2       N64 NTSC 1.2 (Japan/US depending on REGION)
#   pal-1.1        N64 PAL 1.1 (Europe)
#   gc-jp          GameCube Japan
#   gc-jp-mq       GameCube Japan Master Quest
#   gc-us          GameCube US
#   gc-us-mq       GameCube US Master Quest
#   gc-eu-mq-dbg   GameCube Europe/PAL Master Quest Debug (default)
#   gc-eu          GameCube Europe/PAL
#   gc-eu-mq       GameCube Europe/PAL Master Quest
#   gc-jp-ce       GameCube Japan (Collector's Edition disc)
#   ique-cn        iQue Player (Simplified Chinese)
VERSION ?= gc-eu-mq-dbg
# Number of threads to extract and compress with.
N_THREADS ?= $(shell nproc)
# Check code syntax with host compiler.
RUN_CC_CHECK ?= 1
# If DEBUG_OBJECTS is 1, produce additional debugging files such as objdump output or raw binaries for assets
DEBUG_OBJECTS ?= 0
# Set prefix to mips binutils binaries (mips-linux-gnu-ld => 'mips-linux-gnu-') - Change at your own risk!
# In nearly all cases, not having 'mips-linux-gnu-*' binaries on the PATH indicates missing dependencies.
MIPS_BINUTILS_PREFIX ?= mips-linux-gnu-
# Emulator w/ flags for 'make run'.
N64_EMULATOR ?=
# Set to override game region in the ROM header (options: JP, US, EU). This can be used to build a fake US version
# of the debug ROM for better emulator compatibility, or to build US versions of NTSC N64 ROMs.
# REGION ?= US
# Set to enable debug features regardless of ROM version.
# Note that by enabling debug features on non-debug ROM versions, some debug ROM specific assets will not be included.
# This means the debug test scenes and some debug graphics in the elf_msg actors will not work as expected.
# This may also be used to disable debug features on debug ROMs by setting DEBUG_FEATURES to 0
# DEBUG_FEATURES ?= 1

# Version-specific settings
REGIONAL_CHECKSUM := 0
ifeq ($(VERSION),ntsc-1.0)
  REGIONAL_CHECKSUM := 1
  REGION ?= JP
  PLATFORM := N64
  DEBUG_FEATURES ?= 0
  BUILD_CREATOR := zelda@srd44
  BUILD_DATE := 98-10-21
  BUILD_TIME := 04:56:31
  REVISION := 0
else ifeq ($(VERSION),ntsc-1.1)
  REGIONAL_CHECKSUM := 1
  REGION ?= JP
  PLATFORM := N64
  DEBUG_FEATURES ?= 0
  BUILD_CREATOR := zelda@srd44
  BUILD_DATE := 98-10-26
  BUILD_TIME := 10:58:45
  REVISION := 1
else ifeq ($(VERSION),pal-1.0)
  REGION ?= EU
  PLATFORM := N64
  DEBUG_FEATURES ?= 0
  BUILD_CREATOR := zelda@srd44
  BUILD_DATE := 98-11-10
  BUILD_TIME := 14:34:22
  REVISION := 0
else ifeq ($(VERSION),ntsc-1.2)
  REGIONAL_CHECKSUM := 1
  REGION ?= JP
  PLATFORM := N64
  DEBUG_FEATURES ?= 0
  BUILD_CREATOR := zelda@srd44
  BUILD_DATE := 98-11-12
  BUILD_TIME := 18:17:03
  REVISION := 2
else ifeq ($(VERSION),pal-1.1)
  REGION ?= EU
  PLATFORM := N64
  DEBUG_FEATURES ?= 0
  BUILD_CREATOR := zelda@srd44
  BUILD_DATE := 98-11-18
  BUILD_TIME := 17:36:49
  REVISION := 1
else ifeq ($(VERSION),gc-jp)
  REGION ?= JP
  PLATFORM := GC
  DEBUG_FEATURES ?= 0
  BUILD_CREATOR := zelda@srd022j
  BUILD_DATE := 02-10-29
  BUILD_TIME := 23:49:53
  REVISION := 15
else ifeq ($(VERSION),gc-jp-mq)
  REGION ?= JP
  PLATFORM := GC
  DEBUG_FEATURES ?= 0
  BUILD_CREATOR := zelda@srd022j
  BUILD_DATE := 02-10-30
  BUILD_TIME := 00:15:15
  REVISION := 15
else ifeq ($(VERSION),gc-us)
  REGION ?= US
  PLATFORM := GC
  DEBUG_FEATURES ?= 0
  BUILD_CREATOR := zelda@srd022j
  BUILD_DATE := 02-12-19
  BUILD_TIME := 13:28:09
  REVISION := 15
else ifeq ($(VERSION),gc-us-mq)
  REGION ?= US
  PLATFORM := GC
  DEBUG_FEATURES ?= 0
  BUILD_CREATOR := zelda@srd022j
  BUILD_DATE := 02-12-19
  BUILD_TIME := 14:05:42
  REVISION := 15
else ifeq ($(VERSION),gc-eu-mq-dbg)
  REGION ?= EU
  PLATFORM := GC
  DEBUG_FEATURES ?= 1
  BUILD_CREATOR := zelda@srd022j
  BUILD_DATE := 03-02-21
  BUILD_TIME := 00:16:31
  REVISION := 15
else ifeq ($(VERSION),gc-eu)
  REGION ?= EU
  PLATFORM := GC
  DEBUG_FEATURES ?= 0
  BUILD_CREATOR := zelda@srd022j
  BUILD_DATE := 03-02-21
  BUILD_TIME := 20:12:23
  REVISION := 15
else ifeq ($(VERSION),gc-eu-mq)
  REGION ?= EU
  PLATFORM := GC
  DEBUG_FEATURES ?= 0
  BUILD_CREATOR := zelda@srd022j
  BUILD_DATE := 03-02-21
  BUILD_TIME := 20:37:19
  REVISION := 15
else ifeq ($(VERSION),gc-jp-ce)
  REGION ?= JP
  PLATFORM := GC
  DEBUG_FEATURES ?= 0
  BUILD_CREATOR := zelda@srd022j
  BUILD_DATE := 03-10-08
  BUILD_TIME := 21:53:00
  REVISION := 15
else ifeq ($(VERSION),ique-cn)
  REGION ?= US
  PLATFORM := IQUE
  DEBUG_FEATURES ?= 0
  BUILD_CREATOR := build@toad.routefree.com
  BUILD_DATE := 03-10-22
  BUILD_TIME := 16:23:19
  REVISION := 0
else
$(error Unsupported version $(VERSION))
endif

# ORIG_COMPILER cannot be combined with a non-IDO compiler. Check for this case and error out if found.
ifneq ($(COMPILER),ido)
  ifeq ($(ORIG_COMPILER),1)
    $(error ORIG_COMPILER can only be used with the IDO compiler. Please check your Makefile variables and try again)
  endif
endif

ifeq ($(COMPILER),gcc)
  CPP_DEFINES += -DCOMPILER_GCC
  NON_MATCHING := 1
endif

ifeq ($(NON_MATCHING),1)
  CPP_DEFINES += -DNON_MATCHING -DAVOID_UB
  COMPARE := 0
endif

PROJECT_DIR := $(dir $(realpath $(firstword $(MAKEFILE_LIST))))
BUILD_DIR := build/$(VERSION)
EXPECTED_DIR := expected/$(BUILD_DIR)
BASEROM_DIR := baseroms/$(VERSION)
EXTRACTED_DIR := extracted/$(VERSION)
VENV := .venv

MAKE = make

ifeq ($(PLATFORM),N64)
  CPP_DEFINES += -DPLATFORM_N64=1 -DPLATFORM_GC=0 -DPLATFORM_IQUE=0
  LIBULTRA_VERSION := I
  LIBULTRA_PATCH := 1
else ifeq ($(PLATFORM),GC)
  CPP_DEFINES += -DPLATFORM_N64=0 -DPLATFORM_GC=1 -DPLATFORM_IQUE=0
  LIBULTRA_VERSION := L
  LIBULTRA_PATCH := 0
else ifeq ($(PLATFORM),IQUE)
  CPP_DEFINES += -DPLATFORM_N64=0 -DPLATFORM_GC=0 -DPLATFORM_IQUE=1
  LIBULTRA_VERSION := L
  LIBULTRA_PATCH := 0
else
$(error Unsupported platform $(PLATFORM))
endif

# Converts e.g. ntsc-1.0 to NTSC_1_0
VERSION_MACRO := $(shell echo $(VERSION) | tr a-z-. A-Z__)
CPP_DEFINES += -DOOT_VERSION=$(VERSION_MACRO) -DOOT_REVISION=$(REVISION)
CPP_DEFINES += -DOOT_REGION=REGION_$(REGION)
CPP_DEFINES += -DLIBULTRA_VERSION=LIBULTRA_VERSION_$(LIBULTRA_VERSION)
CPP_DEFINES += -DLIBULTRA_PATCH=$(LIBULTRA_PATCH)
ifeq ($(PLATFORM),IQUE)
  CPP_DEFINES += -DBBPLAYER
endif

ifeq ($(DEBUG_FEATURES),1)
  CPP_DEFINES += -DDEBUG_FEATURES=1
  OPTFLAGS := -O2
else
  CPP_DEFINES += -DDEBUG_FEATURES=0 -DNDEBUG
  OPTFLAGS := -O2 -g3
endif
ASOPTFLAGS := -O1

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
    endif
endif

#### Tools ####
ifneq ($(shell type $(MIPS_BINUTILS_PREFIX)ld >/dev/null 2>/dev/null; echo $$?), 0)
  $(error Unable to find $(MIPS_BINUTILS_PREFIX)ld. Please install or build MIPS binutils, commonly mips-linux-gnu. (or set MIPS_BINUTILS_PREFIX if your MIPS binutils install uses another prefix))
endif

# Detect compiler and set variables appropriately.
ifeq ($(COMPILER),gcc)
  CC       := $(MIPS_BINUTILS_PREFIX)gcc
  CCAS     := $(CC) -x assembler-with-cpp
else ifeq ($(COMPILER),ido)
  CC       := tools/ido_recomp/$(DETECTED_OS)/7.1/cc
  CC_OLD   := tools/ido_recomp/$(DETECTED_OS)/5.3/cc
  CCAS     := $(CC_OLD)
else
$(error Unsupported compiler. Please use either ido or gcc as the COMPILER variable.)
endif

# if ORIG_COMPILER is 1, check that either QEMU_IRIX is set or qemu-irix package installed
ifeq ($(ORIG_COMPILER),1)
  ifndef QEMU_IRIX
    QEMU_IRIX := $(shell which qemu-irix)
    ifeq (, $(QEMU_IRIX))
      $(error Please install qemu-irix package or set QEMU_IRIX env var to the full qemu-irix binary path)
    endif
  endif
  CC       := $(QEMU_IRIX) -L tools/ido7.1_compiler tools/ido7.1_compiler/usr/bin/cc
  CC_OLD   := $(QEMU_IRIX) -L tools/ido5.3_compiler tools/ido5.3_compiler/usr/bin/cc
  CCAS     := $(CC)
endif

# EGCS Compiler
EGCS_PREFIX := tools/egcs/$(DETECTED_OS)/
EGCS_CC := $(EGCS_PREFIX)gcc -B $(EGCS_PREFIX)
EGCS_CCAS := $(EGCS_CC) -x assembler-with-cpp

AS      := $(MIPS_BINUTILS_PREFIX)as
LD      := $(MIPS_BINUTILS_PREFIX)ld
OBJCOPY := $(MIPS_BINUTILS_PREFIX)objcopy
OBJDUMP := $(MIPS_BINUTILS_PREFIX)objdump
NM      := $(MIPS_BINUTILS_PREFIX)nm
STRIP   := $(MIPS_BINUTILS_PREFIX)strip

# Command prefix to preprocess a file before running the compiler
PREPROCESS :=

# Command to patch certain object files after they are built
POSTPROCESS_OBJ := @:

# The default iconv on macOS has some differences from GNU iconv, so we use the Homebrew version instead
ifeq ($(UNAME_S),Darwin)
  ICONV := $(shell brew --prefix)/opt/libiconv/bin/iconv
else
  ICONV := iconv
endif

INC := -Iinclude -Iinclude/libc -Isrc -I$(BUILD_DIR) -I. -I$(EXTRACTED_DIR)

# Check code syntax with host compiler
CHECK_WARNINGS := -Wall -Wextra -Wno-format-security -Wno-unknown-pragmas -Wno-unused-parameter -Wno-unused-variable -Wno-missing-braces
CHECK_WARNINGS += -Werror=implicit-int -Werror=implicit-function-declaration -Werror=int-conversion -Werror=incompatible-pointer-types

# The `cpp` command behaves differently on macOS (it behaves as if
# `-traditional-cpp` was passed) so we use `gcc -E` instead.
CPP        := gcc -E
MKLDSCRIPT := tools/mkldscript
MKDMADATA  := tools/mkdmadata
ELF2ROM    := tools/elf2rom
ZAPD       := tools/ZAPD/ZAPD.out
FADO       := tools/fado/fado.elf
PYTHON     ?= $(VENV)/bin/python3

# Command to replace $(BUILD_DIR) in some files with the build path.
# We can't use the C preprocessor for this because it won't substitute inside string literals.
BUILD_DIR_REPLACE := sed -e 's|$$(BUILD_DIR)|$(BUILD_DIR)|g'

# Audio tools
SAMPLECONV    := tools/audio/sampleconv/sampleconv
SBC           := tools/audio/sbc
SFC           := tools/audio/sfc
SFPATCH       := tools/audio/sfpatch
ATBLGEN       := tools/audio/atblgen
AFILE_SIZES   := tools/audio/afile_sizes
# We want linemarkers in sequence assembly files for better assembler error messages
SEQ_CPP       := $(CPP) -x assembler-with-cpp -fno-dollars-in-identifiers
SEQ_CPPFLAGS  := -D_LANGUAGE_ASEQ -DMML_VERSION=MML_VERSION_OOT $(CPP_DEFINES) -I include -I include/audio -I include/tables/sfx -I $(BUILD_DIR)/assets/audio/soundfonts

SBCFLAGS := --matching
SFCFLAGS := --matching

# Extra debugging steps
ifeq ($(DEBUG_OBJECTS),1)
  OBJDUMP_CMD = @$(OBJDUMP) $(OBJDUMP_FLAGS) $@ > $(@:.o=.s)
  OBJCOPY_CMD = @$(OBJCOPY) -O binary $@ $(@:.o=.bin)
else
  OBJDUMP_CMD = @:
  OBJCOPY_CMD = @:
endif

ifeq ($(COMPILER),gcc)
  OPTFLAGS := -Os -ffast-math -fno-unsafe-math-optimizations
endif

GBI_DEFINES := -DF3DEX_GBI_2
ifneq ($(PLATFORM),N64)
  GBI_DEFINES += -DF3DEX_GBI_PL -DGBI_DOWHILE
endif
ifeq ($(DEBUG_FEATURES),1)
  GBI_DEFINES += -DGBI_DEBUG
endif

CPPFLAGS += -P -xc -fno-dollars-in-identifiers $(CPP_DEFINES)
ASFLAGS += -march=vr4300 -32 -no-pad-sections -Iinclude -I$(EXTRACTED_DIR)

ifeq ($(COMPILER),gcc)
  CFLAGS += $(CPP_DEFINES) $(GBI_DEFINES) -G 0 -nostdinc $(INC) -march=vr4300 -mfix4300 -mabi=32 -mno-abicalls -mdivide-breaks -fno-PIC -fno-common -ffreestanding -funsigned-char -fbuiltin -fno-builtin-sinf -fno-builtin-cosf $(CHECK_WARNINGS)
  CCASFLAGS += $(CPP_DEFINES) $(GBI_DEFINES) -G 0 -nostdinc $(INC) -march=vr4300 -mfix4300 -mabi=32 -mno-abicalls -fno-PIC -fno-common -Wa,-no-pad-sections
  MIPS_VERSION := -mips3
else
  # Suppress warnings for wrong number of macro arguments (to fake variadic
  # macros) and Microsoft extensions such as anonymous structs (which the
  # compiler does support but warns for their usage).
  CFLAGS += $(CPP_DEFINES) $(GBI_DEFINES) -G 0 -non_shared -fullwarn -verbose -Xcpluscomm $(INC) -Wab,-r4300_mul -woff 516,609,649,838,712,807
  CCASFLAGS += $(CPP_DEFINES) $(GBI_DEFINES) -G 0 -non_shared -fullwarn -verbose -Xcpluscomm $(INC) -Wab,-r4300_mul -woff 516,609,649,838,712,807 -o32
  MIPS_VERSION := -mips2

  EGCS_CFLAGS += $(CPP_DEFINES) $(GBI_DEFINES) -DEGCS -G 0 -nostdinc $(INC) -mcpu=vr4300 -mabi=32 -mgp32 -mfp32 -fno-PIC
  EGCS_CCASFLAGS := -Wall -nostdinc $(CPP_DEFINES) -DEGCS $(INC) -c -G 0 -Wa,-irix-symtab -D_ABIO32=1 -D_ABI64=3 -D_MIPS_SIM_ABI64=_ABI64 -D_MIPS_SIM_ABI32=_ABIO32 -DMIPSEB -D_LANGUAGE_ASSEMBLY -mabi=32 -fno-PIC -non_shared -mcpu=4300 -mfix4300
  EGCS_ASOPTFLAGS :=
endif

ifeq ($(COMPILER),ido)
  # Have CC_CHECK pretend to be a MIPS compiler
  MIPS_BUILTIN_DEFS := -D_MIPS_ISA_MIPS2=2 -D_MIPS_ISA=_MIPS_ISA_MIPS2 -D_ABIO32=1 -D_MIPS_SIM=_ABIO32 -D_MIPS_SZINT=32 -D_MIPS_SZLONG=32 -D_MIPS_SZPTR=32
  CC_CHECK  = gcc -fno-builtin -fsyntax-only -funsigned-char -std=gnu90 -D_LANGUAGE_C $(CPP_DEFINES) $(MIPS_BUILTIN_DEFS) $(GBI_DEFINES) $(INC) $(CHECK_WARNINGS)
  ifeq ($(shell getconf LONG_BIT), 32)
    # Work around memory allocation bug in QEMU
    export QEMU_GUEST_BASE := 1
  else
    # Ensure that gcc (warning check) treats the code as 32-bit
    CC_CHECK += -m32
  endif
else
  RUN_CC_CHECK := 0
endif

OBJDUMP_FLAGS := -d -r -z -Mreg-names=32

#### Files ####

# ROM image
ROM      := $(BUILD_DIR)/oot-$(VERSION).z64
ROMC     := $(ROM:.z64=-compressed.z64)
ELF      := $(ROM:.z64=.elf)
MAP      := $(ROM:.z64=.map)
LDSCRIPT := $(ROM:.z64=.ld)

# description of ROM segments
SPEC := spec/spec
SPEC_INCLUDES := $(wildcard spec/*.inc)

SRC_DIRS := $(shell find src -type d)
UNDECOMPILED_DATA_DIRS := $(shell find data -type d)

ifneq ($(wildcard $(EXTRACTED_DIR)/assets/audio),)
  SAMPLE_EXTRACT_DIRS := $(shell find $(EXTRACTED_DIR)/assets/audio/samples -type d)
  SAMPLEBANK_EXTRACT_DIRS := $(shell find $(EXTRACTED_DIR)/assets/audio/samplebanks -type d)
  SOUNDFONT_EXTRACT_DIRS := $(shell find $(EXTRACTED_DIR)/assets/audio/soundfonts -type d)
  SEQUENCE_EXTRACT_DIRS := $(shell find $(EXTRACTED_DIR)/assets/audio/sequences -type d)
else
  SAMPLE_EXTRACT_DIRS :=
  SAMPLEBANK_EXTRACT_DIRS :=
  SOUNDFONT_EXTRACT_DIRS :=
  SEQUENCE_EXTRACT_DIRS :=
endif

ifneq ($(wildcard assets/audio/samples),)
  SAMPLE_DIRS := $(shell find assets/audio/samples -type d)
else
  SAMPLE_DIRS :=
endif

ifneq ($(wildcard assets/audio/samplebanks),)
  SAMPLEBANK_DIRS := $(shell find assets/audio/samplebanks -type d)
else
  SAMPLEBANK_DIRS :=
endif

ifneq ($(wildcard assets/audio/soundfonts),)
  SOUNDFONT_DIRS := $(shell find assets/audio/soundfonts -type d)
else
  SOUNDFONT_DIRS :=
endif

ifneq ($(wildcard assets/audio/sequences),)
  SEQUENCE_DIRS := $(shell find assets/audio/sequences -type d)
else
  SEQUENCE_DIRS :=
endif

SAMPLE_FILES         := $(foreach dir,$(SAMPLE_DIRS),$(wildcard $(dir)/*.wav))
SAMPLE_EXTRACT_FILES := $(foreach dir,$(SAMPLE_EXTRACT_DIRS),$(wildcard $(dir)/*.wav))
AIFC_FILES           := $(foreach f,$(SAMPLE_FILES),$(BUILD_DIR)/$(f:.wav=.aifc)) $(foreach f,$(SAMPLE_EXTRACT_FILES:.wav=.aifc),$(f:$(EXTRACTED_DIR)/%=$(BUILD_DIR)/%))

SAMPLEBANK_XMLS         := $(foreach dir,$(SAMPLEBANK_DIRS),$(wildcard $(dir)/*.xml))
SAMPLEBANK_EXTRACT_XMLS := $(foreach dir,$(SAMPLEBANK_EXTRACT_DIRS),$(wildcard $(dir)/*.xml))
SAMPLEBANK_BUILD_XMLS   := $(foreach f,$(SAMPLEBANK_XMLS),$(BUILD_DIR)/$f) $(foreach f,$(SAMPLEBANK_EXTRACT_XMLS),$(f:$(EXTRACTED_DIR)/%=$(BUILD_DIR)/%))
SAMPLEBANK_O_FILES      := $(foreach f,$(SAMPLEBANK_BUILD_XMLS),$(f:.xml=.o))
SAMPLEBANK_DEP_FILES    := $(foreach f,$(SAMPLEBANK_O_FILES),$(f:.o=.d))

SOUNDFONT_XMLS         := $(foreach dir,$(SOUNDFONT_DIRS),$(wildcard $(dir)/*.xml))
SOUNDFONT_EXTRACT_XMLS := $(foreach dir,$(SOUNDFONT_EXTRACT_DIRS),$(wildcard $(dir)/*.xml))
SOUNDFONT_BUILD_XMLS   := $(foreach f,$(SOUNDFONT_XMLS),$(BUILD_DIR)/$f) $(foreach f,$(SOUNDFONT_EXTRACT_XMLS),$(f:$(EXTRACTED_DIR)/%=$(BUILD_DIR)/%))
SOUNDFONT_O_FILES      := $(foreach f,$(SOUNDFONT_BUILD_XMLS),$(f:.xml=.o))
SOUNDFONT_HEADERS      := $(foreach f,$(SOUNDFONT_BUILD_XMLS),$(f:.xml=.h))
SOUNDFONT_DEP_FILES    := $(foreach f,$(SOUNDFONT_O_FILES),$(f:.o=.d))

SEQUENCE_FILES         := $(foreach dir,$(SEQUENCE_DIRS),$(wildcard $(dir)/*.seq))
SEQUENCE_EXTRACT_FILES := $(foreach dir,$(SEQUENCE_EXTRACT_DIRS),$(wildcard $(dir)/*.seq))
SEQUENCE_O_FILES       := $(foreach f,$(SEQUENCE_FILES),$(BUILD_DIR)/$(f:.seq=.o)) $(foreach f,$(SEQUENCE_EXTRACT_FILES:.seq=.o),$(f:$(EXTRACTED_DIR)/%=$(BUILD_DIR)/%))
SEQUENCE_DEP_FILES     := $(foreach f,$(SEQUENCE_O_FILES),$(f:.o=.d))

SEQUENCE_TABLE := include/tables/sequence_table.h

# create extracted directory
$(shell mkdir -p $(EXTRACTED_DIR))

ifneq ($(wildcard $(EXTRACTED_DIR)/assets),)
  ASSET_BIN_DIRS_EXTRACTED := $(shell find $(EXTRACTED_DIR)/assets -type d)
else
  ASSET_BIN_DIRS_EXTRACTED :=
endif
ASSET_BIN_DIRS_COMMITTED := $(shell find assets -type d -not -path "assets/xml*" -not -path "assets/audio*" -not -path assets/text)
ASSET_BIN_DIRS := $(ASSET_BIN_DIRS_EXTRACTED) $(ASSET_BIN_DIRS_COMMITTED)

ASSET_FILES_BIN_EXTRACTED := $(foreach dir,$(ASSET_BIN_DIRS_EXTRACTED),$(wildcard $(dir)/*.bin))
ASSET_FILES_BIN_COMMITTED := $(foreach dir,$(ASSET_BIN_DIRS_COMMITTED),$(wildcard $(dir)/*.bin))
ASSET_FILES_OUT := $(foreach f,$(ASSET_FILES_BIN_EXTRACTED:.bin=.bin.inc.c),$(f:$(EXTRACTED_DIR)/%=$(BUILD_DIR)/%)) \
                   $(foreach f,$(ASSET_FILES_BIN_COMMITTED:.bin=.bin.inc.c),$(BUILD_DIR)/$f)

# Find all .o files included in the spec
SPEC_O_FILES := $(shell $(CPP) $(CPPFLAGS) -I. $(SPEC) | $(BUILD_DIR_REPLACE) | sed -n -E 's/^[ \t]*include[ \t]*"([a-zA-Z0-9/_.-]+\.o)"/\1/p')

# Split out reloc files
O_FILES := $(filter-out %_reloc.o,$(SPEC_O_FILES))
OVL_RELOC_FILES := $(filter %_reloc.o,$(SPEC_O_FILES))

# Automatic dependency files
# (Only asm_processor dependencies and reloc dependencies are handled for now)
DEP_FILES := $(O_FILES:.o=.asmproc.d) $(OVL_RELOC_FILES:.o=.d)

TEXTURE_FILES_PNG_EXTRACTED := $(foreach dir,$(ASSET_BIN_DIRS_EXTRACTED),$(wildcard $(dir)/*.png))
TEXTURE_FILES_PNG_COMMITTED := $(foreach dir,$(ASSET_BIN_DIRS_COMMITTED),$(wildcard $(dir)/*.png))
TEXTURE_FILES_JPG_EXTRACTED := $(foreach dir,$(ASSET_BIN_DIRS_EXTRACTED),$(wildcard $(dir)/*.jpg))
TEXTURE_FILES_JPG_COMMITTED := $(foreach dir,$(ASSET_BIN_DIRS_COMMITTED),$(wildcard $(dir)/*.jpg))
TEXTURE_FILES_OUT := $(foreach f,$(TEXTURE_FILES_PNG_EXTRACTED:.png=.inc.c),$(f:$(EXTRACTED_DIR)/%=$(BUILD_DIR)/%)) \
                     $(foreach f,$(TEXTURE_FILES_PNG_COMMITTED:.png=.inc.c),$(BUILD_DIR)/$f) \
                     $(foreach f,$(TEXTURE_FILES_JPG_EXTRACTED:.jpg=.jpg.inc.c),$(f:$(EXTRACTED_DIR)/%=$(BUILD_DIR)/%)) \
                     $(foreach f,$(TEXTURE_FILES_JPG_COMMITTED:.jpg=.jpg.inc.c),$(BUILD_DIR)/$f)

# create build directories
$(shell mkdir -p $(BUILD_DIR)/baserom \
                 $(BUILD_DIR)/assets/text \
                 $(BUILD_DIR)/linker_scripts)
$(shell mkdir -p $(foreach dir, \
                      $(SRC_DIRS) \
                      $(UNDECOMPILED_DATA_DIRS) \
                      $(SAMPLE_DIRS) \
                      $(SAMPLEBANK_DIRS) \
                      $(SOUNDFONT_DIRS) \
                      $(SEQUENCE_DIRS) \
                      $(ASSET_BIN_DIRS_COMMITTED), \
                    $(BUILD_DIR)/$(dir)))
ifneq ($(wildcard $(EXTRACTED_DIR)/assets),)
$(shell mkdir -p $(foreach dir, \
                      $(SAMPLE_EXTRACT_DIRS) \
                      $(SAMPLEBANK_EXTRACT_DIRS) \
                      $(SOUNDFONT_EXTRACT_DIRS) \
                      $(SEQUENCE_EXTRACT_DIRS) \
                      $(ASSET_BIN_DIRS_EXTRACTED), \
                    $(dir:$(EXTRACTED_DIR)/%=$(BUILD_DIR)/%)))
endif

$(BUILD_DIR)/src/boot/build.o: CPP_DEFINES += -DBUILD_CREATOR="\"$(BUILD_CREATOR)\"" -DBUILD_DATE="\"$(BUILD_DATE)\"" -DBUILD_TIME="\"$(BUILD_TIME)\""

ifeq ($(COMPILER),ido)
$(BUILD_DIR)/src/boot/driverominit.o: OPTFLAGS := -O2

ifeq ($(PLATFORM),IQUE)
# iQue's driverominit.o seems to have been patched manually. For non-matching builds we edit the source code instead.
ifneq ($(NON_MATCHING),1)
$(BUILD_DIR)/src/boot/driverominit.o: POSTPROCESS_OBJ := $(PYTHON) tools/patch_ique_driverominit.py
endif

$(BUILD_DIR)/src/boot/viconfig.o: OPTFLAGS := -O2
endif

$(BUILD_DIR)/src/code/jpegutils.o: OPTFLAGS := -O2
$(BUILD_DIR)/src/code/jpegdecoder.o: OPTFLAGS := -O2

$(BUILD_DIR)/src/code/fault_n64.o: CFLAGS += -trapuv
$(BUILD_DIR)/src/code/fault_gc.o: CFLAGS += -trapuv
$(BUILD_DIR)/src/code/fault_gc.o: OPTFLAGS := -O2 -g3
$(BUILD_DIR)/src/code/fault_gc_drawer.o: CFLAGS += -trapuv
$(BUILD_DIR)/src/code/fault_gc_drawer.o: OPTFLAGS := -O2 -g3

$(BUILD_DIR)/src/code/ucode_disas.o: OPTFLAGS := -O2 -g3

ifeq ($(PLATFORM),N64)
$(BUILD_DIR)/src/code/z_rumble.o: CFLAGS += -DNO_SQRTF_INTRINSIC
endif

$(BUILD_DIR)/src/code/jpegutils.o: CC := $(CC_OLD)
$(BUILD_DIR)/src/code/jpegdecoder.o: CC := $(CC_OLD)

ifeq ($(PLATFORM),IQUE)
# Some files are compiled with EGCS on iQue
EGCS_O_FILES += $(BUILD_DIR)/src/boot/boot_main.o
EGCS_O_FILES += $(BUILD_DIR)/src/boot/idle.o
EGCS_O_FILES += $(BUILD_DIR)/src/boot/inflate.o
EGCS_O_FILES += $(BUILD_DIR)/src/boot/is_debug_ique.o
EGCS_O_FILES += $(BUILD_DIR)/src/boot/z_locale.o
EGCS_O_FILES += $(BUILD_DIR)/src/boot/z_std_dma.o
EGCS_O_FILES += $(BUILD_DIR)/src/code/z_actor.o
EGCS_O_FILES += $(BUILD_DIR)/src/code/z_common_data.o
EGCS_O_FILES += $(BUILD_DIR)/src/code/z_construct.o
EGCS_O_FILES += $(BUILD_DIR)/src/code/z_kanfont.o
EGCS_O_FILES += $(BUILD_DIR)/src/code/z_message.o
EGCS_O_FILES += $(BUILD_DIR)/src/code/z_parameter.o
EGCS_O_FILES += $(BUILD_DIR)/src/code/z_sram.o
EGCS_O_FILES += $(BUILD_DIR)/src/overlays/actors/ovl_En_Mag/z_en_mag.o
EGCS_O_FILES += $(BUILD_DIR)/src/overlays/actors/ovl_End_Title/z_end_title.o
EGCS_O_FILES += $(BUILD_DIR)/src/overlays/actors/ovl_Fishing/z_fishing.o
EGCS_O_FILES += $(BUILD_DIR)/src/overlays/gamestates/ovl_file_choose/z_file_copy_erase.o
EGCS_O_FILES += $(BUILD_DIR)/src/overlays/gamestates/ovl_opening/z_opening.o
EGCS_O_FILES += $(BUILD_DIR)/src/overlays/gamestates/ovl_title/z_title.o
EGCS_O_FILES += $(BUILD_DIR)/src/overlays/misc/ovl_kaleido_scope/z_kaleido_map.o
EGCS_O_FILES += $(BUILD_DIR)/src/overlays/misc/ovl_kaleido_scope/z_kaleido_scope.o

$(EGCS_O_FILES): CC := $(EGCS_CC)
$(EGCS_O_FILES): CFLAGS := $(EGCS_CFLAGS) -mno-abicalls
$(EGCS_O_FILES): MIPS_VERSION :=
endif

ifeq ($(PLATFORM),IQUE)
$(BUILD_DIR)/src/libc/%.o: CC := $(EGCS_CC)
$(BUILD_DIR)/src/libc/%.o: CCAS := $(EGCS_CCAS)
$(BUILD_DIR)/src/libc/%.o: CFLAGS := $(EGCS_CFLAGS) -mno-abicalls
$(BUILD_DIR)/src/libc/%.o: CCASFLAGS := $(EGCS_CCASFLAGS)
$(BUILD_DIR)/src/libc/%.o: OPTFLAGS := -O1
$(BUILD_DIR)/src/libc/%.o: MIPS_VERSION :=
$(BUILD_DIR)/src/libc/memmove.o: MIPS_VERSION := -mips2
else ifeq ($(DEBUG_FEATURES),1)
$(BUILD_DIR)/src/libc/%.o: OPTFLAGS := -g
$(BUILD_DIR)/src/libc/%.o: ASOPTFLAGS := -g
else
$(BUILD_DIR)/src/libc/%.o: OPTFLAGS := -O2
$(BUILD_DIR)/src/libc/%.o: ASOPTFLAGS := -O2
endif

$(BUILD_DIR)/src/libc64/%.o: OPTFLAGS := -O2

$(BUILD_DIR)/src/libu64/%.o: OPTFLAGS := -O2

$(BUILD_DIR)/src/audio/%.o: OPTFLAGS := -O2

# Use signed chars instead of unsigned for this audio file (needed to match AudioDebug_ScrPrt)
$(BUILD_DIR)/src/audio/general.o: CFLAGS += -signed

ifeq ($(PLATFORM),N64)
$(BUILD_DIR)/src/audio/general.o: CFLAGS += -DNO_SQRTF_INTRINSIC
endif

# Put string literals in .data for some audio files (needed to match these files with literals)
$(BUILD_DIR)/src/audio/sfx.o: CFLAGS += -use_readwrite_const
$(BUILD_DIR)/src/audio/sequence.o: CFLAGS += -use_readwrite_const

ifeq ($(PLATFORM),IQUE)
$(BUILD_DIR)/src/libultra/%.o: CC := $(EGCS_CC)
$(BUILD_DIR)/src/libultra/%.o: CCAS := $(EGCS_CCAS)
$(BUILD_DIR)/src/libultra/%.o: CFLAGS := $(EGCS_CFLAGS) -mno-abicalls
$(BUILD_DIR)/src/libultra/%.o: CCASFLAGS := $(EGCS_CCASFLAGS)
$(BUILD_DIR)/src/libultra/%.o: ASOPTFLAGS := $(EGCS_ASOPTFLAGS)

$(BUILD_DIR)/src/libultra/reg/_%.o: OPTFLAGS := -O0
$(BUILD_DIR)/src/libultra/reg/_%.o: MIPS_VERSION := -mgp64 -mfp64 -mips3

$(BUILD_DIR)/src/libultra/audio/%.o: OPTFLAGS := -O2

$(BUILD_DIR)/src/libultra/libc/ll.o: OPTFLAGS := -O0
$(BUILD_DIR)/src/libultra/libc/llcvt.o: OPTFLAGS := -O0

$(BUILD_DIR)/src/libultra/os/exceptasm.o: MIPS_VERSION := -mips3
$(BUILD_DIR)/src/libultra/os/invaldcache.o: MIPS_VERSION := -mips3
$(BUILD_DIR)/src/libultra/os/invalicache.o: MIPS_VERSION := -mips3
$(BUILD_DIR)/src/libultra/os/writebackdcache.o: MIPS_VERSION := -mips3
$(BUILD_DIR)/src/libultra/os/writebackdcacheall.o: MIPS_VERSION := -mips3
else
$(BUILD_DIR)/src/libultra/%.o: CC := $(CC_OLD)

$(BUILD_DIR)/src/libultra/libc/ll.o: OPTFLAGS := -O1
$(BUILD_DIR)/src/libultra/libc/ll.o: MIPS_VERSION := -mips3 -32
$(BUILD_DIR)/src/libultra/libc/ll.o: POSTPROCESS_OBJ := $(PYTHON) tools/set_o32abi_bit.py

$(BUILD_DIR)/src/libultra/libc/llcvt.o: OPTFLAGS := -O1
$(BUILD_DIR)/src/libultra/libc/llcvt.o: MIPS_VERSION := -mips3 -32
$(BUILD_DIR)/src/libultra/libc/llcvt.o: POSTPROCESS_OBJ := $(PYTHON) tools/set_o32abi_bit.py

$(BUILD_DIR)/src/libultra/os/exceptasm.o: MIPS_VERSION := -mips3 -32
$(BUILD_DIR)/src/libultra/os/exceptasm.o: POSTPROCESS_OBJ := $(PYTHON) tools/set_o32abi_bit.py
endif

$(BUILD_DIR)/src/code/%.o: ASOPTFLAGS := -O2
$(BUILD_DIR)/src/libleo/%.o: ASOPTFLAGS := -O2
$(BUILD_DIR)/src/libultra/libc/%.o: ASOPTFLAGS := -O2
$(BUILD_DIR)/src/libultra/mgu/%.o: ASOPTFLAGS := -O2

ifeq ($(LIBULTRA_VERSION),I)
$(BUILD_DIR)/src/libultra/gu/%.o: OPTFLAGS := -O3
$(BUILD_DIR)/src/libultra/io/%.o: OPTFLAGS := -O1
$(BUILD_DIR)/src/libultra/libc/%.o: OPTFLAGS := -O3
$(BUILD_DIR)/src/libultra/os/%.o: OPTFLAGS := -O1

$(BUILD_DIR)/src/libultra/io/aisetfreq.o: OPTFLAGS := -O2
$(BUILD_DIR)/src/libultra/io/cartrominit.o: OPTFLAGS := -O2
$(BUILD_DIR)/src/libultra/io/contpfs.o: OPTFLAGS := -O2
$(BUILD_DIR)/src/libultra/io/contramread.o: OPTFLAGS := -O2
$(BUILD_DIR)/src/libultra/io/contramwrite.o: OPTFLAGS := -O2
$(BUILD_DIR)/src/libultra/io/contreaddata.o: OPTFLAGS := -O2
$(BUILD_DIR)/src/libultra/io/crc.o: OPTFLAGS := -O2
$(BUILD_DIR)/src/libultra/io/devmgr.o: OPTFLAGS := -O2
$(BUILD_DIR)/src/libultra/io/epiread.o: OPTFLAGS := -O2
$(BUILD_DIR)/src/libultra/io/epiwrite.o: OPTFLAGS := -O2
$(BUILD_DIR)/src/libultra/io/epirawdma.o: OPTFLAGS := -O2
$(BUILD_DIR)/src/libultra/io/epirawread.o: OPTFLAGS := -O2
$(BUILD_DIR)/src/libultra/io/epirawwrite.o: OPTFLAGS := -O2
$(BUILD_DIR)/src/libultra/io/motor.o: OPTFLAGS := -O2
$(BUILD_DIR)/src/libultra/io/pfsgetstatus.o: OPTFLAGS := -O2
$(BUILD_DIR)/src/libultra/io/pfsselectbank.o: OPTFLAGS := -O2
$(BUILD_DIR)/src/libultra/io/pimgr.o: OPTFLAGS := -O2
$(BUILD_DIR)/src/libultra/io/pirawdma.o: OPTFLAGS := -O2
$(BUILD_DIR)/src/libultra/io/sirawdma.o: OPTFLAGS := -O2
$(BUILD_DIR)/src/libultra/io/sirawread.o: OPTFLAGS := -O2
$(BUILD_DIR)/src/libultra/io/sirawwrite.o: OPTFLAGS := -O2
$(BUILD_DIR)/src/libultra/io/sprawdma.o: OPTFLAGS := -O2
$(BUILD_DIR)/src/libultra/io/vimgr.o: OPTFLAGS := -O2
$(BUILD_DIR)/src/libultra/io/visetspecial.o: OPTFLAGS := -O2
$(BUILD_DIR)/src/libultra/io/viswapcontext.o: OPTFLAGS := -O2

$(BUILD_DIR)/src/libultra/gu/lookat.o: CFLAGS += -DNO_SQRTF_INTRINSIC
$(BUILD_DIR)/src/libultra/gu/lookathil.o: CFLAGS += -DNO_SQRTF_INTRINSIC
$(BUILD_DIR)/src/libultra/gu/normalize.o: CFLAGS += -DNO_SQRTF_INTRINSIC
else
$(BUILD_DIR)/src/libultra/gu/%.o: OPTFLAGS := -O2
$(BUILD_DIR)/src/libultra/io/%.o: OPTFLAGS := -O2
$(BUILD_DIR)/src/libultra/libc/%.o: OPTFLAGS := -O2
ifeq ($(PLATFORM),IQUE)
$(BUILD_DIR)/src/libultra/os/%.o: OPTFLAGS := -O0
else
$(BUILD_DIR)/src/libultra/os/%.o: OPTFLAGS := -O1
endif
endif

$(BUILD_DIR)/src/libleo/%.o: CC := $(CC_OLD)
$(BUILD_DIR)/src/libleo/%.o: OPTFLAGS := -O2

ifeq ($(PLATFORM),IQUE)
$(BUILD_DIR)/src/libgcc/%.o: CC := $(EGCS_CC)
$(BUILD_DIR)/src/libgcc/%.o: CFLAGS := $(EGCS_CFLAGS)
endif

$(BUILD_DIR)/assets/misc/z_select_static/%.o: GBI_DEFINES := -DF3DEX_GBI

ifeq ($(PLATFORM),IQUE)
$(BUILD_DIR)/src/makerom/%.o: CCAS := $(EGCS_CCAS)
$(BUILD_DIR)/src/makerom/%.o: CCASFLAGS := $(EGCS_CCASFLAGS)
$(BUILD_DIR)/src/makerom/%.o: ASOPTFLAGS := $(EGCS_ASOPTFLAGS)
endif

ifeq ($(PERMUTER),)  # permuter + preprocess.py misbehaves, permuter doesn't care about rodata diffs or bss ordering so just don't use it in that case
# Handle encoding (UTF-8 -> EUC-JP) and custom pragmas
$(BUILD_DIR)/src/%.o: PREPROCESS := ./tools/preprocess.sh -v $(VERSION) -i $(ICONV) --
endif

else
# Note that if adding additional assets directories for modding reasons these flags must also be used there
$(BUILD_DIR)/assets/%.o: CFLAGS += -fno-zero-initialized-in-bss -fno-toplevel-reorder
$(BUILD_DIR)/src/%.o: CFLAGS += -fexec-charset=euc-jp
$(BUILD_DIR)/src/libultra/libc/ll.o: OPTFLAGS := -Ofast
$(BUILD_DIR)/src/overlays/%.o: CFLAGS += -fno-merge-constants -mno-explicit-relocs -mno-split-addresses
endif

#### Main Targets ###

all: rom compress

rom: $(ROM)
ifneq ($(COMPARE),0)
	@md5sum $(ROM)
 ifneq ($(REGIONAL_CHECKSUM),0)
	@md5sum -c $(BASEROM_DIR)/checksum-$(REGION).md5
 else
	@md5sum -c $(BASEROM_DIR)/checksum.md5
 endif
endif

compress: $(ROMC)
ifneq ($(COMPARE),0)
	@md5sum $(ROMC)
 ifneq ($(REGIONAL_CHECKSUM),0)
	@md5sum -c $(BASEROM_DIR)/checksum-$(REGION)-compressed.md5
 else
	@md5sum -c $(BASEROM_DIR)/checksum-compressed.md5
 endif
endif

clean:
	$(RM) -r $(BUILD_DIR)

assetclean:
	$(RM) -r $(EXTRACTED_DIR)

distclean:
	$(RM) -r extracted/
	$(RM) -r build/
	$(MAKE) -C tools distclean

venv:
# Create the virtual environment if it doesn't exist.
# Delete the virtual environment directory if creation fails.
	test -d $(VENV) || python3 -m venv $(VENV) || { rm -rf $(VENV); false; }
	$(PYTHON) -m pip install -U pip
	$(PYTHON) -m pip install -U -r requirements.txt

setup: venv
	$(MAKE) -C tools
	$(PYTHON) tools/decompress_baserom.py $(VERSION)
	$(PYTHON) tools/extract_baserom.py $(BASEROM_DIR)/baserom-decompressed.z64 $(EXTRACTED_DIR)/baserom -v $(VERSION)
	$(PYTHON) tools/extract_incbins.py $(EXTRACTED_DIR)/baserom $(EXTRACTED_DIR)/incbin -v $(VERSION)
	$(PYTHON) tools/extract_text.py $(EXTRACTED_DIR)/baserom $(EXTRACTED_DIR)/text -v $(VERSION)
	$(PYTHON) tools/extract_assets.py $(EXTRACTED_DIR)/baserom $(EXTRACTED_DIR)/assets -v $(VERSION) -j$(N_THREADS)
	$(PYTHON) tools/extract_audio.py -o $(EXTRACTED_DIR) -v $(VERSION) --read-xml

disasm:
	$(RM) -r $(EXPECTED_DIR)
	VERSION=$(VERSION) DISASM_BASEROM=$(BASEROM_DIR)/baserom-decompressed.z64 DISASM_DIR=$(EXPECTED_DIR) PYTHON=$(PYTHON) AS_CMD='$(AS) $(ASFLAGS)' LD=$(LD) ./tools/disasm/do_disasm.sh

run: $(ROM)
ifeq ($(N64_EMULATOR),)
	$(error Emulator path not set. Set N64_EMULATOR in the Makefile or define it as an environment variable)
endif
	$(N64_EMULATOR) $<


.PHONY: all rom compress clean assetclean distclean venv setup disasm run
.DEFAULT_GOAL := rom

#### Various Recipes ####

ifeq ($(PLATFORM),IQUE)
  COMPRESS_ARGS := --format gzip --pad-to 0x4000
  CIC = 6102
else
  COMPRESS_ARGS := --format yaz0 --pad-to 0x800000 --fill-padding-bytes
  CIC = 6105
endif

$(ROM): $(ELF)
	$(ELF2ROM) -cic $(CIC) $< $@

$(ROMC): $(ROM) $(ELF) $(BUILD_DIR)/compress_ranges.txt
	$(PYTHON) tools/compress.py --in $(ROM) --out $@ --dmadata-start `./tools/dmadata_start.sh $(NM) $(ELF)` --compress `cat $(BUILD_DIR)/compress_ranges.txt` --threads $(N_THREADS) $(COMPRESS_ARGS)
	$(PYTHON) -m ipl3checksum sum --cic $(CIC) --update $@

COM_PLUGIN := tools/com-plugin/common-plugin.so

LDFLAGS := -T $(LDSCRIPT) -T $(BUILD_DIR)/linker_scripts/makerom.ld -T $(BUILD_DIR)/undefined_syms.txt --no-check-sections --accept-unknown-input-arch --emit-relocs -Map $(MAP)
ifeq ($(PLATFORM),IQUE)
  LDFLAGS += -plugin $(COM_PLUGIN) -plugin-opt order=$(BASEROM_DIR)/bss-order.txt
  $(ELF): $(BASEROM_DIR)/bss-order.txt
endif

$(ELF): $(TEXTURE_FILES_OUT) $(ASSET_FILES_OUT) $(O_FILES) $(OVL_RELOC_FILES) $(LDSCRIPT) $(BUILD_DIR)/linker_scripts/makerom.ld $(BUILD_DIR)/undefined_syms.txt \
        $(SAMPLEBANK_O_FILES) $(SOUNDFONT_O_FILES) $(SEQUENCE_O_FILES) \
        $(BUILD_DIR)/assets/audio/sequence_font_table.o $(BUILD_DIR)/assets/audio/audiobank_padding.o
	$(LD) $(LDFLAGS) -o $@

$(BUILD_DIR)/linker_scripts/makerom.ld: linker_scripts/makerom.ld
	$(CPP) -I include $(CPPFLAGS) $< > $@

## Order-only prerequisites
# These ensure e.g. the O_FILES are built before the OVL_RELOC_FILES.
# The intermediate phony targets avoid quadratically-many dependencies between the targets and prerequisites.

o_files: $(O_FILES)
$(OVL_RELOC_FILES): | o_files

asset_files: $(TEXTURE_FILES_OUT) $(ASSET_FILES_OUT)
$(O_FILES): | asset_files

.PHONY: o_files asset_files

$(BUILD_DIR)/spec: $(SPEC) $(SPEC_INCLUDES)
	$(CPP) $(CPPFLAGS) -I. $< | $(BUILD_DIR_REPLACE) > $@

$(LDSCRIPT): $(BUILD_DIR)/spec
	$(MKLDSCRIPT) $< $@

$(BUILD_DIR)/undefined_syms.txt: undefined_syms.txt
	$(CPP) $(CPPFLAGS) $< > $@

$(BUILD_DIR)/baserom/%.o: $(EXTRACTED_DIR)/baserom/%
	$(OBJCOPY) -I binary -O elf32-big $< $@

$(BUILD_DIR)/data/%.o: data/%.s
	$(CPP) $(CPPFLAGS) -Iinclude $< | $(AS) $(ASFLAGS) -o $@

ifeq ($(PLATFORM),IQUE)
  NES_CHARMAP := assets/text/charmap.chn.txt
else
  NES_CHARMAP := assets/text/charmap.nes.txt
endif

$(BUILD_DIR)/assets/text/%.enc.nes.h: assets/text/%.h $(EXTRACTED_DIR)/text/%.h $(NES_CHARMAP)
	$(CPP) $(CPPFLAGS) -I$(EXTRACTED_DIR) $< | $(PYTHON) tools/msgenc.py --encoding utf-8 --charmap $(NES_CHARMAP) - $@

$(BUILD_DIR)/assets/text/%.enc.jpn.h: assets/text/%.h $(EXTRACTED_DIR)/text/%.h assets/text/charmap.jpn.txt
	$(CPP) $(CPPFLAGS) -I$(EXTRACTED_DIR) $< | $(PYTHON) tools/msgenc.py --encoding SHIFT-JIS --wchar --charmap assets/text/charmap.jpn.txt - $@

# Dependencies for files including message data headers
# TODO remove when full header dependencies are used.
$(BUILD_DIR)/assets/text/jpn_message_data_static.o: $(BUILD_DIR)/assets/text/message_data.enc.jpn.h
$(BUILD_DIR)/assets/text/nes_message_data_static.o: $(BUILD_DIR)/assets/text/message_data.enc.nes.h
$(BUILD_DIR)/assets/text/ger_message_data_static.o: $(BUILD_DIR)/assets/text/message_data.enc.nes.h
$(BUILD_DIR)/assets/text/fra_message_data_static.o: $(BUILD_DIR)/assets/text/message_data.enc.nes.h
$(BUILD_DIR)/assets/text/staff_message_data_static.o: $(BUILD_DIR)/assets/text/message_data_staff.enc.nes.h
$(BUILD_DIR)/src/code/z_message.o: assets/text/message_data.h assets/text/message_data_staff.h

$(BUILD_DIR)/assets/text/%.o: assets/text/%.c
ifneq ($(COMPILER),gcc)
# Preprocess text with modern cpp for varargs macros
	$(CPP) -undef -D_LANGUAGE_C -D__sgi $(CPPFLAGS) $(INC) $< -o $(@:.o=.c)
	$(CC) -c $(CFLAGS) $(MIPS_VERSION) $(OPTFLAGS) -o $@ $(@:.o=.c)
else
	$(CC) -c $(CFLAGS) $(MIPS_VERSION) $(OPTFLAGS) -o $@ $<
endif
	$(OBJCOPY) -O binary --only-section .rodata $@ $@.bin

$(BUILD_DIR)/assets/%.o: assets/%.c
	$(CC) -c $(CFLAGS) $(MIPS_VERSION) $(OPTFLAGS) -o $@ $<
	$(OBJCOPY_CMD)

$(BUILD_DIR)/assets/%.o: $(EXTRACTED_DIR)/assets/%.c
	$(CC) -c $(CFLAGS) $(MIPS_VERSION) $(OPTFLAGS) -o $@ $<
	$(OBJCOPY_CMD)

# Assemble the ROM header with GNU AS always
$(BUILD_DIR)/src/makerom/rom_header.o: src/makerom/rom_header.s
ifeq ($(COMPILER),ido)
	$(CPP) $(CPPFLAGS) $(MIPS_BUILTIN_DEFS) $(INC) $< | $(AS) $(ASFLAGS) -o $@
else
	$(CCAS) -c $(CCASFLAGS) $(MIPS_VERSION) $(ASOPTFLAGS) -o $@ $<
endif
	$(OBJDUMP_CMD)

$(BUILD_DIR)/src/makerom/ipl3.o: $(EXTRACTED_DIR)/incbin/ipl3
	$(OBJCOPY) -I binary -O elf32-big --rename-section .data=.text $< $@

$(BUILD_DIR)/src/%.o: src/%.s
ifeq ($(COMPILER),ido)
	$(CCAS) -c $(CCASFLAGS) $(MIPS_VERSION) $(ASOPTFLAGS) -o $(@:.o=.tmp.o) $<
# IDO generates bad symbol tables, fix the symbol table with strip..
	$(STRIP) $(@:.o=.tmp.o) -N dummy-symbol-name
# but strip doesn't know about file-relative offsets in .mdebug and doesn't relocate them, ld will
# segfault unless .mdebug is removed
	$(OBJCOPY) --remove-section .mdebug $(@:.o=.tmp.o) $@
else
	$(CCAS) -c $(CCASFLAGS) $(MIPS_VERSION) $(ASOPTFLAGS) -o $@ $<
endif
	$(POSTPROCESS_OBJ) $@
	$(OBJDUMP_CMD)

# Incremental link to move z_message and z_game_over data into rodata
$(BUILD_DIR)/src/code/z_message_z_game_over.o: $(BUILD_DIR)/src/code/z_message.o $(BUILD_DIR)/src/code/z_game_over.o
	$(LD) -r -G 0 -T linker_scripts/data_with_rodata.ld -o $@ $^

$(BUILD_DIR)/dmadata_table_spec.h $(BUILD_DIR)/compress_ranges.txt: $(BUILD_DIR)/spec
	$(MKDMADATA) $< $(BUILD_DIR)/dmadata_table_spec.h $(BUILD_DIR)/compress_ranges.txt

# Dependencies for files that may include the dmadata header automatically generated from the spec file
$(BUILD_DIR)/src/boot/z_std_dma.o: $(BUILD_DIR)/dmadata_table_spec.h
$(BUILD_DIR)/src/dmadata/dmadata.o: $(BUILD_DIR)/dmadata_table_spec.h

# Dependencies for files including from include/tables/
# TODO remove when full header dependencies are used.
$(BUILD_DIR)/src/code/graph.o: include/tables/gamestate_table.h
$(BUILD_DIR)/src/code/object_table.o: include/tables/object_table.h
$(BUILD_DIR)/src/code/z_actor.o: include/tables/actor_table.h # so uses of ACTOR_ID_MAX update when the table length changes
$(BUILD_DIR)/src/code/z_actor_dlftbls.o: include/tables/actor_table.h
$(BUILD_DIR)/src/code/z_effect_soft_sprite_dlftbls.o: include/tables/effect_ss_table.h
$(BUILD_DIR)/src/code/z_game_dlftbls.o: include/tables/gamestate_table.h
$(BUILD_DIR)/src/code/z_scene_table.o: include/tables/scene_table.h include/tables/entrance_table.h
$(BUILD_DIR)/src/audio/general.o: $(SEQUENCE_TABLE) include/tables/sfx/*.h
$(BUILD_DIR)/src/audio/sfx_params.o: include/tables/sfx/*.h

$(BUILD_DIR)/src/%.o: src/%.c
ifneq ($(RUN_CC_CHECK),0)
	$(CC_CHECK) $<
endif
	$(PREPROCESS) $(CC) -c $(CFLAGS) $(MIPS_VERSION) $(OPTFLAGS) -o $@ $<
	$(POSTPROCESS_OBJ) $@
	$(OBJDUMP_CMD)

$(BUILD_DIR)/src/audio/session_init.o: src/audio/session_init.c $(BUILD_DIR)/assets/audio/soundfont_sizes.h $(BUILD_DIR)/assets/audio/sequence_sizes.h
ifneq ($(RUN_CC_CHECK),0)
	$(CC_CHECK) $<
endif
	$(CC) -c $(CFLAGS) $(MIPS_VERSION) $(OPTFLAGS) -o $(@:.o=.tmp) $<
	$(LD) -r -T linker_scripts/data_with_rodata.ld -o $@ $(@:.o=.tmp)
	@$(OBJDUMP) $(OBJDUMP_FLAGS) $@ > $(@:.o=.s)

ifeq ($(PLATFORM),IQUE)
ifneq ($(NON_MATCHING),1)
$(BUILD_DIR)/src/overlays/misc/ovl_kaleido_scope/ovl_kaleido_scope_reloc.o: POSTPROCESS_OBJ := $(PYTHON) tools/patch_ique_kaleido_reloc.py
endif
endif

$(BUILD_DIR)/src/overlays/%_reloc.o: $(BUILD_DIR)/spec
	$(FADO) $$(tools/reloc_prereq $< $(notdir $*)) -n $(notdir $*) -o $(@:.o=.s) -M $(@:.o=.d)
	$(POSTPROCESS_OBJ) $(@:.o=.s)
	$(AS) $(ASFLAGS) $(@:.o=.s) -o $@

$(BUILD_DIR)/assets/%.inc.c: assets/%.png
	$(ZAPD) btex -eh -tt $(subst .,,$(suffix $*)) -i $< -o $@

$(BUILD_DIR)/assets/%.inc.c: $(EXTRACTED_DIR)/assets/%.png
	$(ZAPD) btex -eh -tt $(subst .,,$(suffix $*)) -i $< -o $@

$(BUILD_DIR)/assets/%.bin.inc.c: assets/%.bin
	$(ZAPD) bblb -eh -i $< -o $@

$(BUILD_DIR)/assets/%.bin.inc.c: $(EXTRACTED_DIR)/assets/%.bin
	$(ZAPD) bblb -eh -i $< -o $@

$(BUILD_DIR)/assets/%.jpg.inc.c: assets/%.jpg
	$(ZAPD) bren -eh -i $< -o $@

$(BUILD_DIR)/assets/%.jpg.inc.c: $(EXTRACTED_DIR)/assets/%.jpg
	$(ZAPD) bren -eh -i $< -o $@

# Audio

AUDIO_BUILD_DEBUG ?= 0
ifeq ($(AUDIO_BUILD_DEBUG),1)
  # for debugging only, make soundfonts depend on samplebanks so they can be linked against
  $(BUILD_DIR)/assets/audio/soundfonts/%.o: $(SAMPLEBANK_O_FILES)
endif

# first build samples...

.PRECIOUS: $(BUILD_DIR)/assets/audio/samples/%.aifc
.PRECIOUS: $(BUILD_DIR)/assets/audio/samples/%.half.aifc

$(BUILD_DIR)/assets/audio/samples/%.half.aifc: assets/audio/samples/%.half.wav
	$(SAMPLECONV) vadpcm-half $< $@

$(BUILD_DIR)/assets/audio/samples/%.half.aifc: $(EXTRACTED_DIR)/assets/audio/samples/%.half.wav
	$(SAMPLECONV) vadpcm-half $< $@
ifeq ($(AUDIO_BUILD_DEBUG),1)
	@(cmp $(<D)/aifc/$(<F:.half.wav=.half.aifc) $@ && echo "$(<F) OK") || (mkdir -p NONMATCHINGS/$(<D) && cp $(<D)/aifc/$(<F:.half.wav=.half.aifc) NONMATCHINGS/$(<D)/$(<F:.half.wav=.half.aifc))
endif

$(BUILD_DIR)/assets/audio/samples/%.aifc: assets/audio/samples/%.wav
	$(SAMPLECONV) vadpcm $< $@

$(BUILD_DIR)/assets/audio/samples/%.aifc: $(EXTRACTED_DIR)/assets/audio/samples/%.wav
	$(SAMPLECONV) vadpcm $< $@
ifeq ($(AUDIO_BUILD_DEBUG),1)
	@(cmp $(<D)/aifc/$(<F:.wav=.aifc) $@ && echo "$(<F) OK") || (mkdir -p NONMATCHINGS/$(<D) && cp $(<D)/aifc/$(<F:.wav=.aifc) NONMATCHINGS/$(<D)/$(<F:.wav=.aifc))
endif

# then assemble the samplebanks...

.PRECIOUS: $(BUILD_DIR)/assets/audio/samplebanks/%.xml

$(BUILD_DIR)/assets/audio/samplebanks/%.xml: assets/audio/samplebanks/%.xml
	cat $< | $(BUILD_DIR_REPLACE) > $@

$(BUILD_DIR)/assets/audio/samplebanks/%.xml: $(EXTRACTED_DIR)/assets/audio/samplebanks/%.xml
	cat $< | $(BUILD_DIR_REPLACE) > $@

.PRECIOUS: $(BUILD_DIR)/assets/audio/samplebanks/%.s
$(BUILD_DIR)/assets/audio/samplebanks/%.s: $(BUILD_DIR)/assets/audio/samplebanks/%.xml | $(AIFC_FILES)
	$(SBC) $(SBCFLAGS) --makedepend $(@:.s=.d) $< $@

-include $(SAMPLEBANK_DEP_FILES)

$(BUILD_DIR)/assets/audio/samplebanks/%.o: $(BUILD_DIR)/assets/audio/samplebanks/%.s
	$(AS) $(ASFLAGS) $< -o $@
ifeq ($(AUDIO_BUILD_DEBUG),1)
	$(OBJCOPY) -O binary --only-section .rodata $@ $(@:.o=.bin)
	@cmp $(@:.o=.bin) $(patsubst $(BUILD_DIR)/assets/audio/samplebanks/%,$(EXTRACTED_DIR)/baserom_audiotest/audiotable_files/%,$(@:.o=.bin)) && echo "$(<F) OK"
endif

# also assemble the soundfonts and generate the associated headers...

$(BUILD_DIR)/assets/audio/soundfonts/%.xml: assets/audio/soundfonts/%.xml
	cat $< | $(BUILD_DIR_REPLACE) > $@

$(BUILD_DIR)/assets/audio/soundfonts/%.xml: $(EXTRACTED_DIR)/assets/audio/soundfonts/%.xml
	cat $< | $(BUILD_DIR_REPLACE) > $@

.PRECIOUS: $(BUILD_DIR)/assets/audio/soundfonts/%.c $(BUILD_DIR)/assets/audio/soundfonts/%.h $(BUILD_DIR)/assets/audio/soundfonts/%.name
$(BUILD_DIR)/assets/audio/soundfonts/%.c $(BUILD_DIR)/assets/audio/soundfonts/%.h $(BUILD_DIR)/assets/audio/soundfonts/%.name: $(BUILD_DIR)/assets/audio/soundfonts/%.xml | $(SAMPLEBANK_BUILD_XMLS) $(AIFC_FILES)
# This rule can be triggered for either the .c or .h file, so $@ may refer to either the .c or .h file. A simple
# substitution $(@:.c=.h) will fail ~50% of the time with -j. Instead, don't assume anything about the suffix of $@.
	$(SFC) $(SFCFLAGS) --makedepend $(basename $@).d $< $(basename $@).c $(basename $@).h $(basename $@).name

-include $(SOUNDFONT_DEP_FILES)

$(BUILD_DIR)/assets/audio/soundfonts/%.o: $(BUILD_DIR)/assets/audio/soundfonts/%.c $(BUILD_DIR)/assets/audio/soundfonts/%.name
# compile c to unlinked object
	$(CC) -c $(CFLAGS) $(MIPS_VERSION) $(OPTFLAGS) -I include/audio -o $(@:.o=.tmp) $<
# partial link
	$(LD) -r -T linker_scripts/soundfont.ld $(@:.o=.tmp) -o $(@:.o=.tmp2)
# patch defined symbols to be ABS symbols so that they remain file-relative offsets forever
	$(SFPATCH) $(@:.o=.tmp2) $(@:.o=.tmp2)
# write start and size symbols afterwards, filename != symbolic name so source symbolic name from the .name file written by sfc
# also write a .note.name section containing the symbolic name of the soundfont
	$(OBJCOPY) --add-symbol $$(cat $(<:.c=.name) | tr -d '\0')_Start=.rodata:0,global --redefine-sym __LEN__=$$(cat $(<:.c=.name) | tr -d '\0')_Size --add-section .note.name=$(<:.c=.name) $(@:.o=.tmp2) $@
# cleanup temp files
	@$(RM) $(@:.o=.tmp) $(@:.o=.tmp2)
ifeq ($(AUDIO_BUILD_DEBUG),1)
	$(LD) $(foreach f,$(SAMPLEBANK_O_FILES),-R $f) -T linker_scripts/soundfont.ld $@ -o $(@:.o=.elf)
	$(OBJCOPY) -O binary -j.rodata $(@:.o=.elf) $(@:.o=.bin)
	@(cmp $(@:.o=.bin) $(patsubst $(BUILD_DIR)/assets/audio/soundfonts/%,$(EXTRACTED_DIR)/baserom_audiotest/audiobank_files/%,$(@:.o=.bin)) && echo "$(<F) OK" || (mkdir -p NONMATCHINGS/soundfonts && cp $(@:.o=.bin) NONMATCHINGS/soundfonts/$(@F:.o=.bin)))
endif

# then assemble the sequences...

$(BUILD_DIR)/assets/audio/sequences/%.o: assets/audio/sequences/%.seq include/audio/aseq.h $(SEQUENCE_TABLE) | $(SOUNDFONT_HEADERS)
	$(SEQ_CPP) $(SEQ_CPPFLAGS) $< -o $(@:.o=.s) -MMD -MT $@
	$(AS) $(ASFLAGS) -I $(BUILD_DIR)/assets/audio/soundfonts -I include/audio -I $(dir $<) $(@:.o=.s) -o $@

$(BUILD_DIR)/assets/audio/sequences/%.o: $(EXTRACTED_DIR)/assets/audio/sequences/%.seq include/audio/aseq.h $(SEQUENCE_TABLE) | $(SOUNDFONT_HEADERS)
	$(SEQ_CPP) $(SEQ_CPPFLAGS) $< -o $(@:.o=.s) -MMD -MT $@
	$(AS) $(ASFLAGS) -I $(BUILD_DIR)/assets/audio/soundfonts -I include/audio -I $(dir $<) $(@:.o=.s) -o $@
ifeq ($(AUDIO_BUILD_DEBUG),1)
	$(OBJCOPY) -O binary -j.data $@ $(@:.o=.aseq)
	@(cmp $(@:.o=.aseq) $(patsubst $(BUILD_DIR)/assets/audio/sequences/%,$(EXTRACTED_DIR)/baserom_audiotest/audioseq_files/%,$(@:.o=.aseq)) && echo "$(<F) OK" || (mkdir -p NONMATCHINGS/sequences && cp $(@:.o=.aseq) NONMATCHINGS/sequences/$(@F:.o=.aseq)))
endif

-include $(SEQUENCE_DEP_FILES)

# put together the tables

$(BUILD_DIR)/assets/audio/samplebank_table.h: $(SAMPLEBANK_BUILD_XMLS)
	$(ATBLGEN) --banks $@ $^

$(BUILD_DIR)/assets/audio/soundfont_table.h: $(SOUNDFONT_BUILD_XMLS) $(SAMPLEBANK_BUILD_XMLS)
	$(ATBLGEN) --fonts $@ $(SOUNDFONT_BUILD_XMLS)

SEQ_ORDER_DEFS := -DDEFINE_SEQUENCE_PTR\(name,seqId,_2,_3,_4\)=*\(name,seqId\) \
                  -DDEFINE_SEQUENCE\(name,seqId,_2,_3,_4\)=\(name,seqId\)
$(BUILD_DIR)/assets/audio/sequence_order.in: $(SEQUENCE_TABLE)
	$(CPP) $(CPPFLAGS) $< $(SEQ_ORDER_DEFS) -o $@

$(BUILD_DIR)/assets/audio/sequence_font_table.s: $(BUILD_DIR)/assets/audio/sequence_order.in $(SEQUENCE_O_FILES)
	$(ATBLGEN) --sequences $@ $^

# build the tables into objects, move data -> rodata

$(BUILD_DIR)/src/audio/tables/samplebank_table.o: src/audio/tables/samplebank_table.c $(BUILD_DIR)/assets/audio/samplebank_table.h
$(BUILD_DIR)/src/audio/tables/soundfont_table.o: src/audio/tables/soundfont_table.c $(BUILD_DIR)/assets/audio/soundfont_table.h $(SOUNDFONT_HEADERS)
$(BUILD_DIR)/src/audio/tables/sequence_table.o: src/audio/tables/sequence_table.c $(SEQUENCE_TABLE)

$(BUILD_DIR)/src/audio/tables/sequence_table.o: CFLAGS += -I include/tables

$(BUILD_DIR)/src/audio/tables/%.o: src/audio/tables/%.c
ifneq ($(RUN_CC_CHECK),0)
	$(CC_CHECK) $<
endif
	$(CC) -c $(CFLAGS) $(MIPS_VERSION) $(OPTFLAGS) -o $(@:.o=.tmp) $<
	$(LD) -r -T linker_scripts/data_with_rodata.ld $(@:.o=.tmp) -o $@
	@$(RM) $(@:.o=.tmp)

$(BUILD_DIR)/assets/audio/sequence_font_table.o: $(BUILD_DIR)/assets/audio/sequence_font_table.s
	$(AS) $(ASFLAGS) $< -o $@

# make headers with file sizes and amounts

$(BUILD_DIR)/assets/audio/soundfont_sizes.h: $(SOUNDFONT_O_FILES)
	$(AFILE_SIZES) $@ NUM_SOUNDFONTS SOUNDFONT_SIZES .rodata $^

$(BUILD_DIR)/assets/audio/sequence_sizes.h: $(SEQUENCE_O_FILES)
	$(AFILE_SIZES) $@ NUM_SEQUENCES SEQUENCE_SIZES .data $^

# Extra audiobank padding that doesn't belong to any soundfont file
$(BUILD_DIR)/assets/audio/audiobank_padding.o:
	echo ".section .rodata; .fill 0x20" | $(AS) $(ASFLAGS) -o $@

-include $(DEP_FILES)

# Print target for debugging
print-% : ; $(info $* is a $(flavor $*) variable set to [$($*)]) @true
