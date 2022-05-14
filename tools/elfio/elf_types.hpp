/*
Copyright (C) 2001-present by Serge Lamikhov-Center

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
*/

#ifndef ELFTYPES_H
#define ELFTYPES_H

#ifdef __cplusplus
namespace ELFIO {
#endif

using Elf_Half   = uint16_t;
using Elf_Word   = uint32_t;
using Elf_Sword  = int32_t;
using Elf_Xword  = uint64_t;
using Elf_Sxword = int64_t;

using Elf32_Addr = uint32_t;
using Elf32_Off  = uint32_t;
using Elf64_Addr = uint64_t;
using Elf64_Off  = uint64_t;

using Elf32_Half  = Elf_Half;
using Elf64_Half  = Elf_Half;
using Elf32_Word  = Elf_Word;
using Elf64_Word  = Elf_Word;
using Elf32_Sword = Elf_Sword;
using Elf64_Sword = Elf_Sword;

///////////////////////
// ELF Header Constants

// File type
constexpr Elf_Half ET_NONE   = 0;
constexpr Elf_Half ET_REL    = 1;
constexpr Elf_Half ET_EXEC   = 2;
constexpr Elf_Half ET_DYN    = 3;
constexpr Elf_Half ET_CORE   = 4;
constexpr Elf_Half ET_LOOS   = 0xFE00;
constexpr Elf_Half ET_HIOS   = 0xFEFF;
constexpr Elf_Half ET_LOPROC = 0xFF00;
constexpr Elf_Half ET_HIPROC = 0xFFFF;

// clang-format off
// Machine number
constexpr Elf_Half EM_NONE            = 0 ; // No machine
constexpr Elf_Half EM_M32             = 1 ; // AT&T WE 32100
constexpr Elf_Half EM_SPARC           = 2 ; // SUN SPARC
constexpr Elf_Half EM_386             = 3 ; // Intel 80386
constexpr Elf_Half EM_68K             = 4 ; // Motorola m68k family
constexpr Elf_Half EM_88K             = 5 ; // Motorola m88k family
constexpr Elf_Half EM_486             = 6 ; // Intel 80486// Reserved for future use
constexpr Elf_Half EM_860             = 7 ; // Intel 80860
constexpr Elf_Half EM_MIPS            = 8 ; // MIPS R3000 (officially, big-endian only)
constexpr Elf_Half EM_S370            = 9 ; // IBM System/370
constexpr Elf_Half EM_MIPS_RS3_LE     = 10; // MIPS R3000 little-endian (Deprecated)
constexpr Elf_Half EM_res011          = 11; // Reserved
constexpr Elf_Half EM_res012          = 12; // Reserved
constexpr Elf_Half EM_res013          = 13; // Reserved
constexpr Elf_Half EM_res014          = 14; // Reserved
constexpr Elf_Half EM_PARISC          = 15; // HPPA
constexpr Elf_Half EM_res016          = 16; // Reserved
constexpr Elf_Half EM_VPP550          = 17; // Fujitsu VPP500
constexpr Elf_Half EM_SPARC32PLUS     = 18; // Sun's "v8plus"
constexpr Elf_Half EM_960             = 19; // Intel 80960
constexpr Elf_Half EM_PPC             = 20; // PowerPC
constexpr Elf_Half EM_PPC64           = 21; // 64-bit PowerPC
constexpr Elf_Half EM_S390            = 22; // IBM S/390
constexpr Elf_Half EM_SPU             = 23; // Sony/Toshiba/IBM SPU
constexpr Elf_Half EM_res024          = 24; // Reserved
constexpr Elf_Half EM_res025          = 25; // Reserved
constexpr Elf_Half EM_res026          = 26; // Reserved
constexpr Elf_Half EM_res027          = 27; // Reserved
constexpr Elf_Half EM_res028          = 28; // Reserved
constexpr Elf_Half EM_res029          = 29; // Reserved
constexpr Elf_Half EM_res030          = 30; // Reserved
constexpr Elf_Half EM_res031          = 31; // Reserved
constexpr Elf_Half EM_res032          = 32; // Reserved
constexpr Elf_Half EM_res033          = 33; // Reserved
constexpr Elf_Half EM_res034          = 34; // Reserved
constexpr Elf_Half EM_res035          = 35; // Reserved
constexpr Elf_Half EM_V800            = 36; // NEC V800 series
constexpr Elf_Half EM_FR20            = 37; // Fujitsu FR20
constexpr Elf_Half EM_RH32            = 38; // TRW RH32
constexpr Elf_Half EM_MCORE           = 39; // Motorola M*Core // May also be taken by Fujitsu MMA
constexpr Elf_Half EM_RCE             = 39; // Old name for MCore
constexpr Elf_Half EM_ARM             = 40; // ARM
constexpr Elf_Half EM_OLD_ALPHA       = 41; // Digital Alpha
constexpr Elf_Half EM_SH              = 42; // Renesas (formerly Hitachi) / SuperH SH
constexpr Elf_Half EM_SPARCV9         = 43; // SPARC v9 64-bit
constexpr Elf_Half EM_TRICORE         = 44; // Siemens Tricore embedded processor
constexpr Elf_Half EM_ARC             = 45; // ARC Cores
constexpr Elf_Half EM_H8_300          = 46; // Renesas (formerly Hitachi) H8/300
constexpr Elf_Half EM_H8_300H         = 47; // Renesas (formerly Hitachi) H8/300H
constexpr Elf_Half EM_H8S             = 48; // Renesas (formerly Hitachi) H8S
constexpr Elf_Half EM_H8_500          = 49; // Renesas (formerly Hitachi) H8/500
constexpr Elf_Half EM_IA_64           = 50; // Intel IA-64 Processor
constexpr Elf_Half EM_MIPS_X          = 51; // Stanford MIPS-X
constexpr Elf_Half EM_COLDFIRE        = 52; // Motorola Coldfire
constexpr Elf_Half EM_68HC12          = 53; // Motorola M68HC12
constexpr Elf_Half EM_MMA             = 54; // Fujitsu Multimedia Accelerator
constexpr Elf_Half EM_PCP             = 55; // Siemens PCP
constexpr Elf_Half EM_NCPU            = 56; // Sony nCPU embedded RISC processor
constexpr Elf_Half EM_NDR1            = 57; // Denso NDR1 microprocesspr
constexpr Elf_Half EM_STARCORE        = 58; // Motorola Star*Core processor
constexpr Elf_Half EM_ME16            = 59; // Toyota ME16 processor
constexpr Elf_Half EM_ST100           = 60; // STMicroelectronics ST100 processor
constexpr Elf_Half EM_TINYJ           = 61; // Advanced Logic Corp. TinyJ embedded processor
constexpr Elf_Half EM_X86_64          = 62; // Advanced Micro Devices X86-64 processor
constexpr Elf_Half EM_PDSP            = 63; // Sony DSP Processor
constexpr Elf_Half EM_PDP10           = 64; // Digital Equipment Corp. PDP-10
constexpr Elf_Half EM_PDP11           = 65; // Digital Equipment Corp. PDP-11
constexpr Elf_Half EM_FX66            = 66; // Siemens FX66 microcontroller
constexpr Elf_Half EM_ST9PLUS         = 67; // STMicroelectronics ST9+ 8/16 bit microcontroller
constexpr Elf_Half EM_ST7             = 68 ; // STMicroelectronics ST7 8-bit microcontroller
constexpr Elf_Half EM_68HC16          = 69 ; // Motorola MC68HC16 Microcontroller
constexpr Elf_Half EM_68HC11          = 70 ; // Motorola MC68HC11 Microcontroller
constexpr Elf_Half EM_68HC08          = 71 ; // Motorola MC68HC08 Microcontroller
constexpr Elf_Half EM_68HC05          = 72 ; // Motorola MC68HC05 Microcontroller
constexpr Elf_Half EM_SVX             = 73 ; // Silicon Graphics SVx
constexpr Elf_Half EM_ST19            = 74 ; // STMicroelectronics ST19 8-bit cpu
constexpr Elf_Half EM_VAX             = 75 ; // Digital VAX
constexpr Elf_Half EM_CRIS            = 76 ; // Axis Communications 32-bit embedded processor
constexpr Elf_Half EM_JAVELIN         = 77 ; // Infineon Technologies 32-bit embedded cpu
constexpr Elf_Half EM_FIREPATH        = 78 ; // Element 14 64-bit DSP processor
constexpr Elf_Half EM_ZSP             = 79 ; // LSI Logic's 16-bit DSP processor
constexpr Elf_Half EM_MMIX            = 80 ; // Donald Knuth's educational 64-bit processor
constexpr Elf_Half EM_HUANY           = 81 ; // Harvard's machine-independent format
constexpr Elf_Half EM_PRISM           = 82 ; // SiTera Prism
constexpr Elf_Half EM_AVR             = 83 ; // Atmel AVR 8-bit microcontroller
constexpr Elf_Half EM_FR30            = 84 ; // Fujitsu FR30
constexpr Elf_Half EM_D10V            = 85 ; // Mitsubishi D10V
constexpr Elf_Half EM_D30V            = 86 ; // Mitsubishi D30V
constexpr Elf_Half EM_V850            = 87 ; // NEC v850
constexpr Elf_Half EM_M32R            = 88 ; // Renesas M32R (formerly Mitsubishi M32R)
constexpr Elf_Half EM_MN10300         = 89 ; // Matsushita MN10300
constexpr Elf_Half EM_MN10200         = 90 ; // Matsushita MN10200
constexpr Elf_Half EM_PJ              = 91 ; // picoJava
constexpr Elf_Half EM_OPENRISC        = 92 ; // OpenRISC 32-bit embedded processor
constexpr Elf_Half EM_ARC_A5          = 93 ; // ARC Cores Tangent-A5
constexpr Elf_Half EM_XTENSA          = 94 ; // Tensilica Xtensa Architecture
constexpr Elf_Half EM_VIDEOCORE       = 95 ; // Alphamosaic VideoCore processor
constexpr Elf_Half EM_TMM_GPP         = 96 ; // Thompson Multimedia General Purpose Processor
constexpr Elf_Half EM_NS32K           = 97 ; // National Semiconductor 32000 series
constexpr Elf_Half EM_TPC             = 98 ; // Tenor Network TPC processor
constexpr Elf_Half EM_SNP1K           = 99 ; // Trebia SNP 1000 processor
constexpr Elf_Half EM_ST200           = 100; // STMicroelectronics ST200 microcontroller
constexpr Elf_Half EM_IP2K            = 101; // Ubicom IP2022 micro controller
constexpr Elf_Half EM_MAX             = 102; // MAX Processor
constexpr Elf_Half EM_CR              = 103; // National Semiconductor CompactRISC
constexpr Elf_Half EM_F2MC16          = 104; // Fujitsu F2MC16
constexpr Elf_Half EM_MSP430          = 105; // TI msp430 micro controller
constexpr Elf_Half EM_BLACKFIN        = 106; // ADI Blackfin
constexpr Elf_Half EM_SE_C33          = 107; // S1C33 Family of Seiko Epson processors
constexpr Elf_Half EM_SEP             = 108; // Sharp embedded microprocessor
constexpr Elf_Half EM_ARCA            = 109; // Arca RISC Microprocessor
constexpr Elf_Half EM_UNICORE         = 110; // Microprocessor series from PKU-Unity Ltd.
constexpr Elf_Half EM_EXCESS          = 111; // eXcess: 16/32/64-bit configurable embedded CPU
constexpr Elf_Half EM_DXP             = 112; // Icera Semiconductor Inc. Deep Execution Processor
constexpr Elf_Half EM_ALTERA_NIOS2    = 113; // Altera Nios II soft-core processor
constexpr Elf_Half EM_CRX             = 114; // National Semiconductor CRX
constexpr Elf_Half EM_XGATE           = 115; // Motorola XGATE embedded processor
constexpr Elf_Half EM_C166            = 116; // Infineon C16x/XC16x processor
constexpr Elf_Half EM_M16C            = 117; // Renesas M16C series microprocessors
constexpr Elf_Half EM_DSPIC30F        = 118; // Microchip Technology dsPIC30F DSignal Controller
constexpr Elf_Half EM_CE              = 119; // Freescale Communication Engine RISC core
constexpr Elf_Half EM_M32C            = 120; // Renesas M32C series microprocessors
constexpr Elf_Half EM_res121          = 121; // Reserved
constexpr Elf_Half EM_res122          = 122; // Reserved
constexpr Elf_Half EM_res123          = 123; // Reserved
constexpr Elf_Half EM_res124          = 124; // Reserved
constexpr Elf_Half EM_res125          = 125; // Reserved
constexpr Elf_Half EM_res126          = 126; // Reserved
constexpr Elf_Half EM_res127          = 127; // Reserved
constexpr Elf_Half EM_res128          = 128; // Reserved
constexpr Elf_Half EM_res129          = 129; // Reserved
constexpr Elf_Half EM_res130          = 130; // Reserved
constexpr Elf_Half EM_TSK3000         = 131; // Altium TSK3000 core
constexpr Elf_Half EM_RS08            = 132; // Freescale RS08 embedded processor
constexpr Elf_Half EM_res133          = 133; // Reserved
constexpr Elf_Half EM_ECOG2           = 134; // Cyan Technology eCOG2 microprocessor
constexpr Elf_Half EM_SCORE           = 135; // Sunplus Score
constexpr Elf_Half EM_SCORE7          = 135; // Sunplus S+core7 RISC processor
constexpr Elf_Half EM_DSP24           = 136; // New Japan Radio (NJR) 24-bit DSP Processor
constexpr Elf_Half EM_VIDEOCORE3      = 137; // Broadcom VideoCore III processor
constexpr Elf_Half EM_LATTICEMICO32   = 138; // RISC processor for Lattice FPGA architecture
constexpr Elf_Half EM_SE_C17          = 139; // Seiko Epson C17 family
constexpr Elf_Half EM_TI_C6000        = 140; // Texas Instruments TMS320C6000 DSP family
constexpr Elf_Half EM_TI_C2000        = 141; // Texas Instruments TMS320C2000 DSP family
constexpr Elf_Half EM_TI_C5500        = 142; // Texas Instruments TMS320C55x DSP family
constexpr Elf_Half EM_res143          = 143; // Reserved
constexpr Elf_Half EM_res144          = 144; // Reserved
constexpr Elf_Half EM_res145          = 145; // Reserved
constexpr Elf_Half EM_res146          = 146; // Reserved
constexpr Elf_Half EM_res147          = 147; // Reserved
constexpr Elf_Half EM_res148          = 148; // Reserved
constexpr Elf_Half EM_res149          = 149; // Reserved
constexpr Elf_Half EM_res150          = 150; // Reserved
constexpr Elf_Half EM_res151          = 151; // Reserved
constexpr Elf_Half EM_res152          = 152; // Reserved
constexpr Elf_Half EM_res153          = 153; // Reserved
constexpr Elf_Half EM_res154          = 154; // Reserved
constexpr Elf_Half EM_res155          = 155; // Reserved
constexpr Elf_Half EM_res156          = 156; // Reserved
constexpr Elf_Half EM_res157          = 157; // Reserved
constexpr Elf_Half EM_res158          = 158; // Reserved
constexpr Elf_Half EM_res159          = 159; // Reserved
constexpr Elf_Half EM_MMDSP_PLUS      = 160; // STMicroelectronics 64bit VLIW Data Signal Processor
constexpr Elf_Half EM_CYPRESS_M8C     = 161; // Cypress M8C microprocessor
constexpr Elf_Half EM_R32C            = 162; // Renesas R32C series microprocessors
constexpr Elf_Half EM_TRIMEDIA        = 163; // NXP Semiconductors TriMedia architecture family
constexpr Elf_Half EM_QDSP6           = 164; // QUALCOMM DSP6 Processor
constexpr Elf_Half EM_8051            = 165; // Intel 8051 and variants
constexpr Elf_Half EM_STXP7X          = 166; // STMicroelectronics STxP7x family
constexpr Elf_Half EM_NDS32           = 167; // Andes Technology embedded RISC processor family
constexpr Elf_Half EM_ECOG1           = 168; // Cyan Technology eCOG1X family
constexpr Elf_Half EM_ECOG1X          = 168; // Cyan Technology eCOG1X family
constexpr Elf_Half EM_MAXQ30          = 169; // Dallas Semiconductor MAXQ30 Core Micro-controllers
constexpr Elf_Half EM_XIMO16          = 170; // New Japan Radio (NJR) 16-bit DSP Processor
constexpr Elf_Half EM_MANIK           = 171; // M2000 Reconfigurable RISC Microprocessor
constexpr Elf_Half EM_CRAYNV2         = 172; // Cray Inc. NV2 vector architecture
constexpr Elf_Half EM_RX              = 173; // Renesas RX family
constexpr Elf_Half EM_METAG           = 174; // Imagination Technologies META processor architecture
constexpr Elf_Half EM_MCST_ELBRUS     = 175; // MCST Elbrus general purpose hardware architecture
constexpr Elf_Half EM_ECOG16          = 176; // Cyan Technology eCOG16 family
constexpr Elf_Half EM_CR16            = 177; // National Semiconductor CompactRISC 16-bit processor
constexpr Elf_Half EM_ETPU            = 178; // Freescale Extended Time Processing Unit
constexpr Elf_Half EM_SLE9X           = 179; // Infineon Technologies SLE9X core
constexpr Elf_Half EM_L1OM            = 180; // Intel L1OM
constexpr Elf_Half EM_INTEL181        = 181; // Reserved by Intel
constexpr Elf_Half EM_INTEL182        = 182; // Reserved by Intel
constexpr Elf_Half EM_AARCH64         = 183; // ARM AArch64
constexpr Elf_Half EM_res184          = 184; // Reserved by ARM
constexpr Elf_Half EM_AVR32           = 185; // Atmel Corporation 32-bit microprocessor family
constexpr Elf_Half EM_STM8            = 186; // STMicroeletronics STM8 8-bit microcontroller
constexpr Elf_Half EM_TILE64          = 187; // Tilera TILE64 multicore architecture family
constexpr Elf_Half EM_TILEPRO         = 188; // Tilera TILEPro multicore architecture family
constexpr Elf_Half EM_MICROBLAZE      = 189; // Xilinx MicroBlaze 32-bit RISC soft processor core
constexpr Elf_Half EM_CUDA            = 190; // NVIDIA CUDA architecture
constexpr Elf_Half EM_TILEGX          = 191; // Tilera TILE-Gx multicore architecture family
constexpr Elf_Half EM_CLOUDSHIELD     = 192; // CloudShield architecture family
constexpr Elf_Half EM_COREA_1ST       = 193; // KIPO-KAIST Core-A 1st generation processor family
constexpr Elf_Half EM_COREA_2ND       = 194; // KIPO-KAIST Core-A 2nd generation processor family
constexpr Elf_Half EM_ARC_COMPACT2    = 195; // Synopsys ARCompact V2
constexpr Elf_Half EM_OPEN8           = 196; // Open8 8-bit RISC soft processor core
constexpr Elf_Half EM_RL78            = 197; // Renesas RL78 family
constexpr Elf_Half EM_VIDEOCORE5      = 198; // Broadcom VideoCore V processor
constexpr Elf_Half EM_78KOR           = 199; // Renesas 78KOR family
constexpr Elf_Half EM_56800EX         = 200; // Freescale 56800EX Digital Signal Controller (DSC)
constexpr Elf_Half EM_BA1             = 201; // Beyond BA1 CPU architecture
constexpr Elf_Half EM_BA2             = 202; // Beyond BA2 CPU architecture
constexpr Elf_Half EM_XCORE           = 203; // XMOS xCORE processor family
constexpr Elf_Half EM_MCHP_PIC        = 204; // Microchip 8-bit PIC(r) family
constexpr Elf_Half EM_INTEL205        = 205; // Reserved by Intel
constexpr Elf_Half EM_INTEL206        = 206; // Reserved by Intel
constexpr Elf_Half EM_INTEL207        = 207; // Reserved by Intel
constexpr Elf_Half EM_INTEL208        = 208; // Reserved by Intel
constexpr Elf_Half EM_INTEL209        = 209; // Reserved by Intel
constexpr Elf_Half EM_KM32            = 210; // KM211 KM32 32-bit processor
constexpr Elf_Half EM_KMX32           = 211; // KM211 KMX32 32-bit processor
constexpr Elf_Half EM_KMX16           = 212; // KM211 KMX16 16-bit processor
constexpr Elf_Half EM_KMX8            = 213; // KM211 KMX8 8-bit processor
constexpr Elf_Half EM_KVARC           = 214; // KM211 KVARC processor
constexpr Elf_Half EM_CDP             = 215; // Paneve CDP architecture family
constexpr Elf_Half EM_COGE            = 216; // Cognitive Smart Memory Processor
constexpr Elf_Half EM_COOL            = 217; // iCelero CoolEngine
constexpr Elf_Half EM_NORC            = 218; // Nanoradio Optimized RISC
constexpr Elf_Half EM_CSR_KALIMBA     = 219; // CSR Kalimba architecture family
constexpr Elf_Half EM_Z80             = 220; // Zilog Z80
constexpr Elf_Half EM_VISIUM          = 221; // Controls and Data Services VISIUMcore processor
constexpr Elf_Half EM_FT32            = 222; // FTDI Chip FT32 high performance 32-bit RISC architecture
constexpr Elf_Half EM_MOXIE           = 223; // Moxie processor family
constexpr Elf_Half EM_AMDGPU          = 224; // AMD GPU architecture
constexpr Elf_Half EM_RISCV           = 243; // RISC-V
constexpr Elf_Half EM_LANAI           = 244; // Lanai processor
constexpr Elf_Half EM_CEVA            = 245; // CEVA Processor Architecture Family
constexpr Elf_Half EM_CEVA_X2         = 246; // CEVA X2 Processor Family
constexpr Elf_Half EM_BPF             = 247; // Linux BPF – in-kernel virtual machine
constexpr Elf_Half EM_GRAPHCORE_IPU   = 248; // Graphcore Intelligent Processing Unit
constexpr Elf_Half EM_IMG1            = 249; // Imagination Technologies
constexpr Elf_Half EM_NFP             = 250; // Netronome Flow Processor (P)
constexpr Elf_Half EM_CSKY            = 252; // C-SKY processor family
constexpr Elf_Half EM_ARC_COMPACT3_64 = 253; // "Synopsys ARCv2.3 64-bit";
constexpr Elf_Half EM_MCS6502         = 254; // "MOS Technology MCS 6502 processor";
constexpr Elf_Half EM_ARC_COMPACT3    = 255; // "Synopsys ARCv2.3 32-bit";
constexpr Elf_Half EM_KVX             = 256; // "Kalray VLIW core of the MPPA processor family";
constexpr Elf_Half EM_65816           = 257; // "WDC 65816/65C816";
constexpr Elf_Half EM_LOONGARCH       = 258; // "Loongson Loongarch";
constexpr Elf_Half EM_KF32            = 259; // "ChipON KungFu32";

constexpr Elf_Half EM_MT                = 0x2530; // "Morpho Techologies MT processor";
constexpr Elf_Half EM_ALPHA             = 0x9026; // "Alpha";
constexpr Elf_Half EM_WEBASSEMBLY       = 0x4157; // "Web Assembly";
constexpr Elf_Half EM_DLX               = 0x5aa5; // "OpenDLX";
constexpr Elf_Half EM_XSTORMY16         = 0xad45; // "Sanyo XStormy16 CPU core";
constexpr Elf_Half EM_IQ2000            = 0xFEBA; // "Vitesse IQ2000";
constexpr Elf_Half EM_M32C_OLD          = 0xFEB;
constexpr Elf_Half EM_NIOS32            = 0xFEBB; // "Altera Nios";
constexpr Elf_Half EM_CYGNUS_MEP        = 0xF00D; // "Toshiba MeP Media Engine";
constexpr Elf_Half EM_ADAPTEVA_EPIPHANY = 0x1223; // "Adapteva EPIPHANY";
constexpr Elf_Half EM_CYGNUS_FRV        = 0x5441; // "Fujitsu FR-V";
constexpr Elf_Half EM_S12Z              = 0x4DEF; // "Freescale S12Z";
// clang-format on

// File version
constexpr unsigned char EV_NONE    = 0;
constexpr unsigned char EV_CURRENT = 1;

// Identification index
constexpr unsigned char EI_MAG0       = 0;
constexpr unsigned char EI_MAG1       = 1;
constexpr unsigned char EI_MAG2       = 2;
constexpr unsigned char EI_MAG3       = 3;
constexpr unsigned char EI_CLASS      = 4;
constexpr unsigned char EI_DATA       = 5;
constexpr unsigned char EI_VERSION    = 6;
constexpr unsigned char EI_OSABI      = 7;
constexpr unsigned char EI_ABIVERSION = 8;
constexpr unsigned char EI_PAD        = 9;
constexpr unsigned char EI_NIDENT     = 16;

// Magic number
constexpr unsigned char ELFMAG0 = 0x7F;
constexpr unsigned char ELFMAG1 = 'E';
constexpr unsigned char ELFMAG2 = 'L';
constexpr unsigned char ELFMAG3 = 'F';

// File class
constexpr unsigned char ELFCLASSNONE = 0;
constexpr unsigned char ELFCLASS32   = 1;
constexpr unsigned char ELFCLASS64   = 2;

// Encoding
constexpr unsigned char ELFDATANONE = 0;
constexpr unsigned char ELFDATA2LSB = 1;
constexpr unsigned char ELFDATA2MSB = 2;

// clang-format off
// OS extensions
constexpr unsigned char ELFOSABI_NONE    = 0;  // No extensions or unspecified
constexpr unsigned char ELFOSABI_HPUX    = 1;  // Hewlett-Packard HP-UX
constexpr unsigned char ELFOSABI_NETBSD  = 2;  // NetBSD
constexpr unsigned char ELFOSABI_LINUX   = 3;  // Linux
constexpr unsigned char ELFOSABI_SOLARIS = 6;  // Sun Solaris
constexpr unsigned char ELFOSABI_AIX     = 7;  // AIX
constexpr unsigned char ELFOSABI_IRIX    = 8;  // IRIX
constexpr unsigned char ELFOSABI_FREEBSD = 9;  // FreeBSD
constexpr unsigned char ELFOSABI_TRU64   = 10; // Compaq TRU64 UNIX
constexpr unsigned char ELFOSABI_MODESTO = 11; // Novell Modesto
constexpr unsigned char ELFOSABI_OPENBSD = 12; // Open BSD
constexpr unsigned char ELFOSABI_OPENVMS = 13; // Open VMS
constexpr unsigned char ELFOSABI_NSK     = 14; // Hewlett-Packard Non-Stop Kernel
constexpr unsigned char ELFOSABI_AROS    = 15; // Amiga Research OS
constexpr unsigned char ELFOSABI_FENIXOS = 16; // The FenixOS highly scalable multi-core OS

// 64-255 Architecture-specific value range
// AMDGPU OS for HSA compatible compute kernels
constexpr unsigned char ELFOSABI_AMDGPU_HSA = 64;
// AMDGPU OS for AMD PAL compatible graphics
// shaders and compute kernels
constexpr unsigned char ELFOSABI_AMDGPU_PAL = 65;
// AMDGPU OS for Mesa3D compatible graphics
// shaders and compute kernels
constexpr unsigned char ELFOSABI_AMDGPU_MESA3D = 66;
// clang-format on

constexpr unsigned char ELFABIVERSION_AMDGPU_HSA_V2 = 0;
constexpr unsigned char ELFABIVERSION_AMDGPU_HSA_V3 = 1;
constexpr unsigned char ELFABIVERSION_AMDGPU_HSA_V4 = 2;

// AMDGPU specific e_flags
constexpr Elf_Word EF_AMDGPU_MACH = 0x0ff; // AMDGPU processor selection mask.
// Indicates if the XNACK target feature is
// enabled for all code contained in the ELF.
constexpr Elf_Word EF_AMDGPU_XNACK = 0x100;

constexpr Elf_Word EF_AMDGPU_FEATURE_XNACK_V2               = 0x01;
constexpr Elf_Word EF_AMDGPU_FEATURE_TRAP_HANDLER_V2        = 0x02;
constexpr Elf_Word EF_AMDGPU_FEATURE_XNACK_V3               = 0x100;
constexpr Elf_Word EF_AMDGPU_FEATURE_SRAMECC_V3             = 0x200;
constexpr Elf_Word EF_AMDGPU_FEATURE_XNACK_V4               = 0x300;
constexpr Elf_Word EF_AMDGPU_FEATURE_XNACK_UNSUPPORTED_V4   = 0x000;
constexpr Elf_Word EF_AMDGPU_FEATURE_XNACK_ANY_V4           = 0x100;
constexpr Elf_Word EF_AMDGPU_FEATURE_XNACK_OFF_V4           = 0x200;
constexpr Elf_Word EF_AMDGPU_FEATURE_XNACK_ON_V4            = 0x300;
constexpr Elf_Word EF_AMDGPU_FEATURE_SRAMECC_V4             = 0xc00;
constexpr Elf_Word EF_AMDGPU_FEATURE_SRAMECC_UNSUPPORTED_V4 = 0x000;
constexpr Elf_Word EF_AMDGPU_FEATURE_SRAMECC_ANY_V4         = 0x400;
constexpr Elf_Word EF_AMDGPU_FEATURE_SRAMECC_OFF_V4         = 0x800;
constexpr Elf_Word EF_AMDGPU_FEATURE_SRAMECC_ON_V4          = 0xc00;

// AMDGPU processors
constexpr Elf_Word EF_AMDGPU_MACH_NONE       = 0x000; // Unspecified processor.
constexpr Elf_Word EF_AMDGPU_MACH_R600_R600  = 0x001;
constexpr Elf_Word EF_AMDGPU_MACH_R600_R630  = 0x002;
constexpr Elf_Word EF_AMDGPU_MACH_R600_RS880 = 0x003;
constexpr Elf_Word EF_AMDGPU_MACH_R600_RV670 = 0x004;
constexpr Elf_Word EF_AMDGPU_MACH_R600_RV710 = 0x005;
constexpr Elf_Word EF_AMDGPU_MACH_R600_RV730 = 0x006;
constexpr Elf_Word EF_AMDGPU_MACH_R600_RV770 = 0x007;
constexpr Elf_Word EF_AMDGPU_MACH_R600_CEDAR = 0x008;
constexpr Elf_Word EF_AMDGPU_MACH_R600_CYPRESS        = 0x009;
constexpr Elf_Word EF_AMDGPU_MACH_R600_JUNIPER        = 0x00a;
constexpr Elf_Word EF_AMDGPU_MACH_R600_REDWOOD        = 0x00b;
constexpr Elf_Word EF_AMDGPU_MACH_R600_SUMO           = 0x00c;
constexpr Elf_Word EF_AMDGPU_MACH_R600_BARTS          = 0x00d;
constexpr Elf_Word EF_AMDGPU_MACH_R600_CAICOS         = 0x00e;
constexpr Elf_Word EF_AMDGPU_MACH_R600_CAYMAN         = 0x00f;
constexpr Elf_Word EF_AMDGPU_MACH_R600_TURKS          = 0x010;
constexpr Elf_Word EF_AMDGPU_MACH_R600_RESERVED_FIRST = 0x011;
constexpr Elf_Word EF_AMDGPU_MACH_R600_RESERVED_LAST  = 0x01f;
constexpr Elf_Word EF_AMDGPU_MACH_R600_FIRST = EF_AMDGPU_MACH_R600_R600;
constexpr Elf_Word EF_AMDGPU_MACH_R600_LAST  = EF_AMDGPU_MACH_R600_TURKS;

// AMDGCN-based processors.
constexpr Elf_Word EF_AMDGPU_MACH_AMDGCN_GFX600        = 0x020;
constexpr Elf_Word EF_AMDGPU_MACH_AMDGCN_GFX601        = 0x021;
constexpr Elf_Word EF_AMDGPU_MACH_AMDGCN_GFX700        = 0x022;
constexpr Elf_Word EF_AMDGPU_MACH_AMDGCN_GFX701        = 0x023;
constexpr Elf_Word EF_AMDGPU_MACH_AMDGCN_GFX702        = 0x024;
constexpr Elf_Word EF_AMDGPU_MACH_AMDGCN_GFX703        = 0x025;
constexpr Elf_Word EF_AMDGPU_MACH_AMDGCN_GFX704        = 0x026;
constexpr Elf_Word EF_AMDGPU_MACH_AMDGCN_RESERVED_0X27 = 0x027;
constexpr Elf_Word EF_AMDGPU_MACH_AMDGCN_GFX801        = 0x028;
constexpr Elf_Word EF_AMDGPU_MACH_AMDGCN_GFX802        = 0x029;
constexpr Elf_Word EF_AMDGPU_MACH_AMDGCN_GFX803        = 0x02a;
constexpr Elf_Word EF_AMDGPU_MACH_AMDGCN_GFX810        = 0x02b;
constexpr Elf_Word EF_AMDGPU_MACH_AMDGCN_GFX900        = 0x02c;
constexpr Elf_Word EF_AMDGPU_MACH_AMDGCN_GFX902        = 0x02d;
constexpr Elf_Word EF_AMDGPU_MACH_AMDGCN_GFX904        = 0x02e;
constexpr Elf_Word EF_AMDGPU_MACH_AMDGCN_GFX906        = 0x02f;
constexpr Elf_Word EF_AMDGPU_MACH_AMDGCN_GFX908        = 0x030;
constexpr Elf_Word EF_AMDGPU_MACH_AMDGCN_GFX909        = 0x031;
constexpr Elf_Word EF_AMDGPU_MACH_AMDGCN_GFX90C        = 0x032;
constexpr Elf_Word EF_AMDGPU_MACH_AMDGCN_GFX1010       = 0x033;
constexpr Elf_Word EF_AMDGPU_MACH_AMDGCN_GFX1011       = 0x034;
constexpr Elf_Word EF_AMDGPU_MACH_AMDGCN_GFX1012       = 0x035;
constexpr Elf_Word EF_AMDGPU_MACH_AMDGCN_GFX1030       = 0x036;
constexpr Elf_Word EF_AMDGPU_MACH_AMDGCN_GFX1031       = 0x037;
constexpr Elf_Word EF_AMDGPU_MACH_AMDGCN_GFX1032       = 0x038;
constexpr Elf_Word EF_AMDGPU_MACH_AMDGCN_GFX1033       = 0x039;
constexpr Elf_Word EF_AMDGPU_MACH_AMDGCN_GFX602        = 0x03a;
constexpr Elf_Word EF_AMDGPU_MACH_AMDGCN_GFX705        = 0x03b;
constexpr Elf_Word EF_AMDGPU_MACH_AMDGCN_GFX805        = 0x03c;
constexpr Elf_Word EF_AMDGPU_MACH_AMDGCN_RESERVED_0X3D = 0x03d;
constexpr Elf_Word EF_AMDGPU_MACH_AMDGCN_GFX1034       = 0x03e;
constexpr Elf_Word EF_AMDGPU_MACH_AMDGCN_GFX90A        = 0x03f;
constexpr Elf_Word EF_AMDGPU_MACH_AMDGCN_RESERVED_0X40 = 0x040;
constexpr Elf_Word EF_AMDGPU_MACH_AMDGCN_RESERVED_0X41 = 0x041;
constexpr Elf_Word EF_AMDGPU_MACH_AMDGCN_GFX1013       = 0x042;
// First/last AMDGCN-based processors.
constexpr Elf_Word EF_AMDGPU_MACH_AMDGCN_FIRST = EF_AMDGPU_MACH_AMDGCN_GFX600;
constexpr Elf_Word EF_AMDGPU_MACH_AMDGCN_LAST  = EF_AMDGPU_MACH_AMDGCN_GFX1013;

/////////////////////
// Sections constants

// Section indexes
constexpr Elf_Word SHN_UNDEF     = 0;
constexpr Elf_Word SHN_LORESERVE = 0xFF00;
constexpr Elf_Word SHN_LOPROC    = 0xFF00;
constexpr Elf_Word SHN_HIPROC    = 0xFF1F;
constexpr Elf_Word SHN_LOOS      = 0xFF20;
constexpr Elf_Word SHN_HIOS      = 0xFF3F;
constexpr Elf_Word SHN_ABS       = 0xFFF1;
constexpr Elf_Word SHN_COMMON    = 0xFFF2;
constexpr Elf_Word SHN_XINDEX    = 0xFFFF;
constexpr Elf_Word SHN_HIRESERVE = 0xFFFF;

// Section types
constexpr Elf_Word SHT_NULL           = 0;
constexpr Elf_Word SHT_PROGBITS       = 1;
constexpr Elf_Word SHT_SYMTAB         = 2;
constexpr Elf_Word SHT_STRTAB         = 3;
constexpr Elf_Word SHT_RELA           = 4;
constexpr Elf_Word SHT_HASH           = 5;
constexpr Elf_Word SHT_DYNAMIC        = 6;
constexpr Elf_Word SHT_NOTE           = 7;
constexpr Elf_Word SHT_NOBITS         = 8;
constexpr Elf_Word SHT_REL            = 9;
constexpr Elf_Word SHT_SHLIB          = 10;
constexpr Elf_Word SHT_DYNSYM         = 11;
constexpr Elf_Word SHT_INIT_ARRAY     = 14;
constexpr Elf_Word SHT_FINI_ARRAY     = 15;
constexpr Elf_Word SHT_PREINIT_ARRAY  = 16;
constexpr Elf_Word SHT_GROUP          = 17;
constexpr Elf_Word SHT_SYMTAB_SHNDX   = 18;
constexpr Elf_Word SHT_GNU_ATTRIBUTES = 0x6ffffff5;
constexpr Elf_Word SHT_GNU_HASH       = 0x6ffffff6;
constexpr Elf_Word SHT_GNU_LIBLIST    = 0x6ffffff7;
constexpr Elf_Word SHT_CHECKSUM       = 0x6ffffff8;
constexpr Elf_Word SHT_LOSUNW         = 0x6ffffffa;
constexpr Elf_Word SHT_SUNW_move      = 0x6ffffffa;
constexpr Elf_Word SHT_SUNW_COMDAT    = 0x6ffffffb;
constexpr Elf_Word SHT_SUNW_syminfo   = 0x6ffffffc;
constexpr Elf_Word SHT_GNU_verdef     = 0x6ffffffd;
constexpr Elf_Word SHT_GNU_verneed    = 0x6ffffffe;
constexpr Elf_Word SHT_GNU_versym     = 0x6fffffff;
constexpr Elf_Word SHT_LOOS           = 0x60000000;
constexpr Elf_Word SHT_HIOS           = 0x6fffffff;
constexpr Elf_Word SHT_LOPROC         = 0x70000000;
constexpr Elf_Word SHT_HIPROC         = 0x7FFFFFFF;
constexpr Elf_Word SHT_LOUSER         = 0x80000000;
constexpr Elf_Word SHT_HIUSER         = 0xFFFFFFFF;

// Section attribute flags
constexpr Elf_Xword SHF_WRITE            = 0x1;
constexpr Elf_Xword SHF_ALLOC            = 0x2;
constexpr Elf_Xword SHF_EXECINSTR        = 0x4;
constexpr Elf_Xword SHF_MERGE            = 0x10;
constexpr Elf_Xword SHF_STRINGS          = 0x20;
constexpr Elf_Xword SHF_INFO_LINK        = 0x40;
constexpr Elf_Xword SHF_LINK_ORDER       = 0x80;
constexpr Elf_Xword SHF_OS_NONCONFORMING = 0x100;
constexpr Elf_Xword SHF_GROUP            = 0x200;
constexpr Elf_Xword SHF_TLS              = 0x400;
constexpr Elf_Xword SHF_MASKOS           = 0x0ff00000;
constexpr Elf_Xword SHF_MASKPROC         = 0xF0000000;

// Section group flags
constexpr Elf_Word GRP_COMDAT   = 0x1;
constexpr Elf_Word GRP_MASKOS   = 0x0ff00000;
constexpr Elf_Word GRP_MASKPROC = 0xf0000000;

// Symbol binding
constexpr unsigned char STB_LOCAL    = 0;
constexpr unsigned char STB_GLOBAL   = 1;
constexpr unsigned char STB_WEAK     = 2;
constexpr unsigned char STB_LOOS     = 10;
constexpr unsigned char STB_HIOS     = 12;
constexpr unsigned char STB_MULTIDEF = 13;
constexpr unsigned char STB_LOPROC   = 13;
constexpr unsigned char STB_HIPROC   = 15;

// Values of note segment descriptor types for core files
constexpr Elf_Word NT_PRSTATUS   = 1; // Contains copy of prstatus struct
constexpr Elf_Word NT_FPREGSET   = 2; // Contains copy of fpregset struct
constexpr Elf_Word NT_PRPSINFO   = 3; // Contains copy of prpsinfo struct
constexpr Elf_Word NT_TASKSTRUCT = 4; // Contains copy of task struct
constexpr Elf_Word NT_AUXV       = 6; // Contains copy of Elfxx_auxv_t
constexpr Elf_Word NT_SIGINFO    = 0x53494749; // Fields of siginfo_t.
constexpr Elf_Word NT_FILE       = 0x46494c45; // Description of mapped files.

// Note segments for core files on dir-style procfs systems.
constexpr Elf_Word NT_PSTATUS      = 10; // Has a struct pstatus
constexpr Elf_Word NT_FPREGS       = 12; // Has a struct fpregset
constexpr Elf_Word NT_PSINFO       = 13; // Has a struct psinfo
constexpr Elf_Word NT_LWPSTATUS    = 16; // Has a struct lwpstatus_t
constexpr Elf_Word NT_LWPSINFO     = 17; // Has a struct lwpsinfo_t
constexpr Elf_Word NT_WIN32PSTATUS = 18; // Has a struct win32_pstatus

// clang-format off

// Note name must be "LINUX"    
constexpr Elf_Word NT_PRXFPREG             = 0x46e62b7f; // Contains a user_xfpregs_struct;
constexpr Elf_Word NT_PPC_VMX              = 0x100;      // PowerPC Altivec/VMX registers
constexpr Elf_Word NT_PPC_VSX              = 0x102;      // PowerPC VSX registers
constexpr Elf_Word NT_PPC_TAR              = 0x103;      // PowerPC Target Address Register
constexpr Elf_Word NT_PPC_PPR              = 0x104;      // PowerPC Program Priority Register
constexpr Elf_Word NT_PPC_DSCR             = 0x105;      // PowerPC Data Stream Control Register
constexpr Elf_Word NT_PPC_EBB              = 0x106;      // PowerPC Event Based Branch Registers
constexpr Elf_Word NT_PPC_PMU              = 0x107;      // PowerPC Performance Monitor Registers
constexpr Elf_Word NT_PPC_TM_CGPR          = 0x108;      // PowerPC TM checkpointed GPR Registers
constexpr Elf_Word NT_PPC_TM_CFPR          = 0x109;      // PowerPC TM checkpointed FPR Registers
constexpr Elf_Word NT_PPC_TM_CVMX          = 0x10a;      // PowerPC TM checkpointed VMX Registers
constexpr Elf_Word NT_PPC_TM_CVSX          = 0x10b;      // PowerPC TM checkpointed VSX Registers
constexpr Elf_Word NT_PPC_TM_SPR           = 0x10c;      // PowerPC TM Special Purpose Registers
constexpr Elf_Word NT_PPC_TM_CTAR          = 0x10d;      // PowerPC TM checkpointed TAR
constexpr Elf_Word NT_PPC_TM_CPPR          = 0x10e;      // PowerPC TM checkpointed PPR
constexpr Elf_Word NT_PPC_TM_CDSCR         = 0x10f;      // PowerPC TM checkpointed Data SCR
constexpr Elf_Word NT_386_TLS              = 0x200;      // x86 TLS information
constexpr Elf_Word NT_386_IOPERM           = 0x201;      // x86 io permissions
constexpr Elf_Word NT_X86_XSTATE           = 0x202;      // x86 XSAVE extended state
constexpr Elf_Word NT_X86_CET              = 0x203;      // x86 CET state.
constexpr Elf_Word NT_S390_HIGH_GPRS       = 0x300;      // S/390 upper halves of GPRs
constexpr Elf_Word NT_S390_TIMER           = 0x301;      // S390 timer
constexpr Elf_Word NT_S390_TODCMP          = 0x302;      // S390 TOD clock comparator
constexpr Elf_Word NT_S390_TODPREG         = 0x303;      // S390 TOD programmable register
constexpr Elf_Word NT_S390_CTRS            = 0x304;      // S390 control registers
constexpr Elf_Word NT_S390_PREFIX          = 0x305;      // S390 prefix register
constexpr Elf_Word NT_S390_LAST_BREAK      = 0x306;      // S390 breaking event address
constexpr Elf_Word NT_S390_SYSTEM_CALL     = 0x307;      // S390 system call restart data
constexpr Elf_Word NT_S390_TDB             = 0x308;      // S390 transaction diagnostic block
constexpr Elf_Word NT_S390_VXRS_LOW        = 0x309;      // S390 vector registers 0-15 upper half
constexpr Elf_Word NT_S390_VXRS_HIGH       = 0x30a;      // S390 vector registers 16-31
constexpr Elf_Word NT_S390_GS_CB           = 0x30b;      // s390 guarded storage registers
constexpr Elf_Word NT_S390_GS_BC           = 0x30c;      // s390 guarded storage broadcast control block
constexpr Elf_Word NT_ARM_VFP              = 0x400;      // ARM VFP registers
constexpr Elf_Word NT_ARM_TLS              = 0x401;      // AArch TLS registers
constexpr Elf_Word NT_ARM_HW_BREAK         = 0x402;      // AArch hardware breakpoint registers
constexpr Elf_Word NT_ARM_HW_WATCH         = 0x403;      // AArch hardware watchpoint registers
constexpr Elf_Word NT_ARM_SVE              = 0x405;      // AArch SVE registers.
constexpr Elf_Word NT_ARM_PAC_MASK         = 0x406;      // AArch pointer authentication code masks
constexpr Elf_Word NT_ARM_PACA_KEYS        = 0x407;      // ARM pointer authentication address keys
constexpr Elf_Word NT_ARM_PACG_KEYS        = 0x408;      // ARM pointer authentication generic keys
constexpr Elf_Word NT_ARM_TAGGED_ADDR_CTRL = 0x409;      // AArch64 tagged address control (prctl())
constexpr Elf_Word NT_ARM_PAC_ENABLED_KEYS = 0x40a;      // AArch64 pointer authentication enabled keys (prctl())
constexpr Elf_Word NT_ARC_V2               = 0x600;      // ARC HS accumulator/extra registers.
constexpr Elf_Word NT_LARCH_CPUCFG         = 0xa00;      // LoongArch CPU config registers
constexpr Elf_Word NT_LARCH_CSR            = 0xa01;      // LoongArch Control State Registers
constexpr Elf_Word NT_LARCH_LSX            = 0xa02;      // LoongArch SIMD eXtension registers
constexpr Elf_Word NT_LARCH_LASX           = 0xa03;      // LoongArch Advanced SIMD eXtension registers
constexpr Elf_Word NT_RISCV_CSR            = 0x900;      // RISC-V Control and Status Registers

// Note name must be "CORE"
constexpr Elf_Word NT_LARCH_LBT = 0xa04; // LoongArch Binary Translation registers

/* The range 0xff000000 to 0xffffffff is set aside for notes that don't
   originate from any particular operating system.  */
constexpr Elf_Word NT_GDB_TDESC = 0xff000000; // Contains copy of GDB's target description XML.
constexpr Elf_Word NT_MEMTAG    = 0xff000001; // Contains a copy of the memory tags.
/* ARM-specific NT_MEMTAG types.  */
constexpr Elf_Word NT_MEMTAG_TYPE_AARCH_MTE = 0x400; // MTE memory tags for AArch64.

/* Note segment for SystemTap probes.  */
#define NT_STAPSDT 3

// Note name is "FreeBSD"
constexpr Elf_Word NT_FREEBSD_THRMISC            = 7;  // Thread miscellaneous info.
constexpr Elf_Word NT_FREEBSD_PROCSTAT_PROC      = 8;  // Procstat proc data.
constexpr Elf_Word NT_FREEBSD_PROCSTAT_FILES     = 9;  // Procstat files data.
constexpr Elf_Word NT_FREEBSD_PROCSTAT_VMMAP     = 10; // Procstat vmmap data.
constexpr Elf_Word NT_FREEBSD_PROCSTAT_GROUPS    = 11; // Procstat groups data.
constexpr Elf_Word NT_FREEBSD_PROCSTAT_UMASK     = 12; // Procstat umask data.
constexpr Elf_Word NT_FREEBSD_PROCSTAT_RLIMIT    = 13; // Procstat rlimit data.
constexpr Elf_Word NT_FREEBSD_PROCSTAT_OSREL     = 14; // Procstat osreldate data.
constexpr Elf_Word NT_FREEBSD_PROCSTAT_PSSTRINGS = 15; // Procstat ps_strings data.
constexpr Elf_Word NT_FREEBSD_PROCSTAT_AUXV      = 16; // Procstat auxv data.
constexpr Elf_Word NT_FREEBSD_PTLWPINFO          = 17; // Thread ptrace miscellaneous info.

// Note name must start with  "NetBSD-CORE"
constexpr Elf_Word NT_NETBSDCORE_PROCINFO  = 1;  // Has a struct procinfo
constexpr Elf_Word NT_NETBSDCORE_AUXV      = 2;  // Has auxv data
constexpr Elf_Word NT_NETBSDCORE_LWPSTATUS = 24; // Has LWPSTATUS data
constexpr Elf_Word NT_NETBSDCORE_FIRSTMACH = 32; // start of machdep note types

// Note name is "OpenBSD"
constexpr Elf_Word NT_OPENBSD_PROCINFO = 10;
constexpr Elf_Word NT_OPENBSD_AUXV     = 11;
constexpr Elf_Word NT_OPENBSD_REGS     = 20;
constexpr Elf_Word NT_OPENBSD_FPREGS   = 21;
constexpr Elf_Word NT_OPENBSD_XFPREGS  = 22;
constexpr Elf_Word NT_OPENBSD_WCOOKIE  = 23;

// Note name must start with "SPU"
constexpr Elf_Word NT_SPU = 1;

// Values of note segment descriptor types for object files
constexpr Elf_Word NT_VERSION    = 1; // Contains a version string.
constexpr Elf_Word NT_ARCH       = 2; // Contains an architecture string.
constexpr Elf_Word NT_GO_BUILDID = 4; // Contains GO buildid data.

// Values for notes in non-core files using name "GNU"
constexpr Elf_Word NT_GNU_ABI_TAG         = 1;
constexpr Elf_Word NT_GNU_HWCAP           = 2; // Used by ld.so and kernel vDSO.
constexpr Elf_Word NT_GNU_BUILD_ID        = 3; // Generated by ld --build-id.
constexpr Elf_Word NT_GNU_GOLD_VERSION    = 4; // Generated by gold.
constexpr Elf_Word NT_GNU_PROPERTY_TYPE_0 = 5; // Generated by gcc.
// clang-format on

constexpr Elf_Word NT_GNU_BUILD_ATTRIBUTE_OPEN = 0x100;
constexpr Elf_Word NT_GNU_BUILD_ATTRIBUTE_FUNC = 0x101;

// Symbol types
constexpr Elf_Word STT_NOTYPE            = 0;
constexpr Elf_Word STT_OBJECT            = 1;
constexpr Elf_Word STT_FUNC              = 2;
constexpr Elf_Word STT_SECTION           = 3;
constexpr Elf_Word STT_FILE              = 4;
constexpr Elf_Word STT_COMMON            = 5;
constexpr Elf_Word STT_TLS               = 6;
constexpr Elf_Word STT_LOOS              = 10;
constexpr Elf_Word STT_AMDGPU_HSA_KERNEL = 10;
constexpr Elf_Word STT_HIOS              = 12;
constexpr Elf_Word STT_LOPROC            = 13;
constexpr Elf_Word STT_HIPROC            = 15;

// Symbol visibility
constexpr unsigned char STV_DEFAULT   = 0;
constexpr unsigned char STV_INTERNAL  = 1;
constexpr unsigned char STV_HIDDEN    = 2;
constexpr unsigned char STV_PROTECTED = 3;

// Undefined name
constexpr Elf_Word STN_UNDEF = 0;

// Relocation types
constexpr unsigned char R_386_NONE               = 0;
constexpr unsigned char R_X86_64_NONE            = 0;
constexpr unsigned char R_AMDGPU_NONE            = 0;
constexpr unsigned char R_386_32                 = 1;
constexpr unsigned char R_X86_64_64              = 1;
constexpr unsigned char R_AMDGPU_ABS32_LO        = 1;
constexpr unsigned char R_386_PC32               = 2;
constexpr unsigned char R_X86_64_PC32            = 2;
constexpr unsigned char R_AMDGPU_ABS32_HI        = 2;
constexpr unsigned char R_386_GOT32              = 3;
constexpr unsigned char R_X86_64_GOT32           = 3;
constexpr unsigned char R_AMDGPU_ABS64           = 3;
constexpr unsigned char R_386_PLT32              = 4;
constexpr unsigned char R_X86_64_PLT32           = 4;
constexpr unsigned char R_AMDGPU_REL32           = 4;
constexpr unsigned char R_386_COPY               = 5;
constexpr unsigned char R_X86_64_COPY            = 5;
constexpr unsigned char R_AMDGPU_REL64           = 5;
constexpr unsigned char R_386_GLOB_DAT           = 6;
constexpr unsigned char R_X86_64_GLOB_DAT        = 6;
constexpr unsigned char R_AMDGPU_ABS32           = 6;
constexpr unsigned char R_386_JMP_SLOT           = 7;
constexpr unsigned char R_X86_64_JUMP_SLOT       = 7;
constexpr unsigned char R_AMDGPU_GOTPCREL        = 7;
constexpr unsigned char R_386_RELATIVE           = 8;
constexpr unsigned char R_X86_64_RELATIVE        = 8;
constexpr unsigned char R_AMDGPU_GOTPCREL32_LO   = 8;
constexpr unsigned char R_386_GOTOFF             = 9;
constexpr unsigned char R_X86_64_GOTPCREL        = 9;
constexpr unsigned char R_AMDGPU_GOTPCREL32_HI   = 9;
constexpr unsigned char R_386_GOTPC              = 10;
constexpr unsigned char R_X86_64_32              = 10;
constexpr unsigned char R_AMDGPU_REL32_LO        = 10;
constexpr unsigned char R_386_32PLT              = 11;
constexpr unsigned char R_X86_64_32S             = 11;
constexpr unsigned char R_AMDGPU_REL32_HI        = 11;
constexpr unsigned char R_X86_64_16              = 12;
constexpr unsigned char R_X86_64_PC16            = 13;
constexpr unsigned char R_AMDGPU_RELATIVE64      = 13;
constexpr unsigned char R_386_TLS_TPOFF          = 14;
constexpr unsigned char R_X86_64_8               = 14;
constexpr unsigned char R_386_TLS_IE             = 15;
constexpr unsigned char R_X86_64_PC8             = 15;
constexpr unsigned char R_386_TLS_GOTIE          = 16;
constexpr unsigned char R_X86_64_DTPMOD64        = 16;
constexpr unsigned char R_386_TLS_LE             = 17;
constexpr unsigned char R_X86_64_DTPOFF64        = 17;
constexpr unsigned char R_386_TLS_GD             = 18;
constexpr unsigned char R_X86_64_TPOFF64         = 18;
constexpr unsigned char R_386_TLS_LDM            = 19;
constexpr unsigned char R_X86_64_TLSGD           = 19;
constexpr unsigned char R_386_16                 = 20;
constexpr unsigned char R_X86_64_TLSLD           = 20;
constexpr unsigned char R_386_PC16               = 21;
constexpr unsigned char R_X86_64_DTPOFF32        = 21;
constexpr unsigned char R_386_8                  = 22;
constexpr unsigned char R_X86_64_GOTTPOFF        = 22;
constexpr unsigned char R_386_PC8                = 23;
constexpr unsigned char R_X86_64_TPOFF32         = 23;
constexpr unsigned char R_386_TLS_GD_32          = 24;
constexpr unsigned char R_X86_64_PC64            = 24;
constexpr unsigned char R_386_TLS_GD_PUSH        = 25;
constexpr unsigned char R_X86_64_GOTOFF64        = 25;
constexpr unsigned char R_386_TLS_GD_CALL        = 26;
constexpr unsigned char R_X86_64_GOTPC32         = 26;
constexpr unsigned char R_386_TLS_GD_POP         = 27;
constexpr unsigned char R_X86_64_GOT64           = 27;
constexpr unsigned char R_386_TLS_LDM_32         = 28;
constexpr unsigned char R_X86_64_GOTPCREL64      = 28;
constexpr unsigned char R_386_TLS_LDM_PUSH       = 29;
constexpr unsigned char R_X86_64_GOTPC64         = 29;
constexpr unsigned char R_386_TLS_LDM_CALL       = 30;
constexpr unsigned char R_X86_64_GOTPLT64        = 30;
constexpr unsigned char R_386_TLS_LDM_POP        = 31;
constexpr unsigned char R_X86_64_PLTOFF64        = 31;
constexpr unsigned char R_386_TLS_LDO_32         = 32;
constexpr unsigned char R_386_TLS_IE_32          = 33;
constexpr unsigned char R_386_TLS_LE_32          = 34;
constexpr unsigned char R_X86_64_GOTPC32_TLSDESC = 34;
constexpr unsigned char R_386_TLS_DTPMOD32       = 35;
constexpr unsigned char R_X86_64_TLSDESC_CALL    = 35;
constexpr unsigned char R_386_TLS_DTPOFF32       = 36;
constexpr unsigned char R_X86_64_TLSDESC         = 36;
constexpr unsigned char R_386_TLS_TPOFF32        = 37;
constexpr unsigned char R_X86_64_IRELATIVE       = 37;
constexpr unsigned char R_386_SIZE32             = 38;
constexpr unsigned char R_386_TLS_GOTDESC        = 39;
constexpr unsigned char R_386_TLS_DESC_CALL      = 40;
constexpr unsigned char R_386_TLS_DESC           = 41;
constexpr unsigned char R_386_IRELATIVE          = 42;
constexpr unsigned char R_386_GOT32X             = 43;
constexpr unsigned char R_X86_64_GNU_VTINHERIT   = 250;
constexpr unsigned char R_X86_64_GNU_VTENTRY     = 251;

// Segment types
constexpr Elf_Word PT_NULL         = 0;
constexpr Elf_Word PT_LOAD         = 1;
constexpr Elf_Word PT_DYNAMIC      = 2;
constexpr Elf_Word PT_INTERP       = 3;
constexpr Elf_Word PT_NOTE         = 4;
constexpr Elf_Word PT_SHLIB        = 5;
constexpr Elf_Word PT_PHDR         = 6;
constexpr Elf_Word PT_TLS          = 7;
constexpr Elf_Word PT_LOOS         = 0X60000000;
constexpr Elf_Word PT_GNU_EH_FRAME = 0X6474E550; // Frame unwind information
constexpr Elf_Word PT_GNU_STACK    = 0X6474E551; // Stack flags
constexpr Elf_Word PT_GNU_RELRO    = 0X6474E552; // Read only after relocs
constexpr Elf_Word PT_GNU_PROPERTY = 0X6474E553; // GNU property
constexpr Elf_Word PT_GNU_MBIND_LO = 0X6474E555; // Mbind segments start
constexpr Elf_Word PT_GNU_MBIND_HI = 0X6474F554; // Mbind segments finish
constexpr Elf_Word PT_PAX_FLAGS    = 0X65041580;
constexpr Elf_Word PT_OPENBSD_RANDOMIZE = 0X65A3DBE6;
constexpr Elf_Word PT_OPENBSD_WXNEEDED  = 0X65A3DBE7;
constexpr Elf_Word PT_OPENBSD_BOOTDATA  = 0X65A41BE6;
constexpr Elf_Word PT_SUNWSTACK         = 0X6FFFFFFB;
constexpr Elf_Word PT_HIOS              = 0X6FFFFFFF;
constexpr Elf_Word PT_LOPROC            = 0X70000000;
constexpr Elf_Word PT_HIPROC            = 0X7FFFFFFF;

// Segment flags
constexpr Elf_Word PF_X        = 1;          // Execute
constexpr Elf_Word PF_W        = 2;          // Write
constexpr Elf_Word PF_R        = 4;          // Read
constexpr Elf_Word PF_MASKOS   = 0x0ff00000; // Unspecified
constexpr Elf_Word PF_MASKPROC = 0xf0000000; // Unspecified

// Dynamic Array Tags
constexpr Elf_Word DT_NULL            = 0;
constexpr Elf_Word DT_NEEDED          = 1;
constexpr Elf_Word DT_PLTRELSZ        = 2;
constexpr Elf_Word DT_PLTGOT          = 3;
constexpr Elf_Word DT_HASH            = 4;
constexpr Elf_Word DT_STRTAB          = 5;
constexpr Elf_Word DT_SYMTAB          = 6;
constexpr Elf_Word DT_RELA            = 7;
constexpr Elf_Word DT_RELASZ          = 8;
constexpr Elf_Word DT_RELAENT         = 9;
constexpr Elf_Word DT_STRSZ           = 10;
constexpr Elf_Word DT_SYMENT          = 11;
constexpr Elf_Word DT_INIT            = 12;
constexpr Elf_Word DT_FINI            = 13;
constexpr Elf_Word DT_SONAME          = 14;
constexpr Elf_Word DT_RPATH           = 15;
constexpr Elf_Word DT_SYMBOLIC        = 16;
constexpr Elf_Word DT_REL             = 17;
constexpr Elf_Word DT_RELSZ           = 18;
constexpr Elf_Word DT_RELENT          = 19;
constexpr Elf_Word DT_PLTREL          = 20;
constexpr Elf_Word DT_DEBUG           = 21;
constexpr Elf_Word DT_TEXTREL         = 22;
constexpr Elf_Word DT_JMPREL          = 23;
constexpr Elf_Word DT_BIND_NOW        = 24;
constexpr Elf_Word DT_INIT_ARRAY      = 25;
constexpr Elf_Word DT_FINI_ARRAY      = 26;
constexpr Elf_Word DT_INIT_ARRAYSZ    = 27;
constexpr Elf_Word DT_FINI_ARRAYSZ    = 28;
constexpr Elf_Word DT_RUNPATH         = 29;
constexpr Elf_Word DT_FLAGS           = 30;
constexpr Elf_Word DT_ENCODING        = 32;
constexpr Elf_Word DT_PREINIT_ARRAY   = 32;
constexpr Elf_Word DT_PREINIT_ARRAYSZ = 33;
constexpr Elf_Word DT_MAXPOSTAGS      = 34;
constexpr Elf_Word DT_GNU_HASH        = 0x6ffffef5;
constexpr Elf_Word DT_VERSYM          = 0x6ffffff0;
constexpr Elf_Word DT_FLAGS_1         = 0x6ffffffb;
constexpr Elf_Word DT_VERNEED         = 0x6ffffffe;
constexpr Elf_Word DT_VERNEEDNUM      = 0x6fffffff;
constexpr Elf_Word DT_LOOS            = 0x6000000D;
constexpr Elf_Word DT_HIOS            = 0x6ffff000;
constexpr Elf_Word DT_LOPROC          = 0x70000000;
constexpr Elf_Word DT_HIPROC          = 0x7FFFFFFF;

// DT_FLAGS values
constexpr Elf_Word DF_ORIGIN     = 0x1;
constexpr Elf_Word DF_SYMBOLIC   = 0x2;
constexpr Elf_Word DF_TEXTREL    = 0x4;
constexpr Elf_Word DF_BIND_NOW   = 0x8;
constexpr Elf_Word DF_STATIC_TLS = 0x10;

// ELF file header
struct Elf32_Ehdr
{
    unsigned char e_ident[EI_NIDENT];
    Elf_Half      e_type;
    Elf_Half      e_machine;
    Elf_Word      e_version;
    Elf32_Addr    e_entry;
    Elf32_Off     e_phoff;
    Elf32_Off     e_shoff;
    Elf_Word      e_flags;
    Elf_Half      e_ehsize;
    Elf_Half      e_phentsize;
    Elf_Half      e_phnum;
    Elf_Half      e_shentsize;
    Elf_Half      e_shnum;
    Elf_Half      e_shstrndx;
};

struct Elf64_Ehdr
{
    unsigned char e_ident[EI_NIDENT];
    Elf_Half      e_type;
    Elf_Half      e_machine;
    Elf_Word      e_version;
    Elf64_Addr    e_entry;
    Elf64_Off     e_phoff;
    Elf64_Off     e_shoff;
    Elf_Word      e_flags;
    Elf_Half      e_ehsize;
    Elf_Half      e_phentsize;
    Elf_Half      e_phnum;
    Elf_Half      e_shentsize;
    Elf_Half      e_shnum;
    Elf_Half      e_shstrndx;
};

// Section header
struct Elf32_Shdr
{
    Elf_Word   sh_name;
    Elf_Word   sh_type;
    Elf_Word   sh_flags;
    Elf32_Addr sh_addr;
    Elf32_Off  sh_offset;
    Elf_Word   sh_size;
    Elf_Word   sh_link;
    Elf_Word   sh_info;
    Elf_Word   sh_addralign;
    Elf_Word   sh_entsize;
};

struct Elf64_Shdr
{
    Elf_Word   sh_name;
    Elf_Word   sh_type;
    Elf_Xword  sh_flags;
    Elf64_Addr sh_addr;
    Elf64_Off  sh_offset;
    Elf_Xword  sh_size;
    Elf_Word   sh_link;
    Elf_Word   sh_info;
    Elf_Xword  sh_addralign;
    Elf_Xword  sh_entsize;
};

// Segment header
struct Elf32_Phdr
{
    Elf_Word   p_type;
    Elf32_Off  p_offset;
    Elf32_Addr p_vaddr;
    Elf32_Addr p_paddr;
    Elf_Word   p_filesz;
    Elf_Word   p_memsz;
    Elf_Word   p_flags;
    Elf_Word   p_align;
};

struct Elf64_Phdr
{
    Elf_Word   p_type;
    Elf_Word   p_flags;
    Elf64_Off  p_offset;
    Elf64_Addr p_vaddr;
    Elf64_Addr p_paddr;
    Elf_Xword  p_filesz;
    Elf_Xword  p_memsz;
    Elf_Xword  p_align;
};

// Symbol table entry
struct Elf32_Sym
{
    Elf_Word      st_name;
    Elf32_Addr    st_value;
    Elf_Word      st_size;
    unsigned char st_info;
    unsigned char st_other;
    Elf_Half      st_shndx;
};

struct Elf64_Sym
{
    Elf_Word      st_name;
    unsigned char st_info;
    unsigned char st_other;
    Elf_Half      st_shndx;
    Elf64_Addr    st_value;
    Elf_Xword     st_size;
};

#define ELF_ST_BIND( i )    ( ( i ) >> 4 )
#define ELF_ST_TYPE( i )    ( (i)&0xf )
#define ELF_ST_INFO( b, t ) ( ( ( b ) << 4 ) + ( (t)&0xf ) )

#define ELF_ST_VISIBILITY( o ) ( (o)&0x3 )

// Relocation entries
struct Elf32_Rel
{
    Elf32_Addr r_offset;
    Elf_Word   r_info;
};

struct Elf32_Rela
{
    Elf32_Addr r_offset;
    Elf_Word   r_info;
    Elf_Sword  r_addend;
};

struct Elf64_Rel
{
    Elf64_Addr r_offset;
    Elf_Xword  r_info;
};

struct Elf64_Rela
{
    Elf64_Addr r_offset;
    Elf_Xword  r_info;
    Elf_Sxword r_addend;
};

#define ELF32_R_SYM( i )     ( ( i ) >> 8 )
#define ELF32_R_TYPE( i )    ( (unsigned char)( i ) )
#define ELF32_R_INFO( s, t ) ( ( ( s ) << 8 ) + (unsigned char)( t ) )

#define ELF64_R_SYM( i )  ( ( i ) >> 32 )
#define ELF64_R_TYPE( i ) ( (i)&0xffffffffL )
#define ELF64_R_INFO( s, t ) \
    ( ( ( (int64_t)( s ) ) << 32 ) + ( (t)&0xffffffffL ) )

// Dynamic structure
struct Elf32_Dyn
{
    Elf_Sword d_tag;
    union {
        Elf_Word   d_val;
        Elf32_Addr d_ptr;
    } d_un;
};

struct Elf64_Dyn
{
    Elf_Sxword d_tag;
    union {
        Elf_Xword  d_val;
        Elf64_Addr d_ptr;
    } d_un;
};

struct Elfxx_Verneed
{
    Elf_Half vn_version;
    Elf_Half vn_cnt;
    Elf_Word vn_file;
    Elf_Word vn_aux;
    Elf_Word vn_next;
};

struct Elfxx_Vernaux
{
    Elf_Word vna_hash;
    Elf_Half vna_flags;
    Elf_Half vna_other;
    Elf_Word vna_name;
    Elf_Word vna_next;
};

#ifdef __cplusplus
} // namespace ELFIO
#endif

#endif // ELFTYPES_H
