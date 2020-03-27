glabel func_808D779C
/* 00F2C 808D779C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00F30 808D77A0 AFB00018 */  sw      $s0, 0x0018($sp)
/* 00F34 808D77A4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00F38 808D77A8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00F3C 808D77AC 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 00F40 808D77B0 AFBF001C */  sw      $ra, 0x001C($sp)
/* 00F44 808D77B4 AFA50034 */  sw      $a1, 0x0034($sp)
/* 00F48 808D77B8 00A12021 */  addu    $a0, $a1, $at
/* 00F4C 808D77BC AFA40024 */  sw      $a0, 0x0024($sp)
/* 00F50 808D77C0 0C02604B */  jal     Object_GetIndex
              ## ObjectIndex
/* 00F54 808D77C4 2405017D */  addiu   $a1, $zero, 0x017D         ## $a1 = 0000017D
/* 00F58 808D77C8 8FA40024 */  lw      $a0, 0x0024($sp)
/* 00F5C 808D77CC 04410005 */  bgez    $v0, .L808D77E4
/* 00F60 808D77D0 00403825 */  or      $a3, $v0, $zero            ## $a3 = 00000000
/* 00F64 808D77D4 0C00B55C */  jal     Actor_Kill

/* 00F68 808D77D8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F6C 808D77DC 10000023 */  beq     $zero, $zero, .L808D786C
/* 00F70 808D77E0 8FBF001C */  lw      $ra, 0x001C($sp)
.L808D77E4:
/* 00F74 808D77E4 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
/* 00F78 808D77E8 0C026062 */  jal     Object_IsLoaded

/* 00F7C 808D77EC AFA70028 */  sw      $a3, 0x0028($sp)
/* 00F80 808D77F0 1040001A */  beq     $v0, $zero, .L808D785C
/* 00F84 808D77F4 8FA70028 */  lw      $a3, 0x0028($sp)
/* 00F88 808D77F8 3C0E808D */  lui     $t6, %hi(func_808D7918)    ## $t6 = 808D0000
/* 00F8C 808D77FC 25CE7918 */  addiu   $t6, $t6, %lo(func_808D7918) ## $t6 = 808D7918
/* 00F90 808D7800 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 00F94 808D7804 AE0E0194 */  sw      $t6, 0x0194($s0)           ## 00000194
/* 00F98 808D7808 A20F0198 */  sb      $t7, 0x0198($s0)           ## 00000198
/* 00F9C 808D780C AE07014C */  sw      $a3, 0x014C($s0)           ## 0000014C
/* 00FA0 808D7810 8FB80034 */  lw      $t8, 0x0034($sp)
/* 00FA4 808D7814 0007C900 */  sll     $t9, $a3,  4
/* 00FA8 808D7818 0327C821 */  addu    $t9, $t9, $a3
/* 00FAC 808D781C 0019C880 */  sll     $t9, $t9,  2
/* 00FB0 808D7820 3C090001 */  lui     $t1, 0x0001                ## $t1 = 00010000
/* 00FB4 808D7824 03194021 */  addu    $t0, $t8, $t9
/* 00FB8 808D7828 01284821 */  addu    $t1, $t1, $t0
/* 00FBC 808D782C 8D2917B4 */  lw      $t1, 0x17B4($t1)           ## 000117B4
/* 00FC0 808D7830 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00FC4 808D7834 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00FC8 808D7838 01215021 */  addu    $t2, $t1, $at
/* 00FCC 808D783C 3C018016 */  lui     $at, 0x8016                ## $at = 80160000
/* 00FD0 808D7840 AC2A6FC0 */  sw      $t2, 0x6FC0($at)           ## 80166FC0
/* 00FD4 808D7844 24A55FFC */  addiu   $a1, $a1, 0x5FFC           ## $a1 = 06005FFC
/* 00FD8 808D7848 26040150 */  addiu   $a0, $s0, 0x0150           ## $a0 = 00000150
/* 00FDC 808D784C 0C0294D3 */  jal     SkelAnime_ChangeAnimationTransitionRate
/* 00FE0 808D7850 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 00FE4 808D7854 10000005 */  beq     $zero, $zero, .L808D786C
/* 00FE8 808D7858 8FBF001C */  lw      $ra, 0x001C($sp)
.L808D785C:
/* 00FEC 808D785C 3C0B808D */  lui     $t3, %hi(func_808D779C)    ## $t3 = 808D0000
/* 00FF0 808D7860 256B779C */  addiu   $t3, $t3, %lo(func_808D779C) ## $t3 = 808D779C
/* 00FF4 808D7864 AE0B0194 */  sw      $t3, 0x0194($s0)           ## 00000194
/* 00FF8 808D7868 8FBF001C */  lw      $ra, 0x001C($sp)
.L808D786C:
/* 00FFC 808D786C 8FB00018 */  lw      $s0, 0x0018($sp)
/* 01000 808D7870 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 01004 808D7874 03E00008 */  jr      $ra
/* 01008 808D7878 00000000 */  nop


