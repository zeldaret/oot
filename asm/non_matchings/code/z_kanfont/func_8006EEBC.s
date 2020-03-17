.rdata
glabel D_8013C1A0
    .asciz "../z_kanfont.c"
    .balign 4

.text
glabel func_8006EEBC
/* AE605C 8006EEBC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* AE6060 8006EEC0 AFA50024 */  sw    $a1, 0x24($sp)
/* AE6064 8006EEC4 97AE0026 */  lhu   $t6, 0x26($sp)
/* AE6068 8006EEC8 3C19008C */  lui   $t9, %hi(_message_staticSegmentRomStart) # $t9, 0x8c
/* AE606C 8006EECC AFBF001C */  sw    $ra, 0x1c($sp)
/* AE6070 8006EED0 000E79C0 */  sll   $t7, $t6, 7
/* AE6074 8006EED4 AFA40020 */  sw    $a0, 0x20($sp)
/* AE6078 8006EED8 25F84000 */  addiu $t8, $t7, 0x4000
/* AE607C 8006EEDC 2739A000 */  addiu $t9, %lo(_message_staticSegmentRomStart) # addiu $t9, $t9, -0x6000
/* AE6080 8006EEE0 3C078014 */  lui   $a3, %hi(D_8013C1A0) # $a3, 0x8014
/* AE6084 8006EEE4 24080064 */  li    $t0, 100
/* AE6088 8006EEE8 AFA80010 */  sw    $t0, 0x10($sp)
/* AE608C 8006EEEC 24E7C1A0 */  addiu $a3, %lo(D_8013C1A0) # addiu $a3, $a3, -0x3e60
/* AE6090 8006EEF0 03192821 */  addu  $a1, $t8, $t9
/* AE6094 8006EEF4 24843C08 */  addiu $a0, $a0, 0x3c08
/* AE6098 8006EEF8 0C0006A8 */  jal   DmaMgr_SendRequest1
/* AE609C 8006EEFC 24060080 */   li    $a2, 128
/* AE60A0 8006EF00 8FBF001C */  lw    $ra, 0x1c($sp)
/* AE60A4 8006EF04 27BD0020 */  addiu $sp, $sp, 0x20
/* AE60A8 8006EF08 03E00008 */  jr    $ra
/* AE60AC 8006EF0C 00000000 */   nop   

