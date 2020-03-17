.rdata
glabel D_80135750
    .asciz "effect index %3d:size=%6dbyte romsize=%6dbyte\n"
    .balign 4

glabel D_80135780
    .asciz "../z_effect_soft_sprite.c"
    .balign 4

glabel D_8013579C
    .asciz "EffectSS2Info.data_table != NULL"
    .balign 4

glabel D_801357C0
    .asciz "../z_effect_soft_sprite.c"
    .balign 4

.text
glabel func_800272B0
/* A9E450 800272B0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* A9E454 800272B4 AFB2001C */  sw    $s2, 0x1c($sp)
/* A9E458 800272B8 AFB10018 */  sw    $s1, 0x18($sp)
/* A9E45C 800272BC AFB30020 */  sw    $s3, 0x20($sp)
/* A9E460 800272C0 AFB00014 */  sw    $s0, 0x14($sp)
/* A9E464 800272C4 3C118011 */  lui   $s1, %hi(sParticleOverlayTable) # $s1, 0x8011
/* A9E468 800272C8 3C128013 */  lui   $s2, %hi(D_80135750) # $s2, 0x8013
/* A9E46C 800272CC AFBF0024 */  sw    $ra, 0x24($sp)
/* A9E470 800272D0 AFA40028 */  sw    $a0, 0x28($sp)
/* A9E474 800272D4 AFA5002C */  sw    $a1, 0x2c($sp)
/* A9E478 800272D8 26525750 */  addiu $s2, %lo(D_80135750) # addiu $s2, $s2, 0x5750
/* A9E47C 800272DC 263159B0 */  addiu $s1, %lo(sParticleOverlayTable) # addiu $s1, $s1, 0x59b0
/* A9E480 800272E0 00008025 */  move  $s0, $zero
/* A9E484 800272E4 24130025 */  li    $s3, 37
.L800272E8:
/* A9E488 800272E8 8E2E000C */  lw    $t6, 0xc($s1)
/* A9E48C 800272EC 8E2F0008 */  lw    $t7, 8($s1)
/* A9E490 800272F0 8E380004 */  lw    $t8, 4($s1)
/* A9E494 800272F4 8E390000 */  lw    $t9, ($s1)
/* A9E498 800272F8 02402025 */  move  $a0, $s2
/* A9E49C 800272FC 02002825 */  move  $a1, $s0
/* A9E4A0 80027300 01CF3023 */  subu  $a2, $t6, $t7
/* A9E4A4 80027304 0C00084C */  jal   osSyncPrintf
/* A9E4A8 80027308 03193823 */   subu  $a3, $t8, $t9
/* A9E4AC 8002730C 26100001 */  addiu $s0, $s0, 1
/* A9E4B0 80027310 1613FFF5 */  bne   $s0, $s3, .L800272E8
/* A9E4B4 80027314 2631001C */   addiu $s1, $s1, 0x1c
/* A9E4B8 80027318 8FA8002C */  lw    $t0, 0x2c($sp)
/* A9E4BC 8002731C 24120060 */  li    $s2, 96
/* A9E4C0 80027320 3C068013 */  lui   $a2, %hi(D_80135780) # $a2, 0x8013
/* A9E4C4 80027324 01120019 */  multu $t0, $s2
/* A9E4C8 80027328 24C65780 */  addiu $a2, %lo(D_80135780) # addiu $a2, $a2, 0x5780
/* A9E4CC 8002732C 8FA40028 */  lw    $a0, 0x28($sp)
/* A9E4D0 80027330 24070121 */  li    $a3, 289
/* A9E4D4 80027334 00002812 */  mflo  $a1
/* A9E4D8 80027338 0C031521 */  jal   Game_Alloc
/* A9E4DC 8002733C 00000000 */   nop   
/* A9E4E0 80027340 3C118011 */  lui   $s1, %hi(EffectSS2Info) # $s1, 0x8011
/* A9E4E4 80027344 263158B0 */  addiu $s1, %lo(EffectSS2Info) # addiu $s1, $s1, 0x58b0
/* A9E4E8 80027348 AE220000 */  sw    $v0, ($s1)
/* A9E4EC 8002734C 14400008 */  bnez  $v0, .L80027370
/* A9E4F0 80027350 00401825 */   move  $v1, $v0
/* A9E4F4 80027354 3C048013 */  lui   $a0, %hi(D_8013579C) # $a0, 0x8013
/* A9E4F8 80027358 3C058013 */  lui   $a1, %hi(D_801357C0) # $a1, 0x8013
/* A9E4FC 8002735C 24A557C0 */  addiu $a1, %lo(D_801357C0) # addiu $a1, $a1, 0x57c0
/* A9E500 80027360 2484579C */  addiu $a0, %lo(D_8013579C) # addiu $a0, $a0, 0x579c
/* A9E504 80027364 0C0007FC */  jal   __assert
/* A9E508 80027368 24060122 */   li    $a2, 290
/* A9E50C 8002736C 8E230000 */  lw    $v1, ($s1)
.L80027370:
/* A9E510 80027370 8FA9002C */  lw    $t1, 0x2c($sp)
/* A9E514 80027374 AE200004 */  sw    $zero, 4($s1)
/* A9E518 80027378 00608025 */  move  $s0, $v1
/* A9E51C 8002737C 01320019 */  multu $t1, $s2
/* A9E520 80027380 AE290008 */  sw    $t1, 8($s1)
/* A9E524 80027384 00005812 */  mflo  $t3
/* A9E528 80027388 01636021 */  addu  $t4, $t3, $v1
/* A9E52C 8002738C 006C082B */  sltu  $at, $v1, $t4
/* A9E530 80027390 1020000C */  beqz  $at, .L800273C4
/* A9E534 80027394 00000000 */   nop   
.L80027398:
/* A9E538 80027398 0C009D4F */  jal   Effect_SS_ResetEntry
/* A9E53C 8002739C 02002025 */   move  $a0, $s0
/* A9E540 800273A0 8E2D0008 */  lw    $t5, 8($s1)
/* A9E544 800273A4 8E2F0000 */  lw    $t7, ($s1)
/* A9E548 800273A8 26100060 */  addiu $s0, $s0, 0x60
/* A9E54C 800273AC 01B20019 */  multu $t5, $s2
/* A9E550 800273B0 00007012 */  mflo  $t6
/* A9E554 800273B4 01CFC021 */  addu  $t8, $t6, $t7
/* A9E558 800273B8 0218082B */  sltu  $at, $s0, $t8
/* A9E55C 800273BC 1420FFF6 */  bnez  $at, .L80027398
/* A9E560 800273C0 00000000 */   nop   
.L800273C4:
/* A9E564 800273C4 3C018011 */  lui   $at, %hi(D_801159C0) # $at, 0x8011
/* A9E568 800273C8 3C028011 */  lui   $v0, %hi(D_801159CC) # $v0, 0x8011
/* A9E56C 800273CC 244259CC */  addiu $v0, %lo(D_801159CC) # addiu $v0, $v0, 0x59cc
/* A9E570 800273D0 AC2059C0 */  sw    $zero, %lo(D_801159C0)($at)
/* A9E574 800273D4 24100001 */  li    $s0, 1
.L800273D8:
/* A9E578 800273D8 26100004 */  addiu $s0, $s0, 4
/* A9E57C 800273DC AC40002C */  sw    $zero, 0x2c($v0)
/* A9E580 800273E0 AC400048 */  sw    $zero, 0x48($v0)
/* A9E584 800273E4 AC400064 */  sw    $zero, 0x64($v0)
/* A9E588 800273E8 24420070 */  addiu $v0, $v0, 0x70
/* A9E58C 800273EC 1613FFFA */  bne   $s0, $s3, .L800273D8
/* A9E590 800273F0 AC40FFA0 */   sw    $zero, -0x60($v0)
/* A9E594 800273F4 8FBF0024 */  lw    $ra, 0x24($sp)
/* A9E598 800273F8 8FB00014 */  lw    $s0, 0x14($sp)
/* A9E59C 800273FC 8FB10018 */  lw    $s1, 0x18($sp)
/* A9E5A0 80027400 8FB2001C */  lw    $s2, 0x1c($sp)
/* A9E5A4 80027404 8FB30020 */  lw    $s3, 0x20($sp)
/* A9E5A8 80027408 03E00008 */  jr    $ra
/* A9E5AC 8002740C 27BD0028 */   addiu $sp, $sp, 0x28

