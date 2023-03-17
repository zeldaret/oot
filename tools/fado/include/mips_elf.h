/* This file contains enough of the ELF format definitions for MIPS to enable Fairy and Fado to work. More may need to
 * be added later. The content is excerpted directly from elf.h from the GNU C Library, and therefore: */
/* Copyright (C) 1995-2020 Free Software Foundation, Inc. */
/* SPDX-License-Identifier: LGPL-2.1-or-later */

#ifndef MIPS_ELF_H
#define MIPS_ELF_H

#include <stdint.h>

/* Type for a 16-bit quantity.  */
typedef uint16_t Elf32_Half;

/* Types for signed and unsigned 32-bit quantities.  */
typedef uint32_t Elf32_Word;
typedef int32_t Elf32_Sword;

/* Types for signed and unsigned 64-bit quantities.  */
typedef uint64_t Elf32_Xword;
typedef int64_t Elf32_Sxword;

/* Type of addresses.  */
typedef uint32_t Elf32_Addr;

/* Type of file offsets.  */
typedef uint32_t Elf32_Off;

/* Type for section indices, which are 16-bit quantities.  */
typedef uint16_t Elf32_Section;

/* The ELF file header.  This appears at the start of every ELF file.  */

#define EI_NIDENT (16)

typedef struct {
    unsigned char e_ident[EI_NIDENT]; /* Magic number and other info */
    Elf32_Half e_type;                /* Object file type */
    Elf32_Half e_machine;             /* Architecture */
    Elf32_Word e_version;             /* Object file version */
    Elf32_Addr e_entry;               /* Entry point virtual address */
    Elf32_Off e_phoff;                /* Program header table file offset */
    Elf32_Off e_shoff;                /* Section header table file offset */
    Elf32_Word e_flags;               /* Processor-specific flags */
    Elf32_Half e_ehsize;              /* ELF header size in bytes */
    Elf32_Half e_phentsize;           /* Program header table entry size */
    Elf32_Half e_phnum;               /* Program header table entry count */
    Elf32_Half e_shentsize;           /* Section header table entry size */
    Elf32_Half e_shnum;               /* Section header table entry count */
    Elf32_Half e_shstrndx;            /* Section header string table index */
} Elf32_Ehdr;

/* Fields in the e_ident array.  The EI_* macros are indices into the
   array.  The macros under each EI_* macro are the values the byte
   may have.  */

#define EI_MAG0 0    /* File identification byte 0 index */
#define ELFMAG0 0x7f /* Magic number byte 0 */

#define EI_MAG1 1   /* File identification byte 1 index */
#define ELFMAG1 'E' /* Magic number byte 1 */

#define EI_MAG2 2   /* File identification byte 2 index */
#define ELFMAG2 'L' /* Magic number byte 2 */

#define EI_MAG3 3   /* File identification byte 3 index */
#define ELFMAG3 'F' /* Magic number byte 3 */

/* Conglomeration of the identification bytes, for easy testing as a word.  */
#define ELFMAG "\177ELF"
#define SELFMAG 4

#define EI_CLASS 4     /* File class byte index */
#define ELFCLASSNONE 0 /* Invalid class */
#define ELFCLASS32 1   /* 32-bit objects */
#define ELFCLASS64 2   /* 64-bit objects */
#define ELFCLASSNUM 3

#define EI_DATA 5     /* Data encoding byte index */
#define ELFDATANONE 0 /* Invalid data encoding */
#define ELFDATA2LSB 1 /* 2's complement, little endian */
#define ELFDATA2MSB 2 /* 2's complement, big endian */
#define ELFDATANUM 3

#define EI_VERSION 6 /* File version byte index */
                     /* Value must be EV_CURRENT */

#define EI_OSABI 7                  /* OS ABI identification */
#define ELFOSABI_NONE 0             /* UNIX System V ABI */
#define ELFOSABI_SYSV 0             /* Alias.  */
#define ELFOSABI_HPUX 1             /* HP-UX */
#define ELFOSABI_NETBSD 2           /* NetBSD.  */
#define ELFOSABI_GNU 3              /* Object uses GNU ELF extensions.  */
#define ELFOSABI_LINUX ELFOSABI_GNU /* Compatibility alias.  */
#define ELFOSABI_SOLARIS 6          /* Sun Solaris.  */
#define ELFOSABI_AIX 7              /* IBM AIX.  */
#define ELFOSABI_IRIX 8             /* SGI Irix.  */
#define ELFOSABI_FREEBSD 9          /* FreeBSD.  */
#define ELFOSABI_TRU64 10           /* Compaq TRU64 UNIX.  */
#define ELFOSABI_MODESTO 11         /* Novell Modesto.  */
#define ELFOSABI_OPENBSD 12         /* OpenBSD.  */
#define ELFOSABI_ARM_AEABI 64       /* ARM EABI */
#define ELFOSABI_ARM 97             /* ARM */
#define ELFOSABI_STANDALONE 255     /* Standalone (embedded) application */

