.rdata
glabel D_8013F2E0
    .asciz "../z_sample.c"
    .balign 4

glabel D_8013F2F0
    .asciz "../z_sample.c"
    .balign 4

.text
glabel func_80097904
/* B0EAA4 80097904 3C0E01AF */  lui   $t6, %hi(_title_staticSegmentRomEnd) # $t6, 0x1af
/* B0EAA8 80097908 3C0F01AA */  lui   $t7, %hi(_title_staticSegmentRomStart) # $t7, 0x1aa
/* B0EAAC 8009790C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B0EAB0 80097910 25EF4000 */  addiu $t7, %lo(_title_staticSegmentRomStart) # addiu $t7, $t7, 0x4000
/* B0EAB4 80097914 25CEB440 */  addiu $t6, %lo(_title_staticSegmentRomEnd) # addiu $t6, $t6, -0x4bc0
/* B0EAB8 80097918 AFBF001C */  sw    $ra, 0x1c($sp)
/* B0EABC 8009791C 01CF2823 */  subu  $a1, $t6, $t7
/* B0EAC0 80097920 3C068014 */  lui   $a2, %hi(D_8013F2E0) # $a2, 0x8014
/* B0EAC4 80097924 AFA40028 */  sw    $a0, 0x28($sp)
/* B0EAC8 80097928 24C6F2E0 */  addiu $a2, %lo(D_8013F2E0) # addiu $a2, $a2, -0xd20
/* B0EACC 8009792C AFA50020 */  sw    $a1, 0x20($sp)
/* B0EAD0 80097930 0C031521 */  jal   Game_Alloc
/* B0EAD4 80097934 240700A3 */   li    $a3, 163
/* B0EAD8 80097938 8FB80028 */  lw    $t8, 0x28($sp)
/* B0EADC 8009793C 3C0501AA */  lui   $a1, %hi(_title_staticSegmentRomStart) # $a1, 0x1aa
/* B0EAE0 80097940 3C078014 */  lui   $a3, %hi(D_8013F2F0) # $a3, 0x8014
/* B0EAE4 80097944 241900A4 */  li    $t9, 164
/* B0EAE8 80097948 AF0200A4 */  sw    $v0, 0xa4($t8)
/* B0EAEC 8009794C AFB90010 */  sw    $t9, 0x10($sp)
/* B0EAF0 80097950 8FA60020 */  lw    $a2, 0x20($sp)
/* B0EAF4 80097954 24E7F2F0 */  addiu $a3, %lo(D_8013F2F0) # addiu $a3, $a3, -0xd10
/* B0EAF8 80097958 24A54000 */  addiu $a1, %lo(_title_staticSegmentRomStart) # addiu $a1, $a1, 0x4000
/* B0EAFC 8009795C 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B0EB00 80097960 00402025 */   move  $a0, $v0
/* B0EB04 80097964 8FBF001C */  lw    $ra, 0x1c($sp)
/* B0EB08 80097968 27BD0028 */  addiu $sp, $sp, 0x28
/* B0EB0C 8009796C 03E00008 */  jr    $ra
/* B0EB10 80097970 00000000 */   nop   

