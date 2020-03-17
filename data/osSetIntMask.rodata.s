.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel __osRcpImTable
    .hword 0x0555
    .hword 0x0556
    .hword 0x0559
    .hword 0x055A
    .hword 0x0565
    .hword 0x0566
    .hword 0x0569
    .hword 0x056A
    .hword 0x0595
    .hword 0x0596
    .hword 0x0599
    .hword 0x059A
    .hword 0x05A5
    .hword 0x05A6
    .hword 0x05A9
    .hword 0x05AA
    .hword 0x0655
    .hword 0x0656
    .hword 0x0659
    .hword 0x065A
    .hword 0x0665
    .hword 0x0666
    .hword 0x0669
    .hword 0x066A
    .hword 0x0695
    .hword 0x0696
    .hword 0x0699
    .hword 0x069A
    .hword 0x06A5
    .hword 0x06A6
    .hword 0x06A9
    .hword 0x06AA
    .hword 0x0955
    .hword 0x0956
    .hword 0x0959
    .hword 0x095A
    .hword 0x0965
    .hword 0x0966
    .hword 0x0969
    .hword 0x096A
    .hword 0x0995
    .hword 0x0996
    .hword 0x0999
    .hword 0x099A
    .hword 0x09A5
    .hword 0x09A6
    .hword 0x09A9
    .hword 0x09AA
    .hword 0x0A55
    .hword 0x0A56
    .hword 0x0A59
    .hword 0x0A5A
    .hword 0x0A65
    .hword 0x0A66
    .hword 0x0A69
    .hword 0x0A6A
    .hword 0x0A95
    .hword 0x0A96
    .hword 0x0A99
    .hword 0x0A9A
    .hword 0x0AA5
    .hword 0x0AA6
    .hword 0x0AA9
    .hword 0x0AAA