#define EI_ABIVERSION 8 /* ABI version */

#define EI_PAD 9 /* Byte index of padding bytes */

/* Legal values for e_type (object file type).  */

#define ET_NONE 0        /* No file type */
#define ET_REL 1         /* Relocatable file */
#define ET_EXEC 2        /* Executable file */
#define ET_DYN 3         /* Shared object file */
#define ET_CORE 4        /* Core file */
#define ET_NUM 5         /* Number of defined types */
#define ET_LOOS 0xfe00   /* OS-specific range start */
#define ET_HIOS 0xfeff   /* OS-specific range end */
#define ET_LOPROC 0xff00 /* Processor-specific range start */
#define ET_HIPROC 0xffff /* Processor-specific range end */

/* Legal values for e_machine (architecture).  */

#define EM_NONE 0         /* No machine */
#define EM_M32 1          /* AT&T WE 32100 */
#define EM_SPARC 2        /* SUN SPARC */
#define EM_386 3          /* Intel 80386 */
#define EM_68K 4          /* Motorola m68k family */
#define EM_88K 5          /* Motorola m88k family */
#define EM_IAMCU 6        /* Intel MCU */
#define EM_860 7          /* Intel 80860 */
#define EM_MIPS 8         /* MIPS R3000 big-endian */
#define EM_S370 9         /* IBM System/370 */
#define EM_MIPS_RS3_LE 10 /* MIPS R3000 little-endian */
/* reserved 11-14 */
#define EM_PARISC 15 /* HPPA */
/* reserved 16 */
#define EM_VPP500 17      /* Fujitsu VPP500 */
#define EM_SPARC32PLUS 18 /* Sun's "v8plus" */
#define EM_960 19         /* Intel 80960 */
#define EM_PPC 20         /* PowerPC */
#define EM_PPC64 21       /* PowerPC 64-bit */
#define EM_S390 22        /* IBM S390 */
#define EM_SPU 23         /* IBM SPU/SPC */
/* reserved 24-35 */
#define EM_V800 36          /* NEC V800 series */
#define EM_FR20 37          /* Fujitsu FR20 */
#define EM_RH32 38          /* TRW RH-32 */
#define EM_RCE 39           /* Motorola RCE */
#define EM_ARM 40           /* ARM */
#define EM_FAKE_ALPHA 41    /* Digital Alpha */
#define EM_SH 42            /* Hitachi SH */
#define EM_SPARCV9 43       /* SPARC v9 64-bit */
#define EM_TRICORE 44       /* Siemens Tricore */
#define EM_ARC 45           /* Argonaut RISC Core */
#define EM_H8_300 46        /* Hitachi H8/300 */
#define EM_H8_300H 47       /* Hitachi H8/300H */
#define EM_H8S 48           /* Hitachi H8S */
#define EM_H8_500 49        /* Hitachi H8/500 */
#define EM_IA_64 50         /* Intel Merced */
#define EM_MIPS_X 51        /* Stanford MIPS-X */
#define EM_COLDFIRE 52      /* Motorola Coldfire */
#define EM_68HC12 53        /* Motorola M68HC12 */
#define EM_MMA 54           /* Fujitsu MMA Multimedia Accelerator */
#define EM_PCP 55           /* Siemens PCP */
#define EM_NCPU 56          /* Sony nCPU embeeded RISC */
#define EM_NDR1 57          /* Denso NDR1 microprocessor */
#define EM_STARCORE 58      /* Motorola Start*Core processor */
#define EM_ME16 59          /* Toyota ME16 processor */
#define EM_ST100 60         /* STMicroelectronic ST100 processor */
#define EM_TINYJ 61         /* Advanced Logic Corp. Tinyj emb.fam */
#define EM_X86_64 62        /* AMD x86-64 architecture */
#define EM_PDSP 63          /* Sony DSP Processor */
#define EM_PDP10 64         /* Digital PDP-10 */
#define EM_PDP11 65         /* Digital PDP-11 */
#define EM_FX66 66          /* Siemens FX66 microcontroller */
#define EM_ST9PLUS 67       /* STMicroelectronics ST9+ 8/16 mc */
#define EM_ST7 68           /* STmicroelectronics ST7 8 bit mc */
#define EM_68HC16 69        /* Motorola MC68HC16 microcontroller */
#define EM_68HC11 70        /* Motorola MC68HC11 microcontroller */
#define EM_68HC08 71        /* Motorola MC68HC08 microcontroller */
#define EM_68HC05 72        /* Motorola MC68HC05 microcontroller */
#define EM_SVX 73           /* Silicon Graphics SVx */
#define EM_ST19 74          /* STMicroelectronics ST19 8 bit mc */
#define EM_VAX 75           /* Digital VAX */
#define EM_CRIS 76          /* Axis Communications 32-bit emb.proc */
#define EM_JAVELIN 77       /* Infineon Technologies 32-bit emb.proc */
#define EM_FIREPATH 78      /* Element 14 64-bit DSP Processor */
#define EM_ZSP 79           /* LSI Logic 16-bit DSP Processor */
#define EM_MMIX 80          /* Donald Knuth's educational 64-bit proc */
#define EM_HUANY 81         /* Harvard University machine-independent object files */
#define EM_PRISM 82         /* SiTera Prism */
#define EM_AVR 83           /* Atmel AVR 8-bit microcontroller */
#define EM_FR30 84          /* Fujitsu FR30 */
#define EM_D10V 85          /* Mitsubishi D10V */
#define EM_D30V 86          /* Mitsubishi D30V */
#define EM_V850 87          /* NEC v850 */
#define EM_M32R 88          /* Mitsubishi M32R */
#define EM_MN10300 89       /* Matsushita MN10300 */
#define EM_MN10200 90       /* Matsushita MN10200 */
#define EM_PJ 91            /* picoJava */
#define EM_OPENRISC 92      /* OpenRISC 32-bit embedded processor */
#define EM_ARC_COMPACT 93   /* ARC International ARCompact */
#define EM_XTENSA 94        /* Tensilica Xtensa Architecture */
#define EM_VIDEOCORE 95     /* Alphamosaic VideoCore */
#define EM_TMM_GPP 96       /* Thompson Multimedia General Purpose Proc */
#define EM_NS32K 97         /* National Semi. 32000 */
#define EM_TPC 98           /* Tenor Network TPC */
#define EM_SNP1K 99         /* Trebia SNP 1000 */
#define EM_ST200 100        /* STMicroelectronics ST200 */
#define EM_IP2K 101         /* Ubicom IP2xxx */
#define EM_MAX 102          /* MAX processor */
#define EM_CR 103           /* National Semi. CompactRISC */
#define EM_F2MC16 104       /* Fujitsu F2MC16 */
#define EM_MSP430 105       /* Texas Instruments msp430 */
#define EM_BLACKFIN 106     /* Analog Devices Blackfin DSP */
#define EM_SE_C33 107       /* Seiko Epson S1C33 family */
#define EM_SEP 108          /* Sharp embedded microprocessor */
#define EM_ARCA 109         /* Arca RISC */
#define EM_UNICORE 110      /* PKU-Unity & MPRC Peking Uni. mc series */
#define EM_EXCESS 111       /* eXcess configurable cpu */
#define EM_DXP 112          /* Icera Semi. Deep Execution Processor */
#define EM_ALTERA_NIOS2 113 /* Altera Nios II */
#define EM_CRX 114          /* National Semi. CompactRISC CRX */
#define EM_XGATE 115        /* Motorola XGATE */
#define EM_C166 116         /* Infineon C16x/XC16x */
#define EM_M16C 117         /* Renesas M16C */
#define EM_DSPIC30F 118     /* Microchip Technology dsPIC30F */
#define EM_CE 119           /* Freescale Communication Engine RISC */
#define EM_M32C 120         /* Renesas M32C */
/* reserved 121-130 */
#define EM_TSK3000 131       /* Altium TSK3000 */
#define EM_RS08 132          /* Freescale RS08 */
#define EM_SHARC 133         /* Analog Devices SHARC family */
#define EM_ECOG2 134         /* Cyan Technology eCOG2 */
#define EM_SCORE7 135        /* Sunplus S+core7 RISC */
#define EM_DSP24 136         /* New Japan Radio (NJR) 24-bit DSP */
#define EM_VIDEOCORE3 137    /* Broadcom VideoCore III */
#define EM_LATTICEMICO32 138 /* RISC for Lattice FPGA */
#define EM_SE_C17 139        /* Seiko Epson C17 */
#define EM_TI_C6000 140      /* Texas Instruments TMS320C6000 DSP */
#define EM_TI_C2000 141      /* Texas Instruments TMS320C2000 DSP */
#define EM_TI_C5500 142      /* Texas Instruments TMS320C55x DSP */
#define EM_TI_ARP32 143      /* Texas Instruments App. Specific RISC */
#define EM_TI_PRU 144        /* Texas Instruments Prog. Realtime Unit */
/* reserved 145-159 */
#define EM_MMDSP_PLUS 160  /* STMicroelectronics 64bit VLIW DSP */
#define EM_CYPRESS_M8C 161 /* Cypress M8C */
#define EM_R32C 162        /* Renesas R32C */
#define EM_TRIMEDIA 163    /* NXP Semi. TriMedia */
#define EM_QDSP6 164       /* QUALCOMM DSP6 */
#define EM_8051 165        /* Intel 8051 and variants */
#define EM_STXP7X 166      /* STMicroelectronics STxP7x */
#define EM_NDS32 167       /* Andes Tech. compact code emb. RISC */
#define EM_ECOG1X 168      /* Cyan Technology eCOG1X */
#define EM_MAXQ30 169      /* Dallas Semi. MAXQ30 mc */
#define EM_XIMO16 170      /* New Japan Radio (NJR) 16-bit DSP */
#define EM_MANIK 171       /* M2000 Reconfigurable RISC */
#define EM_CRAYNV2 172     /* Cray NV2 vector architecture */
#define EM_RX 173          /* Renesas RX */
#define EM_METAG 174       /* Imagination Tech. META */
#define EM_MCST_ELBRUS 175 /* MCST Elbrus */
#define EM_ECOG16 176      /* Cyan Technology eCOG16 */
#define EM_CR16 177        /* National Semi. CompactRISC CR16 */
#define EM_ETPU 178        /* Freescale Extended Time Processing Unit */
#define EM_SLE9X 179       /* Infineon Tech. SLE9X */
#define EM_L10M 180        /* Intel L10M */
#define EM_K10M 181        /* Intel K10M */
/* reserved 182 */
#define EM_AARCH64 183 /* ARM AARCH64 */
/* reserved 184 */
#define EM_AVR32 185        /* Amtel 32-bit microprocessor */
#define EM_STM8 186         /* STMicroelectronics STM8 */
#define EM_TILE64 187       /* Tileta TILE64 */
#define EM_TILEPRO 188      /* Tilera TILEPro */
#define EM_MICROBLAZE 189   /* Xilinx MicroBlaze */
#define EM_CUDA 190         /* NVIDIA CUDA */
#define EM_TILEGX 191       /* Tilera TILE-Gx */
#define EM_CLOUDSHIELD 192  /* CloudShield */
#define EM_COREA_1ST 193    /* KIPO-KAIST Core-A 1st gen. */
#define EM_COREA_2ND 194    /* KIPO-KAIST Core-A 2nd gen. */
#define EM_ARC_COMPACT2 195 /* Synopsys ARCompact V2 */
#define EM_OPEN8 196        /* Open8 RISC */
#define EM_RL78 197         /* Renesas RL78 */
#define EM_VIDEOCORE5 198   /* Broadcom VideoCore V */
#define EM_78KOR 199        /* Renesas 78KOR */
#define EM_56800EX 200      /* Freescale 56800EX DSC */
#define EM_BA1 201          /* Beyond BA1 */
#define EM_BA2 202          /* Beyond BA2 */
#define EM_XCORE 203        /* XMOS xCORE */
#define EM_MCHP_PIC 204     /* Microchip 8-bit PIC(r) */
/* reserved 205-209 */
#define EM_KM32 210        /* KM211 KM32 */
#define EM_KMX32 211       /* KM211 KMX32 */
#define EM_EMX16 212       /* KM211 KMX16 */
#define EM_EMX8 213        /* KM211 KMX8 */
#define EM_KVARC 214       /* KM211 KVARC */
#define EM_CDP 215         /* Paneve CDP */
#define EM_COGE 216        /* Cognitive Smart Memory Processor */
#define EM_COOL 217        /* Bluechip CoolEngine */
#define EM_NORC 218        /* Nanoradio Optimized RISC */
#define EM_CSR_KALIMBA 219 /* CSR Kalimba */
#define EM_Z80 220         /* Zilog Z80 */
#define EM_VISIUM 221      /* Controls and Data Services VISIUMcore */
#define EM_FT32 222        /* FTDI Chip FT32 */
#define EM_MOXIE 223       /* Moxie processor */
#define EM_AMDGPU 224      /* AMD GPU */
/* reserved 225-242 */
#define EM_RISCV 243 /* RISC-V */

