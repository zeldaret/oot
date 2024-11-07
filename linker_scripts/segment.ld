OUTPUT_ARCH (mips)

/* Pass through all sections for partial linking of overlays. Also performs constant merging for GCC. */

SECTIONS {

    .rodata :
    {
        *(*.rodata.cst4)
        *(*.rodata.cst8)
        *(*.rodata.*)
    }

    /DISCARD/ :
    {
        /* GNU ld assumes that the linker script always combines .gptab.data and
         * .gptab.sdata into .gptab.sdata, and likewise for .gptab.bss and .gptab.sbss.
         * To avoid dealing with this, we just discard all .gptab sections.
         */
        *(.gptab.*)
    }
}
