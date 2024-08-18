OUTPUT_ARCH (mips)

/* Soundfont Linker Script, maps data into rodata and adds a file length symbol */

SECTIONS {

    .rodata :
    {
        *(.data*)
        *(.rodata*)
        . = ALIGN(16);
        __LEN__ = . - ADDR(.rodata);
    }

    /DISCARD/ :
    {
        *(*);
    }
}