#define EM_BPF 247  /* Linux BPF -- in-kernel virtual machine */
#define EM_CSKY 252 /* C-SKY */

#define EM_NUM 253

/* Old spellings/synonyms.  */

#define EM_ARC_A5 EM_ARC_COMPACT

/* If it is necessary to assign new unofficial EM_* values, please
   pick large random numbers (0x8523, 0xa7f2, etc.) to minimize the
   chances of collision with official or non-GNU unofficial values.  */

#define EM_ALPHA 0x9026

/* Legal values for e_version (version).  */

#define EV_NONE 0    /* Invalid ELF version */
#define EV_CURRENT 1 /* Current version */
#define EV_NUM 2

/* Section header.  */

typedef struct {
    Elf32_Word sh_name;      /* Section name (string tbl index) */
    Elf32_Word sh_type;      /* Section type */
    Elf32_Word sh_flags;     /* Section flags */
    Elf32_Addr sh_addr;      /* Section virtual addr at execution */
    Elf32_Off sh_offset;     /* Section file offset */
    Elf32_Word sh_size;      /* Section size in bytes */
    Elf32_Word sh_link;      /* Link to another section */
    Elf32_Word sh_info;      /* Additional section information */
    Elf32_Word sh_addralign; /* Section alignment */
    Elf32_Word sh_entsize;   /* Entry size if section holds table */
} Elf32_Shdr;

