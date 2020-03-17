.rdata
glabel D_8014B0A0
    .asciz "ARENA INFO (0x%08x)\n"
    .balign 4

glabel D_8014B0B8
    .asciz "Arena is uninitalized\n"
    .balign 4

glabel D_8014B0D0
    .asciz "Memory Block Region status size\n"
    .balign 4

glabel D_8014B0F4
    .asciz "%08x-%08x%c %s %08x"
    .balign 4

glabel D_8014B108
    .asciz "F"
    .balign 4

glabel D_8014B10C
    .asciz "A"
    .balign 4

glabel D_8014B110
    .asciz "\n"
    .balign 4

glabel D_8014B114
    .asciz "%08x Block Invalid\n"
    .balign 4

glabel D_8014B128
    .asciz "Total Alloc Block Size  %08x\n"
    .balign 4

glabel D_8014B148
    .asciz "Total Free Block Size   %08x\n"
    .balign 4

glabel D_8014B168
    .asciz "Largest Free Block Size %08x\n"
    .balign 4

.text
glabel ArenaImpl_FaultClient
/* B7624C 800FF0AC 27BDFFC0 */  addiu $sp, $sp, -0x40
/* B76250 800FF0B0 AFB10020 */  sw    $s1, 0x20($sp)
/* B76254 800FF0B4 00808825 */  move  $s1, $a0
/* B76258 800FF0B8 AFBF003C */  sw    $ra, 0x3c($sp)
/* B7625C 800FF0BC 3C048015 */  lui   $a0, %hi(D_8014B0A0) # $a0, 0x8015
/* B76260 800FF0C0 AFB70038 */  sw    $s7, 0x38($sp)
/* B76264 800FF0C4 AFB60034 */  sw    $s6, 0x34($sp)
/* B76268 800FF0C8 AFB50030 */  sw    $s5, 0x30($sp)
/* B7626C 800FF0CC AFB4002C */  sw    $s4, 0x2c($sp)
/* B76270 800FF0D0 AFB30028 */  sw    $s3, 0x28($sp)
/* B76274 800FF0D4 AFB20024 */  sw    $s2, 0x24($sp)
/* B76278 800FF0D8 AFB0001C */  sw    $s0, 0x1c($sp)
/* B7627C 800FF0DC 2484B0A0 */  addiu $a0, %lo(D_8014B0A0) # addiu $a0, $a0, -0x4f60
/* B76280 800FF0E0 0C035C12 */  jal   FaultDrawer_Printf
/* B76284 800FF0E4 02202825 */   move  $a1, $s1
/* B76288 800FF0E8 0C03F7D3 */  jal   __osMallocIsInitalized
/* B7628C 800FF0EC 02202025 */   move  $a0, $s1
/* B76290 800FF0F0 14400007 */  bnez  $v0, .L800FF110
/* B76294 800FF0F4 00009825 */   move  $s3, $zero
/* B76298 800FF0F8 3C048015 */  lui   $a0, %hi(D_8014B0B8) # $a0, 0x8015
/* B7629C 800FF0FC 2484B0B8 */  addiu $a0, %lo(D_8014B0B8) # addiu $a0, $a0, -0x4f48
/* B762A0 800FF100 0C035C12 */  jal   FaultDrawer_Printf
/* B762A4 800FF104 02202825 */   move  $a1, $s1
/* B762A8 800FF108 10000053 */  b     .L800FF258
/* B762AC 800FF10C 8FBF003C */   lw    $ra, 0x3c($sp)
.L800FF110:
/* B762B0 800FF110 3C048015 */  lui   $a0, %hi(D_8014B0D0) # $a0, 0x8015
/* B762B4 800FF114 0000A025 */  move  $s4, $zero
/* B762B8 800FF118 00009025 */  move  $s2, $zero
/* B762BC 800FF11C 0C035C12 */  jal   FaultDrawer_Printf
/* B762C0 800FF120 2484B0D0 */   addiu $a0, %lo(D_8014B0D0) # addiu $a0, $a0, -0x4f30
/* B762C4 800FF124 8E300000 */  lw    $s0, ($s1)
/* B762C8 800FF128 3C178015 */  lui   $s7, %hi(D_8014B10C) # $s7, 0x8015
/* B762CC 800FF12C 26F7B10C */  addiu $s7, %lo(D_8014B10C) # addiu $s7, $s7, -0x4ef4
/* B762D0 800FF130 1200003A */  beqz  $s0, .L800FF21C
/* B762D4 800FF134 3C168015 */   lui   $s6, %hi(D_8014B108) # $s6, 0x8015
/* B762D8 800FF138 26D6B108 */  addiu $s6, %lo(D_8014B108) # addiu $s6, $s6, -0x4ef8
/* B762DC 800FF13C 24157373 */  li    $s5, 29555
.L800FF140:
/* B762E0 800FF140 1200002E */  beqz  $s0, .L800FF1FC
/* B762E4 800FF144 3404F801 */   li    $a0, 63489
/* B762E8 800FF148 860E0000 */  lh    $t6, ($s0)
/* B762EC 800FF14C 02002825 */  move  $a1, $s0
/* B762F0 800FF150 16AE002A */  bne   $s5, $t6, .L800FF1FC
/* B762F4 800FF154 00000000 */   nop   
/* B762F8 800FF158 8E110008 */  lw    $s1, 8($s0)
/* B762FC 800FF15C 3C048015 */  lui   $a0, %hi(D_8014B0F4) # $a0, 0x8015
/* B76300 800FF160 02E01825 */  move  $v1, $s7
/* B76304 800FF164 56200004 */  bnezl $s1, .L800FF178
/* B76308 800FF168 8E2F000C */   lw    $t7, 0xc($s1)
/* B7630C 800FF16C 10000008 */  b     .L800FF190
/* B76310 800FF170 24070024 */   li    $a3, 36
/* B76314 800FF174 8E2F000C */  lw    $t7, 0xc($s1)
.L800FF178:
/* B76318 800FF178 24020020 */  li    $v0, 32
/* B7631C 800FF17C 120F0003 */  beq   $s0, $t7, .L800FF18C
/* B76320 800FF180 00000000 */   nop   
/* B76324 800FF184 10000001 */  b     .L800FF18C
/* B76328 800FF188 24020021 */   li    $v0, 33
.L800FF18C:
/* B7632C 800FF18C 00403825 */  move  $a3, $v0
.L800FF190:
/* B76330 800FF190 86180002 */  lh    $t8, 2($s0)
/* B76334 800FF194 13000003 */  beqz  $t8, .L800FF1A4
/* B76338 800FF198 00000000 */   nop   
/* B7633C 800FF19C 10000001 */  b     .L800FF1A4
/* B76340 800FF1A0 02C01825 */   move  $v1, $s6
.L800FF1A4:
/* B76344 800FF1A4 8E020004 */  lw    $v0, 4($s0)
/* B76348 800FF1A8 AFA30010 */  sw    $v1, 0x10($sp)
/* B7634C 800FF1AC 2484B0F4 */  addiu $a0, %lo(D_8014B0F4) # addiu $a0, $a0, -0x4f0c
/* B76350 800FF1B0 02023021 */  addu  $a2, $s0, $v0
/* B76354 800FF1B4 24C60030 */  addiu $a2, $a2, 0x30
/* B76358 800FF1B8 0C035C12 */  jal   FaultDrawer_Printf
/* B7635C 800FF1BC AFA20014 */   sw    $v0, 0x14($sp)
/* B76360 800FF1C0 3C048015 */  lui   $a0, %hi(D_8014B110) # $a0, 0x8015
/* B76364 800FF1C4 0C035C12 */  jal   FaultDrawer_Printf
/* B76368 800FF1C8 2484B110 */   addiu $a0, %lo(D_8014B110) # addiu $a0, $a0, -0x4ef0
/* B7636C 800FF1CC 86190002 */  lh    $t9, 2($s0)
/* B76370 800FF1D0 53200008 */  beql  $t9, $zero, .L800FF1F4
/* B76374 800FF1D4 8E080004 */   lw    $t0, 4($s0)
/* B76378 800FF1D8 8E020004 */  lw    $v0, 4($s0)
/* B7637C 800FF1DC 0262082B */  sltu  $at, $s3, $v0
/* B76380 800FF1E0 1020000C */  beqz  $at, .L800FF214
/* B76384 800FF1E4 0282A021 */   addu  $s4, $s4, $v0
/* B76388 800FF1E8 1000000A */  b     .L800FF214
/* B7638C 800FF1EC 00409825 */   move  $s3, $v0
/* B76390 800FF1F0 8E080004 */  lw    $t0, 4($s0)
.L800FF1F4:
/* B76394 800FF1F4 10000007 */  b     .L800FF214
/* B76398 800FF1F8 02489021 */   addu  $s2, $s2, $t0
.L800FF1FC:
/* B7639C 800FF1FC 0C035AFB */  jal   FaultDrawer_SetFontColor
/* B763A0 800FF200 00008825 */   move  $s1, $zero
/* B763A4 800FF204 3C048015 */  lui   $a0, %hi(D_8014B114) # $a0, 0x8015
/* B763A8 800FF208 2484B114 */  addiu $a0, %lo(D_8014B114) # addiu $a0, $a0, -0x4eec
/* B763AC 800FF20C 0C035C12 */  jal   FaultDrawer_Printf
/* B763B0 800FF210 02002825 */   move  $a1, $s0
.L800FF214:
/* B763B4 800FF214 1620FFCA */  bnez  $s1, .L800FF140
/* B763B8 800FF218 02208025 */   move  $s0, $s1
.L800FF21C:
/* B763BC 800FF21C 0C035AFB */  jal   FaultDrawer_SetFontColor
/* B763C0 800FF220 240407F1 */   li    $a0, 2033
/* B763C4 800FF224 3C048015 */  lui   $a0, %hi(D_8014B128) # $a0, 0x8015
/* B763C8 800FF228 2484B128 */  addiu $a0, %lo(D_8014B128) # addiu $a0, $a0, -0x4ed8
/* B763CC 800FF22C 0C035C12 */  jal   FaultDrawer_Printf
/* B763D0 800FF230 02402825 */   move  $a1, $s2
/* B763D4 800FF234 3C048015 */  lui   $a0, %hi(D_8014B148) # $a0, 0x8015
/* B763D8 800FF238 2484B148 */  addiu $a0, %lo(D_8014B148) # addiu $a0, $a0, -0x4eb8
/* B763DC 800FF23C 0C035C12 */  jal   FaultDrawer_Printf
/* B763E0 800FF240 02802825 */   move  $a1, $s4
/* B763E4 800FF244 3C048015 */  lui   $a0, %hi(D_8014B168) # $a0, 0x8015
/* B763E8 800FF248 2484B168 */  addiu $a0, %lo(D_8014B168) # addiu $a0, $a0, -0x4e98
/* B763EC 800FF24C 0C035C12 */  jal   FaultDrawer_Printf
/* B763F0 800FF250 02602825 */   move  $a1, $s3
/* B763F4 800FF254 8FBF003C */  lw    $ra, 0x3c($sp)
.L800FF258:
/* B763F8 800FF258 8FB0001C */  lw    $s0, 0x1c($sp)
/* B763FC 800FF25C 8FB10020 */  lw    $s1, 0x20($sp)
/* B76400 800FF260 8FB20024 */  lw    $s2, 0x24($sp)
/* B76404 800FF264 8FB30028 */  lw    $s3, 0x28($sp)
/* B76408 800FF268 8FB4002C */  lw    $s4, 0x2c($sp)
/* B7640C 800FF26C 8FB50030 */  lw    $s5, 0x30($sp)
/* B76410 800FF270 8FB60034 */  lw    $s6, 0x34($sp)
/* B76414 800FF274 8FB70038 */  lw    $s7, 0x38($sp)
/* B76418 800FF278 03E00008 */  jr    $ra
/* B7641C 800FF27C 27BD0040 */   addiu $sp, $sp, 0x40