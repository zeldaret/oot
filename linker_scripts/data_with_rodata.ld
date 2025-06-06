OUTPUT_ARCH (mips)

/* Maps data into rodata, used for audio tables and z_message/z_game_over */

SECTIONS {
    .rodata :
    {
        *(.data)
        *(.rodata)
        *(.rodata.str*)
        *(.rodata.cst*)
    }

    /DISCARD/ :
    {
        /* GNU ld assumes that the linker script always combines .gptab.data and
         * .gptab.sdata into .gptab.sdata, and likewise for .gptab.bss and .gptab.sbss.
         * To avoid dealing with this, we just discard all .gptab sections.
         */
        *(.gptab.*)
        /* Inhibit merging of COMMON into scommon */
        *(.scommon)
    }
}
