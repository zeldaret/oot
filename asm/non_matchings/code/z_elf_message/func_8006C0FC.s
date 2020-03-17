.rdata
glabel D_8013B87C
    .asciz "../z_elf_message.c"
    .balign 4

glabel D_8013B890
    .asciz "\"企画外 条件\" = %s\n"
    # EUC-JP: 企画外 条件 | Unplanned conditions
    .balign 4

glabel D_8013B8A4
    .asciz "企画外 条件"
    # EUC-JP: 企画外 条件 | Unplanned conditions
    .balign 4

glabel D_8013B8B0
    .asciz "0"
    .balign 4

glabel D_8013B8B4
    .asciz "../z_elf_message.c"
    .balign 4

.text
glabel func_8006C0FC
/* AE329C 8006C0FC 27BDFFC0 */  addiu $sp, $sp, -0x40
/* AE32A0 8006C100 AFBE0038 */  sw    $fp, 0x38($sp)
/* AE32A4 8006C104 AFB70034 */  sw    $s7, 0x34($sp)
/* AE32A8 8006C108 AFB60030 */  sw    $s6, 0x30($sp)
/* AE32AC 8006C10C AFB5002C */  sw    $s5, 0x2c($sp)
/* AE32B0 8006C110 AFB40028 */  sw    $s4, 0x28($sp)
/* AE32B4 8006C114 AFB30024 */  sw    $s3, 0x24($sp)
/* AE32B8 8006C118 AFB20020 */  sw    $s2, 0x20($sp)
/* AE32BC 8006C11C AFB1001C */  sw    $s1, 0x1c($sp)
/* AE32C0 8006C120 AFB00018 */  sw    $s0, 0x18($sp)
/* AE32C4 8006C124 3C158014 */  lui   $s5, %hi(D_8013B87C) # $s5, 0x8014
/* AE32C8 8006C128 3C168014 */  lui   $s6, %hi(D_8013B890) # $s6, 0x8014
/* AE32CC 8006C12C 3C178014 */  lui   $s7, %hi(D_8013B8A4) # $s7, 0x8014
/* AE32D0 8006C130 3C1E8014 */  lui   $fp, %hi(D_8013B8B0) # $fp, 0x8014
/* AE32D4 8006C134 AFBF003C */  sw    $ra, 0x3c($sp)
/* AE32D8 8006C138 AFA40040 */  sw    $a0, 0x40($sp)
/* AE32DC 8006C13C 27DEB8B0 */  addiu $fp, %lo(D_8013B8B0) # addiu $fp, $fp, -0x4750
/* AE32E0 8006C140 26F7B8A4 */  addiu $s7, %lo(D_8013B8A4) # addiu $s7, $s7, -0x475c
/* AE32E4 8006C144 26D6B890 */  addiu $s6, %lo(D_8013B890) # addiu $s6, $s6, -0x4770
/* AE32E8 8006C148 26B5B87C */  addiu $s5, %lo(D_8013B87C) # addiu $s5, $s5, -0x4784
/* AE32EC 8006C14C 27B00040 */  addiu $s0, $sp, 0x40
/* AE32F0 8006C150 24110020 */  li    $s1, 32
/* AE32F4 8006C154 24120040 */  li    $s2, 64
/* AE32F8 8006C158 24130060 */  li    $s3, 96
/* AE32FC 8006C15C 241400E0 */  li    $s4, 224
.L8006C160:
/* AE3300 8006C160 8FAE0040 */  lw    $t6, 0x40($sp)
/* AE3304 8006C164 91C20000 */  lbu   $v0, ($t6)
/* AE3308 8006C168 304200E0 */  andi  $v0, $v0, 0xe0
/* AE330C 8006C16C 1040000B */  beqz  $v0, .L8006C19C
/* AE3310 8006C170 00000000 */   nop   
/* AE3314 8006C174 10510012 */  beq   $v0, $s1, .L8006C1C0
/* AE3318 8006C178 00000000 */   nop   
/* AE331C 8006C17C 10520019 */  beq   $v0, $s2, .L8006C1E4
/* AE3320 8006C180 00000000 */   nop   
/* AE3324 8006C184 10530020 */  beq   $v0, $s3, .L8006C208
/* AE3328 8006C188 02A02025 */   move  $a0, $s5
/* AE332C 8006C18C 5054002A */  beql  $v0, $s4, .L8006C238
/* AE3330 8006C190 8FAE0040 */   lw    $t6, 0x40($sp)
/* AE3334 8006C194 1000002C */  b     .L8006C248
/* AE3338 8006C198 00000000 */   nop   
.L8006C19C:
/* AE333C 8006C19C 0C01AEF0 */  jal   func_8006BBC0
/* AE3340 8006C1A0 8FA40040 */   lw    $a0, 0x40($sp)
/* AE3344 8006C1A4 50400033 */  beql  $v0, $zero, .L8006C274
/* AE3348 8006C1A8 8FAF0040 */   lw    $t7, 0x40($sp)
/* AE334C 8006C1AC 8FAF0040 */  lw    $t7, 0x40($sp)
/* AE3350 8006C1B0 91E20002 */  lbu   $v0, 2($t7)
/* AE3354 8006C1B4 34420100 */  ori   $v0, $v0, 0x100
/* AE3358 8006C1B8 10000031 */  b     .L8006C280
/* AE335C 8006C1BC 3042FFFF */   andi  $v0, $v0, 0xffff
.L8006C1C0:
/* AE3360 8006C1C0 0C01AFA2 */  jal   func_8006BE88
/* AE3364 8006C1C4 02002025 */   move  $a0, $s0
/* AE3368 8006C1C8 5040002A */  beql  $v0, $zero, .L8006C274
/* AE336C 8006C1CC 8FAF0040 */   lw    $t7, 0x40($sp)
/* AE3370 8006C1D0 8FB80040 */  lw    $t8, 0x40($sp)
/* AE3374 8006C1D4 93020002 */  lbu   $v0, 2($t8)
/* AE3378 8006C1D8 34420100 */  ori   $v0, $v0, 0x100
/* AE337C 8006C1DC 10000028 */  b     .L8006C280
/* AE3380 8006C1E0 3042FFFF */   andi  $v0, $v0, 0xffff
.L8006C1E4:
/* AE3384 8006C1E4 0C01AFC7 */  jal   func_8006BF1C
/* AE3388 8006C1E8 02002025 */   move  $a0, $s0
/* AE338C 8006C1EC 50400021 */  beql  $v0, $zero, .L8006C274
/* AE3390 8006C1F0 8FAF0040 */   lw    $t7, 0x40($sp)
/* AE3394 8006C1F4 8FB90040 */  lw    $t9, 0x40($sp)
/* AE3398 8006C1F8 93220002 */  lbu   $v0, 2($t9)
/* AE339C 8006C1FC 34420100 */  ori   $v0, $v0, 0x100
/* AE33A0 8006C200 1000001F */  b     .L8006C280
/* AE33A4 8006C204 3042FFFF */   andi  $v0, $v0, 0xffff
.L8006C208:
/* AE33A8 8006C208 0C01AEF0 */  jal   func_8006BBC0
/* AE33AC 8006C20C 8FA40040 */   lw    $a0, 0x40($sp)
/* AE33B0 8006C210 10400017 */  beqz  $v0, .L8006C270
/* AE33B4 8006C214 8FA80040 */   lw    $t0, 0x40($sp)
/* AE33B8 8006C218 910A0002 */  lbu   $t2, 2($t0)
/* AE33BC 8006C21C 000A5880 */  sll   $t3, $t2, 2
/* AE33C0 8006C220 010B6021 */  addu  $t4, $t0, $t3
/* AE33C4 8006C224 AFAC0040 */  sw    $t4, 0x40($sp)
/* AE33C8 8006C228 258DFFFC */  addiu $t5, $t4, -4
/* AE33CC 8006C22C 10000010 */  b     .L8006C270
/* AE33D0 8006C230 AFAD0040 */   sw    $t5, 0x40($sp)
/* AE33D4 8006C234 8FAE0040 */  lw    $t6, 0x40($sp)
.L8006C238:
/* AE33D8 8006C238 91C20002 */  lbu   $v0, 2($t6)
/* AE33DC 8006C23C 34420100 */  ori   $v0, $v0, 0x100
/* AE33E0 8006C240 1000000F */  b     .L8006C280
/* AE33E4 8006C244 3042FFFF */   andi  $v0, $v0, 0xffff
.L8006C248:
/* AE33E8 8006C248 0C000B84 */  jal   LogUtils_LogThreadId
/* AE33EC 8006C24C 24050119 */   li    $a1, 281
/* AE33F0 8006C250 02C02025 */  move  $a0, $s6
/* AE33F4 8006C254 0C00084C */  jal   osSyncPrintf
/* AE33F8 8006C258 02E02825 */   move  $a1, $s7
/* AE33FC 8006C25C 3C058014 */  lui   $a1, %hi(D_8013B8B4) # $a1, 0x8014
/* AE3400 8006C260 24A5B8B4 */  addiu $a1, %lo(D_8013B8B4) # addiu $a1, $a1, -0x474c
/* AE3404 8006C264 03C02025 */  move  $a0, $fp
/* AE3408 8006C268 0C0007FC */  jal   __assert
/* AE340C 8006C26C 2406011A */   li    $a2, 282
.L8006C270:
/* AE3410 8006C270 8FAF0040 */  lw    $t7, 0x40($sp)
.L8006C274:
/* AE3414 8006C274 25F80004 */  addiu $t8, $t7, 4
/* AE3418 8006C278 1000FFB9 */  b     .L8006C160
/* AE341C 8006C27C AFB80040 */   sw    $t8, 0x40($sp)
.L8006C280:
/* AE3420 8006C280 8FBF003C */  lw    $ra, 0x3c($sp)
/* AE3424 8006C284 8FB00018 */  lw    $s0, 0x18($sp)
/* AE3428 8006C288 8FB1001C */  lw    $s1, 0x1c($sp)
/* AE342C 8006C28C 8FB20020 */  lw    $s2, 0x20($sp)
/* AE3430 8006C290 8FB30024 */  lw    $s3, 0x24($sp)
/* AE3434 8006C294 8FB40028 */  lw    $s4, 0x28($sp)
/* AE3438 8006C298 8FB5002C */  lw    $s5, 0x2c($sp)
/* AE343C 8006C29C 8FB60030 */  lw    $s6, 0x30($sp)
/* AE3440 8006C2A0 8FB70034 */  lw    $s7, 0x34($sp)
/* AE3444 8006C2A4 8FBE0038 */  lw    $fp, 0x38($sp)
/* AE3448 8006C2A8 03E00008 */  jr    $ra
/* AE344C 8006C2AC 27BD0040 */   addiu $sp, $sp, 0x40