/* Special section indices.  */

#define SHN_UNDEF 0          /* Undefined section */
#define SHN_LORESERVE 0xff00 /* Start of reserved indices */
#define SHN_LOPROC 0xff00    /* Start of processor-specific */
#define SHN_BEFORE 0xff00    /* Order section before all others (Solaris). */
#define SHN_AFTER 0xff01     /* Order section after all others (Solaris). */
#define SHN_HIPROC 0xff1f    /* End of processor-specific */
#define SHN_LOOS 0xff20      /* Start of OS-specific */
#define SHN_HIOS 0xff3f      /* End of OS-specific */
#define SHN_ABS 0xfff1       /* Associated symbol is absolute */
#define SHN_COMMON 0xfff2    /* Associated symbol is common */
#define SHN_XINDEX 0xffff    /* Index is in extra table.  */
#define SHN_HIRESERVE 0xffff /* End of reserved indices */
/* Legal values for sh_type (section type).  */

#define SHT_NULL 0                    /* Section header table entry unused */
#define SHT_PROGBITS 1                /* Program data */
#define SHT_SYMTAB 2                  /* Symbol table */
#define SHT_STRTAB 3                  /* String table */
#define SHT_RELA 4                    /* Relocation entries with addends */
#define SHT_HASH 5                    /* Symbol hash table */
#define SHT_DYNAMIC 6                 /* Dynamic linking information */
#define SHT_NOTE 7                    /* Notes */
#define SHT_NOBITS 8                  /* Program space with no data (bss) */
#define SHT_REL 9                     /* Relocation entries, no addends */
#define SHT_SHLIB 10                  /* Reserved */
#define SHT_DYNSYM 11                 /* Dynamic linker symbol table */
#define SHT_INIT_ARRAY 14             /* Array of constructors */
#define SHT_FINI_ARRAY 15             /* Array of destructors */
#define SHT_PREINIT_ARRAY 16          /* Array of pre-constructors */
#define SHT_GROUP 17                  /* Section group */
#define SHT_SYMTAB_SHNDX 18           /* Extended section indeces */
#define SHT_NUM 19                    /* Number of defined types.  */
#define SHT_LOOS 0x60000000           /* Start OS-specific.  */
#define SHT_GNU_ATTRIBUTES 0x6ffffff5 /* Object attributes.  */
#define SHT_GNU_HASH 0x6ffffff6       /* GNU-style hash table.  */
#define SHT_GNU_LIBLIST 0x6ffffff7    /* Prelink library list */
#define SHT_CHECKSUM 0x6ffffff8       /* Checksum for DSO content.  */
#define SHT_LOSUNW 0x6ffffffa         /* Sun-specific low bound.  */
#define SHT_SUNW_move 0x6ffffffa
#define SHT_SUNW_COMDAT 0x6ffffffb
#define SHT_SUNW_syminfo 0x6ffffffc
#define SHT_GNU_verdef 0x6ffffffd  /* Version definition section.  */
#define SHT_GNU_verneed 0x6ffffffe /* Version needs section.  */
#define SHT_GNU_versym 0x6fffffff  /* Version symbol table.  */
#define SHT_HISUNW 0x6fffffff      /* Sun-specific high bound.  */
#define SHT_HIOS 0x6fffffff        /* End OS-specific type */
#define SHT_LOPROC 0x70000000      /* Start of processor-specific */
#define SHT_HIPROC 0x7fffffff      /* End of processor-specific */
#define SHT_LOUSER 0x80000000      /* Start of application-specific */
#define SHT_HIUSER 0x8fffffff      /* End of application-specific */

