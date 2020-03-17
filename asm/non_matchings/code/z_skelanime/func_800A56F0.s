.rdata
glabel D_80140608
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_8014061C
    .asciz "now_joint あきまへん！！\n"
    # EUC-JP: あきまへん！！ | 'Akimane!!'?
    .balign 4

glabel D_80140638
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_8014064C
    .asciz "morf_joint あきまへん！！\n"
    # EUC-JP: あきまへん！！ | 'Akimane!!'?
    .balign 4

.text
glabel func_800A56F0
/* B1C890 800A56F0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B1C894 800A56F4 AFBF0014 */  sw    $ra, 0x14($sp)
/* B1C898 800A56F8 AFA40018 */  sw    $a0, 0x18($sp)
/* B1C89C 800A56FC AFA5001C */  sw    $a1, 0x1c($sp)
/* B1C8A0 800A5700 8C870020 */  lw    $a3, 0x20($a0)
/* B1C8A4 800A5704 3C058014 */  lui   $a1, %hi(D_80140608) # $a1, 0x8014
/* B1C8A8 800A5708 24A50608 */  addiu $a1, %lo(D_80140608) # addiu $a1, $a1, 0x608
/* B1C8AC 800A570C 10E00006 */  beqz  $a3, .L800A5728
/* B1C8B0 800A5710 3C048014 */   lui   $a0, %hi(D_8014061C) # $a0, 0x8014
/* B1C8B4 800A5714 00E02025 */  move  $a0, $a3
/* B1C8B8 800A5718 0C01EC35 */  jal   ZeldaArena_FreeDebug
/* B1C8BC 800A571C 24060E91 */   li    $a2, 3729
/* B1C8C0 800A5720 10000004 */  b     .L800A5734
/* B1C8C4 800A5724 8FAF0018 */   lw    $t7, 0x18($sp)
.L800A5728:
/* B1C8C8 800A5728 0C00084C */  jal   osSyncPrintf
/* B1C8CC 800A572C 2484061C */   addiu $a0, %lo(D_8014061C) # addiu $a0, $a0, 0x61c
/* B1C8D0 800A5730 8FAF0018 */  lw    $t7, 0x18($sp)
.L800A5734:
/* B1C8D4 800A5734 3C058014 */  lui   $a1, %hi(D_80140638) # $a1, 0x8014
/* B1C8D8 800A5738 24A50638 */  addiu $a1, %lo(D_80140638) # addiu $a1, $a1, 0x638
/* B1C8DC 800A573C 8DE40024 */  lw    $a0, 0x24($t7)
/* B1C8E0 800A5740 10800005 */  beqz  $a0, .L800A5758
/* B1C8E4 800A5744 00000000 */   nop   
/* B1C8E8 800A5748 0C01EC35 */  jal   ZeldaArena_FreeDebug
/* B1C8EC 800A574C 24060E93 */   li    $a2, 3731
/* B1C8F0 800A5750 10000005 */  b     .L800A5768
/* B1C8F4 800A5754 8FBF0014 */   lw    $ra, 0x14($sp)
.L800A5758:
/* B1C8F8 800A5758 3C048014 */  lui   $a0, %hi(D_8014064C) # $a0, 0x8014
/* B1C8FC 800A575C 0C00084C */  jal   osSyncPrintf
/* B1C900 800A5760 2484064C */   addiu $a0, %lo(D_8014064C) # addiu $a0, $a0, 0x64c
/* B1C904 800A5764 8FBF0014 */  lw    $ra, 0x14($sp)
.L800A5768:
/* B1C908 800A5768 27BD0018 */  addiu $sp, $sp, 0x18
/* B1C90C 800A576C 03E00008 */  jr    $ra
/* B1C910 800A5770 00000000 */   nop   

