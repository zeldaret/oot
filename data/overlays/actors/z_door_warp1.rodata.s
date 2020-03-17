.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8099C5B0
    .asciz "\nBOSSWARP arg_data=[%d]"
    .balign 4

glabel D_8099C5C8
    .asciz "\n\n\nじかんがきたからおーしまい fade_direction=[%d]"
    .balign 4

glabel D_8099C5FC
 .word 0x0A0A0AA4, 0xAAA4EFA4, 0xEAA4AAA4, 0xEFA4EA00
glabel D_8099C60C
    .asciz "\nparcent=[%f]"
    .balign 4

glabel D_8099C61C
    .asciz "../z_door_warp1.c"
    .balign 4

glabel D_8099C630
    .asciz "../z_door_warp1.c"
    .balign 4

glabel D_8099C644
    .asciz "../z_door_warp1.c"
    .balign 4

glabel D_8099C658
    .asciz "../z_door_warp1.c"
    .balign 4

glabel D_8099C66C
    .asciz "../z_door_warp1.c"
    .balign 4

glabel D_8099C680
    .asciz "../z_door_warp1.c"
    .balign 4

glabel D_8099C694
    .asciz "../z_door_warp1.c"
    .balign 4

glabel D_8099C6A8
    .asciz "../z_door_warp1.c"
    .balign 4

glabel D_8099C6BC
    .asciz "../z_door_warp1.c"
    .balign 4

glabel jtbl_8099C6D0
.word L80998A0C
.word L80998A5C
.word L80998A28
.word L80998A34
.word L80998A0C
.word L80998A0C
.word L80998A0C
glabel D_8099C6EC
 .word 0x3E6B851F
glabel D_8099C6F0
 .word 0x3F19999A
glabel D_8099C6F4
 .word 0x3E99999A
glabel D_8099C6F8
 .word 0x3E99999A
glabel jtbl_8099C6FC
.word L80998B6C
.word L80998B6C
.word L80998AA0
.word L80998B6C
.word L80998AA0
.word L80998B6C
.word L80998AA0
.word L80998B6C
.word L80998B6C
.word L80998B6C
glabel D_8099C724
 .word 0x3E99999A
glabel D_8099C728
 .word 0x3E99999A
glabel D_8099C72C
 .word 0x3E99999A
glabel D_8099C730
 .word 0x3D4C63F1
glabel D_8099C734
 .word 0x3D9DB22D
glabel D_8099C738
 .word 0x3DB851EC
glabel D_8099C73C
 .word 0x3DCCCCCD
glabel D_8099C740
 .word 0xBDCCCCCD
glabel D_8099C744
 .word 0xBDCCCCCD
glabel D_8099C748
 .word 0x3A83126F
glabel D_8099C74C
 .word 0x3A83126F
glabel D_8099C750
 .word 0x3A83126F
glabel D_8099C754
 .word 0x3DCCCCCD
glabel jtbl_8099C758
.word L80999558
.word L80999548
.word L80999538
.word L80999538
.word L80999538
.word L80999568
.word L80999538
.word L80999538
.word L80999538
.word L80999538
.word L80999538
.word L80999538
.word L80999538
glabel D_8099C78C
 .word 0x444EC000
glabel D_8099C790
 .word 0xC549C000
glabel D_8099C794
 .word 0x3C23D70A
glabel D_8099C798
 .word 0x3C23D70A
glabel D_8099C79C
 .word 0x3C23D70A
glabel D_8099C7A0
 .word 0x3C23D70A
glabel D_8099C7A4
 .word 0x3DCCCCCD
glabel D_8099C7A8
 .word 0x3C23D70A
glabel D_8099C7AC
 .word 0x3DCCCCCD
glabel D_8099C7B0
 .word 0x3CA3D70A
glabel D_8099C7B4
 .word 0x3C23D70A
glabel D_8099C7B8
 .word 0x3DCCCCCD
glabel D_8099C7BC
 .word 0x3DCCCCCD
glabel D_8099C7C0
 .word 0x3DCCCCCD
glabel D_8099C7C4
 .word 0x3C656041
glabel D_8099C7C8
 .word 0x3C23D70A
glabel D_8099C7CC
 .word 0x3C23D70A
glabel D_8099C7D0
 .word 0x3DCCCCCD
glabel D_8099C7D4
 .word 0x3C23D70A
glabel D_8099C7D8
 .word 0x3C23D70A
glabel D_8099C7DC
 .word 0x3C23D70A
glabel D_8099C7E0
 .word 0x3C23D70A
glabel D_8099C7E4
 .word 0x3DCCCCCD
glabel D_8099C7E8
 .word 0x3DCCCCCD
glabel D_8099C7EC
 .word 0x3FD9999A
glabel jtbl_8099C7F0
.word L8099C550
.word L8099C520
.word L8099C540
.word L8099C540
.word L8099C540
.word L8099C560
.word L8099C540
.word L8099C540
.word L8099C540
.word L8099C540
.word L8099C540
.word L8099C540
.word L8099C540
.word 0x00000000, 0x00000000, 0x00000000

