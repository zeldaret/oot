.rdata
glabel D_8013C190
    .asciz "../z_kanfont.c"
    .balign 4

.text
glabel func_8006EE60
/* AE6000 8006EE60 27BDFFE0 */  addiu $sp, $sp, -0x20
/* AE6004 8006EE64 AFA50024 */  sw    $a1, 0x24($sp)
/* AE6008 8006EE68 AFA60028 */  sw    $a2, 0x28($sp)
/* AE600C 8006EE6C 97AF002A */  lhu   $t7, 0x2a($sp)
/* AE6010 8006EE70 93B80027 */  lbu   $t8, 0x27($sp)
/* AE6014 8006EE74 AFA40020 */  sw    $a0, 0x20($sp)
/* AE6018 8006EE78 3C08008C */  lui   $t0, %hi(_nes_font_staticSegmentRomStart) # $t0, 0x8c
/* AE601C 8006EE7C AFBF001C */  sw    $ra, 0x1c($sp)
/* AE6020 8006EE80 25081000 */  addiu $t0, %lo(_nes_font_staticSegmentRomStart) # addiu $t0, $t0, 0x1000
/* AE6024 8006EE84 3C078014 */  lui   $a3, %hi(D_8013C190) # $a3, 0x8014
/* AE6028 8006EE88 2409005D */  li    $t1, 93
/* AE602C 8006EE8C 008F2021 */  addu  $a0, $a0, $t7
/* AE6030 8006EE90 0018C9C0 */  sll   $t9, $t8, 7
/* AE6034 8006EE94 03282821 */  addu  $a1, $t9, $t0
/* AE6038 8006EE98 24840008 */  addiu $a0, $a0, 8
/* AE603C 8006EE9C AFA90010 */  sw    $t1, 0x10($sp)
/* AE6040 8006EEA0 24E7C190 */  addiu $a3, %lo(D_8013C190) # addiu $a3, $a3, -0x3e70
/* AE6044 8006EEA4 0C0006A8 */  jal   DmaMgr_SendRequest1
/* AE6048 8006EEA8 24060080 */   li    $a2, 128
/* AE604C 8006EEAC 8FBF001C */  lw    $ra, 0x1c($sp)
/* AE6050 8006EEB0 27BD0020 */  addiu $sp, $sp, 0x20
/* AE6054 8006EEB4 03E00008 */  jr    $ra
/* AE6058 8006EEB8 00000000 */   nop   