/* Symbol table entry.  */

typedef struct {
    Elf32_Word st_name;     /* Symbol name (string tbl index) */
    Elf32_Addr st_value;    /* Symbol value */
    Elf32_Word st_size;     /* Symbol size */
    unsigned char st_info;  /* Symbol type and binding */
    unsigned char st_other; /* Symbol visibility */
    Elf32_Section st_shndx; /* Section index */
} Elf32_Sym;

/* How to extract and insert information held in the st_info field.  */

#define ELF32_ST_BIND(val) (((unsigned char)(val)) >> 4)
#define ELF32_ST_TYPE(val) ((val)&0xf)
#define ELF32_ST_INFO(bind, type) (((bind) << 4) + ((type)&0xf))

/* Both Elf32_Sym and Elf64_Sym use the same one-byte st_info field.  */
#define ELF64_ST_BIND(val) ELF32_ST_BIND(val)
#define ELF64_ST_TYPE(val) ELF32_ST_TYPE(val)
#define ELF64_ST_INFO(bind, type) ELF32_ST_INFO((bind), (type))

/* Legal values for ST_BIND subfield of st_info (symbol binding).  */

#define STB_LOCAL 0       /* Local symbol */
#define STB_GLOBAL 1      /* Global symbol */
#define STB_WEAK 2        /* Weak symbol */
#define STB_NUM 3         /* Number of defined types.  */
#define STB_LOOS 10       /* Start of OS-specific */
#define STB_GNU_UNIQUE 10 /* Unique symbol.  */
#define STB_HIOS 12       /* End of OS-specific */
#define STB_LOPROC 13     /* Start of processor-specific */
#define STB_HIPROC 15     /* End of processor-specific */

