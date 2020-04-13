.rdata
glabel D_80142F40
    .asciz "fbdemo_cleanup(%08x)\n"
    .balign 4

glabel D_80142F58
    .asciz "msleep(100);\n"
    .balign 4

glabel D_80142F68
    .asciz "../z_fbdemo.c"
    .balign 4

glabel D_80142F78
    .asciz "../z_fbdemo.c"
    .balign 4

glabel D_80142F88
    .asciz "../z_fbdemo.c"
    .balign 4

glabel D_80142F98
    .asciz "../z_fbdemo.c"
    .balign 4

.text
glabel func_800B1DBC
/* B28F5C 800B1DBC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B28F60 800B1DC0 AFB00018 */  sw    $s0, 0x18($sp)
/* B28F64 800B1DC4 00808025 */  move  $s0, $a0
/* B28F68 800B1DC8 AFBF001C */  sw    $ra, 0x1c($sp)
/* B28F6C 800B1DCC 3C048014 */  lui   $a0, %hi(D_80142F40) # $a0, 0x8014
/* B28F70 800B1DD0 24842F40 */  addiu $a0, %lo(D_80142F40) # addiu $a0, $a0, 0x2f40
/* B28F74 800B1DD4 0C00084C */  jal   osSyncPrintf
/* B28F78 800B1DD8 02002825 */   move  $a1, $s0
/* B28F7C 800B1DDC 3C048014 */  lui   $a0, %hi(D_80142F58) # $a0, 0x8014
/* B28F80 800B1DE0 0C00084C */  jal   osSyncPrintf
/* B28F84 800B1DE4 24842F58 */   addiu $a0, %lo(D_80142F58) # addiu $a0, $a0, 0x2f58
/* B28F88 800B1DE8 0C03FD2B */  jal   Sleep_Msec
/* B28F8C 800B1DEC 24040064 */   li    $a0, 100
/* B28F90 800B1DF0 8E04000C */  lw    $a0, 0xc($s0)
/* B28F94 800B1DF4 3C058014 */  lui   $a1, %hi(D_80142F68) # $a1, 0x8014
/* B28F98 800B1DF8 24A52F68 */  addiu $a1, %lo(D_80142F68) # addiu $a1, $a1, 0x2f68
/* B28F9C 800B1DFC 50800005 */  beql  $a0, $zero, .L800B1E14
/* B28FA0 800B1E00 8E040010 */   lw    $a0, 0x10($s0)
/* B28FA4 800B1E04 0C03F5ED */  jal   SystemArena_FreeDebug
/* B28FA8 800B1E08 240600B4 */   li    $a2, 180
/* B28FAC 800B1E0C AE00000C */  sw    $zero, 0xc($s0)
/* B28FB0 800B1E10 8E040010 */  lw    $a0, 0x10($s0)
.L800B1E14:
/* B28FB4 800B1E14 3C058014 */  lui   $a1, %hi(D_80142F78) # $a1, 0x8014
/* B28FB8 800B1E18 24A52F78 */  addiu $a1, %lo(D_80142F78) # addiu $a1, $a1, 0x2f78
/* B28FBC 800B1E1C 50800005 */  beql  $a0, $zero, .L800B1E34
/* B28FC0 800B1E20 8E040014 */   lw    $a0, 0x14($s0)
/* B28FC4 800B1E24 0C03F5ED */  jal   SystemArena_FreeDebug
/* B28FC8 800B1E28 240600B5 */   li    $a2, 181
/* B28FCC 800B1E2C AE000010 */  sw    $zero, 0x10($s0)
/* B28FD0 800B1E30 8E040014 */  lw    $a0, 0x14($s0)
.L800B1E34:
/* B28FD4 800B1E34 3C058014 */  lui   $a1, %hi(D_80142F88) # $a1, 0x8014
/* B28FD8 800B1E38 24A52F88 */  addiu $a1, %lo(D_80142F88) # addiu $a1, $a1, 0x2f88
/* B28FDC 800B1E3C 50800005 */  beql  $a0, $zero, .L800B1E54
/* B28FE0 800B1E40 8E0400D8 */   lw    $a0, 0xd8($s0)
/* B28FE4 800B1E44 0C03F5ED */  jal   SystemArena_FreeDebug
/* B28FE8 800B1E48 240600B6 */   li    $a2, 182
/* B28FEC 800B1E4C AE000014 */  sw    $zero, 0x14($s0)
/* B28FF0 800B1E50 8E0400D8 */  lw    $a0, 0xd8($s0)
.L800B1E54:
/* B28FF4 800B1E54 3C058014 */  lui   $a1, %hi(D_80142F98) # $a1, 0x8014
/* B28FF8 800B1E58 24A52F98 */  addiu $a1, %lo(D_80142F98) # addiu $a1, $a1, 0x2f98
/* B28FFC 800B1E5C 50800005 */  beql  $a0, $zero, .L800B1E74
/* B29000 800B1E60 8FBF001C */   lw    $ra, 0x1c($sp)
/* B29004 800B1E64 0C03F5ED */  jal   SystemArena_FreeDebug
/* B29008 800B1E68 240600B7 */   li    $a2, 183
/* B2900C 800B1E6C AE0000D8 */  sw    $zero, 0xd8($s0)
/* B29010 800B1E70 8FBF001C */  lw    $ra, 0x1c($sp)
.L800B1E74:
/* B29014 800B1E74 8FB00018 */  lw    $s0, 0x18($sp)
/* B29018 800B1E78 27BD0020 */  addiu $sp, $sp, 0x20
/* B2901C 800B1E7C 03E00008 */  jr    $ra
/* B29020 800B1E80 00000000 */   nop   

