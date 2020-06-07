.rdata
glabel D_80144E28
    .asciz "ハイラル一時解放!!\n"
    # EUC-JP: ハイラル一時解放!! | Hyal temporary release!
    .balign 4

glabel D_80144E3C
    .asciz "%c"
    .balign 4

glabel D_80144E40
    .asciz "\x1b[31m"
    .balign 4

glabel D_80144E48
    .asciz "メモリが足りません。ハイラルサイズを可能な最大値に変更します\n"
    # EUC-JP: メモリが足りません。ハイラルサイズを可能な最大値に変更します | Not enough memory. Change Hyrule size to maximum possible
    .balign 4

glabel D_80144E88
    .asciz "(hyral=%08x max=%08x free=%08x alloc=%08x)\n"
    .balign 4

glabel D_80144EB4
    .asciz "\x1b[m"
    .balign 4

glabel D_80144EB8
    .asciz "ハイラル再確保 サイズ＝%u バイト\n"
    # EUC-JP: ハイラル再確保 サイズ＝%u バイト | Hyal re-allocation size =%u bytes
    .balign 4

glabel D_80144EDC
    .asciz "../game.c"
    .balign 4

glabel D_80144EE8
    .asciz "ハイラル再確保成功\n"
    # EUC-JP: ハイラル再確保成功 | Successful Hyal Reacquisition
    .balign 4

glabel D_80144EFC
    .asciz "ハイラル再確保失敗\n"
    # EUC-JP: ハイラル再確保失敗 | Hyal reacquisition failure
    .balign 4

glabel D_80144F10
    .asciz "../game.c"
    .balign 4

