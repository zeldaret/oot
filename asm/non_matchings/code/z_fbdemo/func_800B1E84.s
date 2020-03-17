.rdata
glabel D_80142FA8
    .asciz "fbdemo_init(%08x, %d, %d)\n"
    .balign 4

glabel D_80142FC4
    .asciz "../z_fbdemo.c"
    .balign 4

glabel D_80142FD4
    .asciz "../z_fbdemo.c"
    .balign 4

glabel D_80142FE4
    .asciz "../z_fbdemo.c"
    .balign 4

glabel D_80142FF4
    .asciz "../z_fbdemo.c"
    .balign 4

glabel D_80143004
    .asciz "fbdemo_init allocation error\n"
    .balign 4

glabel D_80143024
    .asciz "../z_fbdemo.c"
    .balign 4

glabel D_80143034
    .asciz "../z_fbdemo.c"
    .balign 4

glabel D_80143044
    .asciz "../z_fbdemo.c"
    .balign 4

glabel D_80143054
    .asciz "../z_fbdemo.c"
    .balign 4

.text
glabel func_800B1E84
/* B29024 800B1E84 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B29028 800B1E88 AFB00018 */  sw    $s0, 0x18($sp)
/* B2902C 800B1E8C 00808025 */  move  $s0, $a0
/* B29030 800B1E90 AFBF001C */  sw    $ra, 0x1c($sp)
/* B29034 800B1E94 AFA5002C */  sw    $a1, 0x2c($sp)
/* B29038 800B1E98 AFA60030 */  sw    $a2, 0x30($sp)
/* B2903C 800B1E9C 3C048014 */  lui   $a0, %hi(D_80142FA8) # $a0, 0x8014
/* B29040 800B1EA0 24842FA8 */  addiu $a0, %lo(D_80142FA8) # addiu $a0, $a0, 0x2fa8
/* B29044 800B1EA4 8FA70030 */  lw    $a3, 0x30($sp)
/* B29048 800B1EA8 8FA6002C */  lw    $a2, 0x2c($sp)
/* B2904C 800B1EAC 0C00084C */  jal   osSyncPrintf
/* B29050 800B1EB0 02002825 */   move  $a1, $s0
/* B29054 800B1EB4 02002025 */  move  $a0, $s0
/* B29058 800B1EB8 0C001114 */  jal   bzero
/* B2905C 800B1EBC 240500E0 */   li    $a1, 224
/* B29060 800B1EC0 8FA2002C */  lw    $v0, 0x2c($sp)
/* B29064 800B1EC4 8FA70030 */  lw    $a3, 0x30($sp)
/* B29068 800B1EC8 AE000008 */  sw    $zero, 8($s0)
/* B2906C 800B1ECC 000270C0 */  sll   $t6, $v0, 3
/* B29070 800B1ED0 25CF0008 */  addiu $t7, $t6, 8
/* B29074 800B1ED4 24E30001 */  addiu $v1, $a3, 1
/* B29078 800B1ED8 01E30019 */  multu $t7, $v1
/* B2907C 800B1EDC 3C058014 */  lui   $a1, %hi(D_80142FC4) # $a1, 0x8014
/* B29080 800B1EE0 AE020000 */  sw    $v0, ($s0)
/* B29084 800B1EE4 AE070004 */  sw    $a3, 4($s0)
/* B29088 800B1EE8 AFA30024 */  sw    $v1, 0x24($sp)
/* B2908C 800B1EEC 24A52FC4 */  addiu $a1, %lo(D_80142FC4) # addiu $a1, $a1, 0x2fc4
/* B29090 800B1EF0 240600C3 */  li    $a2, 195
/* B29094 800B1EF4 00002012 */  mflo  $a0
/* B29098 800B1EF8 0C03F570 */  jal   SystemArena_MallocDebug
/* B2909C 800B1EFC 00000000 */   nop   
/* B290A0 800B1F00 8FA30024 */  lw    $v1, 0x24($sp)
/* B290A4 800B1F04 AE02000C */  sw    $v0, 0xc($s0)
/* B290A8 800B1F08 8FB8002C */  lw    $t8, 0x2c($sp)
/* B290AC 800B1F0C 3C058014 */  lui   $a1, %hi(D_80142FD4) # $a1, 0x8014
/* B290B0 800B1F10 24A52FD4 */  addiu $a1, %lo(D_80142FD4) # addiu $a1, $a1, 0x2fd4
/* B290B4 800B1F14 0018C900 */  sll   $t9, $t8, 4
/* B290B8 800B1F18 27280010 */  addiu $t0, $t9, 0x10
/* B290BC 800B1F1C 01030019 */  multu $t0, $v1
/* B290C0 800B1F20 240600C4 */  li    $a2, 196
/* B290C4 800B1F24 00002012 */  mflo  $a0
/* B290C8 800B1F28 AFA40020 */  sw    $a0, 0x20($sp)
/* B290CC 800B1F2C 0C03F570 */  jal   SystemArena_MallocDebug
/* B290D0 800B1F30 00000000 */   nop   
/* B290D4 800B1F34 8FA40020 */  lw    $a0, 0x20($sp)
/* B290D8 800B1F38 3C058014 */  lui   $a1, %hi(D_80142FE4) # $a1, 0x8014
/* B290DC 800B1F3C AE020010 */  sw    $v0, 0x10($s0)
/* B290E0 800B1F40 24A52FE4 */  addiu $a1, %lo(D_80142FE4) # addiu $a1, $a1, 0x2fe4
/* B290E4 800B1F44 0C03F570 */  jal   SystemArena_MallocDebug
/* B290E8 800B1F48 240600C5 */   li    $a2, 197
/* B290EC 800B1F4C 8E0A0000 */  lw    $t2, ($s0)
/* B290F0 800B1F50 8E090004 */  lw    $t1, 4($s0)
/* B290F4 800B1F54 3C058014 */  lui   $a1, %hi(D_80142FF4) # $a1, 0x8014
/* B290F8 800B1F58 000A58C0 */  sll   $t3, $t2, 3
/* B290FC 800B1F5C 016A5821 */  addu  $t3, $t3, $t2
/* B29100 800B1F60 256C0001 */  addiu $t4, $t3, 1
/* B29104 800B1F64 012C0019 */  multu $t1, $t4
/* B29108 800B1F68 AE020014 */  sw    $v0, 0x14($s0)
/* B2910C 800B1F6C 24A52FF4 */  addiu $a1, %lo(D_80142FF4) # addiu $a1, $a1, 0x2ff4
/* B29110 800B1F70 240600C6 */  li    $a2, 198
/* B29114 800B1F74 00002012 */  mflo  $a0
/* B29118 800B1F78 000420C0 */  sll   $a0, $a0, 3
/* B2911C 800B1F7C 0C03F570 */  jal   SystemArena_MallocDebug
/* B29120 800B1F80 24840010 */   addiu $a0, $a0, 0x10
/* B29124 800B1F84 8E0D000C */  lw    $t5, 0xc($s0)
/* B29128 800B1F88 AE0200D8 */  sw    $v0, 0xd8($s0)
/* B2912C 800B1F8C 3C048014 */  lui   $a0, %hi(D_80143004) # $a0, 0x8014
/* B29130 800B1F90 11A00009 */  beqz  $t5, .L800B1FB8
/* B29134 800B1F94 00000000 */   nop   
/* B29138 800B1F98 8E0E0010 */  lw    $t6, 0x10($s0)
/* B2913C 800B1F9C 11C00006 */  beqz  $t6, .L800B1FB8
/* B29140 800B1FA0 00000000 */   nop   
/* B29144 800B1FA4 8E0F0014 */  lw    $t7, 0x14($s0)
/* B29148 800B1FA8 11E00003 */  beqz  $t7, .L800B1FB8
/* B2914C 800B1FAC 00000000 */   nop   
/* B29150 800B1FB0 14400025 */  bnez  $v0, .L800B2048
/* B29154 800B1FB4 00000000 */   nop   
.L800B1FB8:
/* B29158 800B1FB8 0C00084C */  jal   osSyncPrintf
/* B2915C 800B1FBC 24843004 */   addiu $a0, %lo(D_80143004) # addiu $a0, $a0, 0x3004
/* B29160 800B1FC0 8E04000C */  lw    $a0, 0xc($s0)
/* B29164 800B1FC4 3C058014 */  lui   $a1, %hi(D_80143024) # $a1, 0x8014
/* B29168 800B1FC8 24A53024 */  addiu $a1, %lo(D_80143024) # addiu $a1, $a1, 0x3024
/* B2916C 800B1FCC 50800005 */  beql  $a0, $zero, .L800B1FE4
/* B29170 800B1FD0 8E040010 */   lw    $a0, 0x10($s0)
/* B29174 800B1FD4 0C03F5ED */  jal   SystemArena_FreeDebug
/* B29178 800B1FD8 240600CA */   li    $a2, 202
/* B2917C 800B1FDC AE00000C */  sw    $zero, 0xc($s0)
/* B29180 800B1FE0 8E040010 */  lw    $a0, 0x10($s0)
.L800B1FE4:
/* B29184 800B1FE4 3C058014 */  lui   $a1, %hi(D_80143034) # $a1, 0x8014
/* B29188 800B1FE8 24A53034 */  addiu $a1, %lo(D_80143034) # addiu $a1, $a1, 0x3034
/* B2918C 800B1FEC 50800005 */  beql  $a0, $zero, .L800B2004
/* B29190 800B1FF0 8E040014 */   lw    $a0, 0x14($s0)
/* B29194 800B1FF4 0C03F5ED */  jal   SystemArena_FreeDebug
/* B29198 800B1FF8 240600CB */   li    $a2, 203
/* B2919C 800B1FFC AE000010 */  sw    $zero, 0x10($s0)
/* B291A0 800B2000 8E040014 */  lw    $a0, 0x14($s0)
.L800B2004:
/* B291A4 800B2004 3C058014 */  lui   $a1, %hi(D_80143044) # $a1, 0x8014
/* B291A8 800B2008 24A53044 */  addiu $a1, %lo(D_80143044) # addiu $a1, $a1, 0x3044
/* B291AC 800B200C 50800005 */  beql  $a0, $zero, .L800B2024
/* B291B0 800B2010 8E0400D8 */   lw    $a0, 0xd8($s0)
/* B291B4 800B2014 0C03F5ED */  jal   SystemArena_FreeDebug
/* B291B8 800B2018 240600CC */   li    $a2, 204
/* B291BC 800B201C AE000014 */  sw    $zero, 0x14($s0)
/* B291C0 800B2020 8E0400D8 */  lw    $a0, 0xd8($s0)
.L800B2024:
/* B291C4 800B2024 3C058014 */  lui   $a1, %hi(D_80143054) # $a1, 0x8014
/* B291C8 800B2028 24A53054 */  addiu $a1, %lo(D_80143054) # addiu $a1, $a1, 0x3054
/* B291CC 800B202C 10800004 */  beqz  $a0, .L800B2040
/* B291D0 800B2030 00000000 */   nop   
/* B291D4 800B2034 0C03F5ED */  jal   SystemArena_FreeDebug
/* B291D8 800B2038 240600CD */   li    $a2, 205
/* B291DC 800B203C AE0000D8 */  sw    $zero, 0xd8($s0)
.L800B2040:
/* B291E0 800B2040 10000007 */  b     .L800B2060
/* B291E4 800B2044 00001025 */   move  $v0, $zero
.L800B2048:
/* B291E8 800B2048 0C02C62C */  jal   func_800B18B0
/* B291EC 800B204C 02002025 */   move  $a0, $s0
/* B291F0 800B2050 0C02C73F */  jal   func_800B1CFC
/* B291F4 800B2054 02002025 */   move  $a0, $s0
/* B291F8 800B2058 AE000008 */  sw    $zero, 8($s0)
/* B291FC 800B205C 02001025 */  move  $v0, $s0
.L800B2060:
/* B29200 800B2060 8FBF001C */  lw    $ra, 0x1c($sp)
/* B29204 800B2064 8FB00018 */  lw    $s0, 0x18($sp)
/* B29208 800B2068 27BD0028 */  addiu $sp, $sp, 0x28
/* B2920C 800B206C 03E00008 */  jr    $ra
/* B29210 800B2070 00000000 */   nop   

