OUTPUT_ARCH (mips)

/* Audio Table Linker Script, maps data into rodata */

SECTIONS {

    .rodata :
    {
        *(.data*)
        *(.rodata*)
    }

    /DISCARD/ :
    {
        *(*);
    }
}
