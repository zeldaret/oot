glabel func_80B1D2E4
/* 019E4 80B1D2E4 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 019E8 80B1D2E8 3C0F80B2 */  lui     $t7, %hi(D_80B1D580)       ## $t7 = 80B20000
/* 019EC 80B1D2EC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 019F0 80B1D2F0 AFA40038 */  sw      $a0, 0x0038($sp)           
/* 019F4 80B1D2F4 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 019F8 80B1D2F8 AFA60040 */  sw      $a2, 0x0040($sp)           
/* 019FC 80B1D2FC AFA70044 */  sw      $a3, 0x0044($sp)           
/* 01A00 80B1D300 25EFD580 */  addiu   $t7, $t7, %lo(D_80B1D580)  ## $t7 = 80B1D580
/* 01A04 80B1D304 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80B1D580
/* 01A08 80B1D308 27AE0028 */  addiu   $t6, $sp, 0x0028           ## $t6 = FFFFFFF0
/* 01A0C 80B1D30C 8DF80004 */  lw      $t8, 0x0004($t7)           ## 80B1D584
/* 01A10 80B1D310 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFF0
/* 01A14 80B1D314 8DF90008 */  lw      $t9, 0x0008($t7)           ## 80B1D588
/* 01A18 80B1D318 3C0880B2 */  lui     $t0, %hi(D_80B1D58C)       ## $t0 = 80B20000
/* 01A1C 80B1D31C 2508D58C */  addiu   $t0, $t0, %lo(D_80B1D58C)  ## $t0 = 80B1D58C
/* 01A20 80B1D320 ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFF4
/* 01A24 80B1D324 ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFF8
/* 01A28 80B1D328 8D0A0000 */  lw      $t2, 0x0000($t0)           ## 80B1D58C
/* 01A2C 80B1D32C 27A7001C */  addiu   $a3, $sp, 0x001C           ## $a3 = FFFFFFE4
/* 01A30 80B1D330 24010010 */  addiu   $at, $zero, 0x0010         ## $at = 00000010
/* 01A34 80B1D334 ACEA0000 */  sw      $t2, 0x0000($a3)           ## FFFFFFE4
/* 01A38 80B1D338 8D090004 */  lw      $t1, 0x0004($t0)           ## 80B1D590
/* 01A3C 80B1D33C 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 01A40 80B1D340 00E02025 */  or      $a0, $a3, $zero            ## $a0 = FFFFFFE4
/* 01A44 80B1D344 ACE90004 */  sw      $t1, 0x0004($a3)           ## FFFFFFE8
/* 01A48 80B1D348 8D0A0008 */  lw      $t2, 0x0008($t0)           ## 80B1D594
/* 01A4C 80B1D34C 14A10006 */  bne     $a1, $at, .L80B1D368       
/* 01A50 80B1D350 ACEA0008 */  sw      $t2, 0x0008($a3)           ## FFFFFFEC
/* 01A54 80B1D354 8FA50048 */  lw      $a1, 0x0048($sp)           
/* 01A58 80B1D358 AFA6003C */  sw      $a2, 0x003C($sp)           
/* 01A5C 80B1D35C 0C0346BD */  jal     Matrix_MultVec3f              
/* 01A60 80B1D360 24A50038 */  addiu   $a1, $a1, 0x0038           ## $a1 = 00000038
/* 01A64 80B1D364 8FA6003C */  lw      $a2, 0x003C($sp)           
.L80B1D368:
/* 01A68 80B1D368 2401000E */  addiu   $at, $zero, 0x000E         ## $at = 0000000E
/* 01A6C 80B1D36C 14C10006 */  bne     $a2, $at, .L80B1D388       
/* 01A70 80B1D370 8FA50048 */  lw      $a1, 0x0048($sp)           
/* 01A74 80B1D374 27A40028 */  addiu   $a0, $sp, 0x0028           ## $a0 = FFFFFFF0
/* 01A78 80B1D378 0C0346BD */  jal     Matrix_MultVec3f              
/* 01A7C 80B1D37C 24A50304 */  addiu   $a1, $a1, 0x0304           ## $a1 = 00000304
/* 01A80 80B1D380 0C2C7480 */  jal     func_80B1D200              
/* 01A84 80B1D384 8FA40038 */  lw      $a0, 0x0038($sp)           
.L80B1D388:
/* 01A88 80B1D388 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01A8C 80B1D38C 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 01A90 80B1D390 03E00008 */  jr      $ra                        
/* 01A94 80B1D394 00000000 */  nop