/* Legal values for ST_TYPE subfield of st_info (symbol type).  */

#define STT_NOTYPE 0     /* Symbol type is unspecified */
#define STT_OBJECT 1     /* Symbol is a data object */
#define STT_FUNC 2       /* Symbol is a code object */
#define STT_SECTION 3    /* Symbol associated with a section */
#define STT_FILE 4       /* Symbol's name is file name */
#define STT_COMMON 5     /* Symbol is a common data object */
#define STT_TLS 6        /* Symbol is thread-local data object*/
#define STT_NUM 7        /* Number of defined types.  */
#define STT_LOOS 10      /* Start of OS-specific */
#define STT_GNU_IFUNC 10 /* Symbol is indirect code object */
#define STT_HIOS 12      /* End of OS-specific */
#define STT_LOPROC 13    /* Start of processor-specific */
#define STT_HIPROC 15    /* End of processor-specific */

/* Symbol table indices are found in the hash buckets and chain table
   of a symbol hash table section.  This special index value indicates
   the end of a chain, meaning no further symbols are found in that bucket.  */

#define STN_UNDEF 0 /* End of a chain.  */

/* How to extract and insert information held in the st_other field.  */

#define ELF32_ST_VISIBILITY(o) ((o)&0x03)

/* For ELF64 the definitions are the same.  */
#define ELF64_ST_VISIBILITY(o) ELF32_ST_VISIBILITY(o)

/* Symbol visibility specification encoded in the st_other field.  */
#define STV_DEFAULT 0   /* Default symbol visibility rules */
#define STV_INTERNAL 1  /* Processor specific hidden class */
#define STV_HIDDEN 2    /* Sym unavailable in other modules */
#define STV_PROTECTED 3 /* Not preemptible, not exported */

/* Relocation table entry without addend (in section of type SHT_REL).  */

typedef struct {
    Elf32_Addr r_offset; /* Address */
    Elf32_Word r_info;   /* Relocation type and symbol index */
} Elf32_Rel;

/* Relocation table entry with addend (in section of type SHT_RELA).  */

typedef struct {
    Elf32_Addr  r_offset;   /* Address */
    Elf32_Word  r_info;     /* Relocation type and symbol index */
    Elf32_Sword r_addend;   /* Addend */
} Elf32_Rela;

/* How to extract and insert information held in the r_info field.  */

#define ELF32_R_SYM(val) ((val) >> 8)
#define ELF32_R_TYPE(val) ((val)&0xff)
#define ELF32_R_INFO(sym, type) (((sym) << 8) + ((type)&0xff))

/* MIPS R3000 specific definitions.  */

/* Legal values for e_flags field of Elf32_Ehdr.  */

#define EF_MIPS_NOREORDER 1 /* A .noreorder directive was used.  */
#define EF_MIPS_PIC 2       /* Contains PIC code.  */
#define EF_MIPS_CPIC 4      /* Uses PIC calling sequence.  */
#define EF_MIPS_XGOT 8
#define EF_MIPS_64BIT_WHIRL 16
#define EF_MIPS_ABI2 32
#define EF_MIPS_ABI_ON32 64
#define EF_MIPS_FP64 512        /* Uses FP64 (12 callee-saved).  */
#define EF_MIPS_NAN2008 1024    /* Uses IEEE 754-2008 NaN encoding.  */
#define EF_MIPS_ARCH 0xf0000000 /* MIPS architecture level.  */

