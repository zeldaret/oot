OUTPUT_FORMAT("elf32-bigmips", "elf32-bigmips", "elf32-littlemips")
OUTPUT_ARCH (mips)

ENTRY_POINT = 0;
ENTRY(ENTRY_POINT);

SECTIONS {
	. = ENTRY_POINT;
	.data ALIGN(16): { *(.data) *(.rodata) *(.bss) }
	.text ALIGN(16): { *(.text) }
	.MIPS.abiflags ALIGN(16): { *(.MIPS.abiflags) }
}