.text
glabel GameState_Realloc
/* B3C0C0 800C4F20 27BDFFC0 */  addiu $sp, $sp, -0x40
/* B3C0C4 800C4F24 AFBF001C */  sw    $ra, 0x1c($sp)
/* B3C0C8 800C4F28 AFA50044 */  sw    $a1, 0x44($sp)
/* B3C0CC 800C4F2C 8C8E0078 */  lw    $t6, 0x78($a0)
/* B3C0D0 800C4F30 00803025 */  move  $a2, $a0
/* B3C0D4 800C4F34 24840074 */  addiu $a0, $a0, 0x74
/* B3C0D8 800C4F38 AFA40020 */  sw    $a0, 0x20($sp)
/* B3C0DC 800C4F3C AFA60040 */  sw    $a2, 0x40($sp)
/* B3C0E0 800C4F40 0C030EFE */  jal   THA_Dt
/* B3C0E4 800C4F44 AFAE0028 */   sw    $t6, 0x28($sp)
/* B3C0E8 800C4F48 8FA60040 */  lw    $a2, 0x40($sp)
/* B3C0EC 800C4F4C 8FA50028 */  lw    $a1, 0x28($sp)
/* B3C0F0 800C4F50 24C40084 */  addiu $a0, $a2, 0x84
/* B3C0F4 800C4F54 0C0315C9 */  jal   GameAlloc_Free
/* B3C0F8 800C4F58 AFA40024 */   sw    $a0, 0x24($sp)
/* B3C0FC 800C4F5C 3C048014 */  lui   $a0, %hi(D_80144E28) # $a0, 0x8014
/* B3C100 800C4F60 0C00084C */  jal   osSyncPrintf
/* B3C104 800C4F64 24844E28 */   addiu $a0, %lo(D_80144E28) # addiu $a0, $a0, 0x4e28
/* B3C108 800C4F68 27A40034 */  addiu $a0, $sp, 0x34
/* B3C10C 800C4F6C 27A50030 */  addiu $a1, $sp, 0x30
/* B3C110 800C4F70 0C03F622 */  jal   SystemArena_GetSizes
/* B3C114 800C4F74 27A6002C */   addiu $a2, $sp, 0x2c
/* B3C118 800C4F78 8FB80034 */  lw    $t8, 0x34($sp)
/* B3C11C 800C4F7C 8FAF0044 */  lw    $t7, 0x44($sp)
/* B3C120 800C4F80 3C048014 */  lui   $a0, %hi(D_80144E3C) # $a0, 0x8014
/* B3C124 800C4F84 2719FFF0 */  addiu $t9, $t8, -0x10
/* B3C128 800C4F88 032F082B */  sltu  $at, $t9, $t7
/* B3C12C 800C4F8C 10200017 */  beqz  $at, .L800C4FEC
/* B3C130 800C4F90 24844E3C */   addiu $a0, %lo(D_80144E3C) # addiu $a0, $a0, 0x4e3c
/* B3C134 800C4F94 0C00084C */  jal   osSyncPrintf
/* B3C138 800C4F98 24050007 */   li    $a1, 7
/* B3C13C 800C4F9C 3C048014 */  lui   $a0, %hi(D_80144E40) # $a0, 0x8014
/* B3C140 800C4FA0 0C00084C */  jal   osSyncPrintf
/* B3C144 800C4FA4 24844E40 */   addiu $a0, %lo(D_80144E40) # addiu $a0, $a0, 0x4e40
/* B3C148 800C4FA8 3C048014 */  lui   $a0, %hi(D_80144E48) # $a0, 0x8014
/* B3C14C 800C4FAC 0C00084C */  jal   osSyncPrintf
/* B3C150 800C4FB0 24844E48 */   addiu $a0, %lo(D_80144E48) # addiu $a0, $a0, 0x4e48
/* B3C154 800C4FB4 8FA8002C */  lw    $t0, 0x2c($sp)
/* B3C158 800C4FB8 3C048014 */  lui   $a0, %hi(D_80144E88) # $a0, 0x8014
/* B3C15C 800C4FBC 24844E88 */  addiu $a0, %lo(D_80144E88) # addiu $a0, $a0, 0x4e88
/* B3C160 800C4FC0 8FA50044 */  lw    $a1, 0x44($sp)
/* B3C164 800C4FC4 8FA60034 */  lw    $a2, 0x34($sp)
/* B3C168 800C4FC8 8FA70030 */  lw    $a3, 0x30($sp)
/* B3C16C 800C4FCC 0C00084C */  jal   osSyncPrintf
/* B3C170 800C4FD0 AFA80010 */   sw    $t0, 0x10($sp)
/* B3C174 800C4FD4 3C048014 */  lui   $a0, %hi(D_80144EB4) # $a0, 0x8014
/* B3C178 800C4FD8 0C00084C */  jal   osSyncPrintf
/* B3C17C 800C4FDC 24844EB4 */   addiu $a0, %lo(D_80144EB4) # addiu $a0, $a0, 0x4eb4
/* B3C180 800C4FE0 8FA90034 */  lw    $t1, 0x34($sp)
/* B3C184 800C4FE4 252AFFF0 */  addiu $t2, $t1, -0x10
/* B3C188 800C4FE8 AFAA0044 */  sw    $t2, 0x44($sp)
.L800C4FEC:
/* B3C18C 800C4FEC 3C048014 */  lui   $a0, %hi(D_80144EB8) # $a0, 0x8014
/* B3C190 800C4FF0 24844EB8 */  addiu $a0, %lo(D_80144EB8) # addiu $a0, $a0, 0x4eb8
/* B3C194 800C4FF4 0C00084C */  jal   osSyncPrintf
/* B3C198 800C4FF8 8FA50044 */   lw    $a1, 0x44($sp)
/* B3C19C 800C4FFC 3C068014 */  lui   $a2, %hi(D_80144EDC) # $a2, 0x8014
/* B3C1A0 800C5000 24C64EDC */  addiu $a2, %lo(D_80144EDC) # addiu $a2, $a2, 0x4edc
/* B3C1A4 800C5004 8FA40024 */  lw    $a0, 0x24($sp)
/* B3C1A8 800C5008 8FA50044 */  lw    $a1, 0x44($sp)
/* B3C1AC 800C500C 0C03158F */  jal   GameAlloc_MallocDebug
/* B3C1B0 800C5010 24070409 */   li    $a3, 1033
/* B3C1B4 800C5014 10400009 */  beqz  $v0, .L800C503C
/* B3C1B8 800C5018 00402825 */   move  $a1, $v0
/* B3C1BC 800C501C 8FA40020 */  lw    $a0, 0x20($sp)
/* B3C1C0 800C5020 0C030EF5 */  jal   THA_Ct
/* B3C1C4 800C5024 8FA60044 */   lw    $a2, 0x44($sp)
/* B3C1C8 800C5028 3C048014 */  lui   $a0, %hi(D_80144EE8) # $a0, 0x8014
/* B3C1CC 800C502C 0C00084C */  jal   osSyncPrintf
/* B3C1D0 800C5030 24844EE8 */   addiu $a0, %lo(D_80144EE8) # addiu $a0, $a0, 0x4ee8
/* B3C1D4 800C5034 1000000F */  b     .L800C5074
/* B3C1D8 800C5038 8FBF001C */   lw    $ra, 0x1c($sp)
.L800C503C:
/* B3C1DC 800C503C 8FA40020 */  lw    $a0, 0x20($sp)
/* B3C1E0 800C5040 00002825 */  move  $a1, $zero
/* B3C1E4 800C5044 0C030EF5 */  jal   THA_Ct
/* B3C1E8 800C5048 00003025 */   move  $a2, $zero
/* B3C1EC 800C504C 3C048014 */  lui   $a0, %hi(D_80144EFC) # $a0, 0x8014
/* B3C1F0 800C5050 0C00084C */  jal   osSyncPrintf
/* B3C1F4 800C5054 24844EFC */   addiu $a0, %lo(D_80144EFC) # addiu $a0, $a0, 0x4efc
/* B3C1F8 800C5058 0C03F616 */  jal   SystemArena_Display
/* B3C1FC 800C505C 00000000 */   nop
/* B3C200 800C5060 3C048014 */  lui   $a0, %hi(D_80144F10) # $a0, 0x8014
/* B3C204 800C5064 24844F10 */  addiu $a0, %lo(D_80144F10) # addiu $a0, $a0, 0x4f10
/* B3C208 800C5068 0C0359C3 */  jal   Fault_AddHungupAndCrash
/* B3C20C 800C506C 24050414 */   li    $a1, 1044
/* B3C210 800C5070 8FBF001C */  lw    $ra, 0x1c($sp)
.L800C5074:
/* B3C214 800C5074 27BD0040 */  addiu $sp, $sp, 0x40
/* B3C218 800C5078 03E00008 */  jr    $ra
/* B3C21C 800C507C 00000000 */   nop