/* Legal values for MIPS architecture level.  */

#define EF_MIPS_ARCH_1 0x00000000    /* -mips1 code.  */
#define EF_MIPS_ARCH_2 0x10000000    /* -mips2 code.  */
#define EF_MIPS_ARCH_3 0x20000000    /* -mips3 code.  */
#define EF_MIPS_ARCH_4 0x30000000    /* -mips4 code.  */
#define EF_MIPS_ARCH_5 0x40000000    /* -mips5 code.  */
#define EF_MIPS_ARCH_32 0x50000000   /* MIPS32 code.  */
#define EF_MIPS_ARCH_64 0x60000000   /* MIPS64 code.  */
#define EF_MIPS_ARCH_32R2 0x70000000 /* MIPS32r2 code.  */
#define EF_MIPS_ARCH_64R2 0x80000000 /* MIPS64r2 code.  */

/* The following are unofficial names and should not be used.  */

#define E_MIPS_ARCH_1 EF_MIPS_ARCH_1
#define E_MIPS_ARCH_2 EF_MIPS_ARCH_2
#define E_MIPS_ARCH_3 EF_MIPS_ARCH_3
#define E_MIPS_ARCH_4 EF_MIPS_ARCH_4
#define E_MIPS_ARCH_5 EF_MIPS_ARCH_5
#define E_MIPS_ARCH_32 EF_MIPS_ARCH_32
#define E_MIPS_ARCH_64 EF_MIPS_ARCH_64

/* Special section indices.  */

#define SHN_MIPS_ACOMMON 0xff00    /* Allocated common symbols.  */
#define SHN_MIPS_TEXT 0xff01       /* Allocated test symbols.  */
#define SHN_MIPS_DATA 0xff02       /* Allocated data symbols.  */
#define SHN_MIPS_SCOMMON 0xff03    /* Small common symbols.  */
#define SHN_MIPS_SUNDEFINED 0xff04 /* Small undefined symbols.  */

/* Legal values for sh_type field of Elf32_Shdr.  */

#define SHT_MIPS_LIBLIST 0x70000000 /* Shared objects used in link.  */
#define SHT_MIPS_MSYM 0x70000001
#define SHT_MIPS_CONFLICT 0x70000002 /* Conflicting symbols.  */
#define SHT_MIPS_GPTAB 0x70000003    /* Global data area sizes.  */
#define SHT_MIPS_UCODE 0x70000004    /* Reserved for SGI/MIPS compilers */
#define SHT_MIPS_DEBUG 0x70000005    /* MIPS ECOFF debugging info.  */
#define SHT_MIPS_REGINFO 0x70000006  /* Register usage information.  */
#define SHT_MIPS_PACKAGE 0x70000007
#define SHT_MIPS_PACKSYM 0x70000008
#define SHT_MIPS_RELD 0x70000009
#define SHT_MIPS_IFACE 0x7000000b
#define SHT_MIPS_CONTENT 0x7000000c
#define SHT_MIPS_OPTIONS 0x7000000d /* Miscellaneous options.  */
#define SHT_MIPS_SHDR 0x70000010
#define SHT_MIPS_FDESC 0x70000011
#define SHT_MIPS_EXTSYM 0x70000012
#define SHT_MIPS_DENSE 0x70000013
#define SHT_MIPS_PDESC 0x70000014
#define SHT_MIPS_LOCSYM 0x70000015
#define SHT_MIPS_AUXSYM 0x70000016
#define SHT_MIPS_OPTSYM 0x70000017
#define SHT_MIPS_LOCSTR 0x70000018
#define SHT_MIPS_LINE 0x70000019
#define SHT_MIPS_RFDESC 0x7000001a
#define SHT_MIPS_DELTASYM 0x7000001b
#define SHT_MIPS_DELTAINST 0x7000001c
#define SHT_MIPS_DELTACLASS 0x7000001d
#define SHT_MIPS_DWARF 0x7000001e /* DWARF debugging information.  */
#define SHT_MIPS_DELTADECL 0x7000001f
#define SHT_MIPS_SYMBOL_LIB 0x70000020
#define SHT_MIPS_EVENTS 0x70000021 /* Event section.  */
#define SHT_MIPS_TRANSLATE 0x70000022
#define SHT_MIPS_PIXIE 0x70000023
#define SHT_MIPS_XLATE 0x70000024
#define SHT_MIPS_XLATE_DEBUG 0x70000025
#define SHT_MIPS_WHIRL 0x70000026
#define SHT_MIPS_EH_REGION 0x70000027
#define SHT_MIPS_XLATE_OLD 0x70000028
#define SHT_MIPS_PDR_EXCEPTION 0x70000029
#define SHT_MIPS_XHASH 0x7000002b

/* Legal values for sh_flags field of Elf32_Shdr.  */

#define SHF_MIPS_GPREL 0x10000000 /* Must be in global data area.  */
#define SHF_MIPS_MERGE 0x20000000
#define SHF_MIPS_ADDR 0x40000000
#define SHF_MIPS_STRINGS 0x80000000
#define SHF_MIPS_NOSTRIP 0x08000000
#define SHF_MIPS_LOCAL 0x04000000
#define SHF_MIPS_NAMES 0x02000000
#define SHF_MIPS_NODUPE 0x01000000

/* Symbol tables.  */

/* MIPS specific values for `st_other'.  */
#define STO_MIPS_DEFAULT 0x0
#define STO_MIPS_INTERNAL 0x1
#define STO_MIPS_HIDDEN 0x2
#define STO_MIPS_PROTECTED 0x3
#define STO_MIPS_PLT 0x8
#define STO_MIPS_SC_ALIGN_UNUSED 0xff

/* MIPS specific values for `st_info'.  */
#define STB_MIPS_SPLIT_COMMON 13

/* MIPS relocs.  */

#define R_MIPS_NONE 0     /* No reloc */
#define R_MIPS_16 1       /* Direct 16 bit */
#define R_MIPS_32 2       /* Direct 32 bit */
#define R_MIPS_REL32 3    /* PC relative 32 bit */
#define R_MIPS_26 4       /* Direct 26 bit shifted */
#define R_MIPS_HI16 5     /* High 16 bit */
#define R_MIPS_LO16 6     /* Low 16 bit */
#define R_MIPS_GPREL16 7  /* GP relative 16 bit */
#define R_MIPS_LITERAL 8  /* 16 bit literal entry */
#define R_MIPS_GOT16 9    /* 16 bit GOT entry */
#define R_MIPS_PC16 10    /* PC relative 16 bit */
#define R_MIPS_CALL16 11  /* 16 bit GOT entry for function */
#define R_MIPS_GPREL32 12 /* GP relative 32 bit */

#define R_MIPS_SHIFT5 16
#define R_MIPS_SHIFT6 17
#define R_MIPS_64 18
#define R_MIPS_GOT_DISP 19
#define R_MIPS_GOT_PAGE 20
#define R_MIPS_GOT_OFST 21
#define R_MIPS_GOT_HI16 22
#define R_MIPS_GOT_LO16 23
#define R_MIPS_SUB 24
#define R_MIPS_INSERT_A 25
#define R_MIPS_INSERT_B 26
#define R_MIPS_DELETE 27
#define R_MIPS_HIGHER 28
#define R_MIPS_HIGHEST 29
#define R_MIPS_CALL_HI16 30
#define R_MIPS_CALL_LO16 31
#define R_MIPS_SCN_DISP 32
#define R_MIPS_REL16 33
#define R_MIPS_ADD_IMMEDIATE 34
#define R_MIPS_PJUMP 35
#define R_MIPS_RELGOT 36
#define R_MIPS_JALR 37
#define R_MIPS_TLS_DTPMOD32 38    /* Module number 32 bit */
#define R_MIPS_TLS_DTPREL32 39    /* Module-relative offset 32 bit */
#define R_MIPS_TLS_DTPMOD64 40    /* Module number 64 bit */
#define R_MIPS_TLS_DTPREL64 41    /* Module-relative offset 64 bit */
#define R_MIPS_TLS_GD 42          /* 16 bit GOT offset for GD */
#define R_MIPS_TLS_LDM 43         /* 16 bit GOT offset for LDM */
#define R_MIPS_TLS_DTPREL_HI16 44 /* Module-relative offset, high 16 bits */
#define R_MIPS_TLS_DTPREL_LO16 45 /* Module-relative offset, low 16 bits */
#define R_MIPS_TLS_GOTTPREL 46    /* 16 bit GOT offset for IE */
#define R_MIPS_TLS_TPREL32 47     /* TP-relative offset, 32 bit */
#define R_MIPS_TLS_TPREL64 48     /* TP-relative offset, 64 bit */
#define R_MIPS_TLS_TPREL_HI16 49  /* TP-relative offset, high 16 bits */
#define R_MIPS_TLS_TPREL_LO16 50  /* TP-relative offset, low 16 bits */
#define R_MIPS_GLOB_DAT 51
#define R_MIPS_COPY 126
#define R_MIPS_JUMP_SLOT 127
/* Keep this the last entry.  */
#define R_MIPS_NUM 128

#endif /* MIPS_ELF_H */
