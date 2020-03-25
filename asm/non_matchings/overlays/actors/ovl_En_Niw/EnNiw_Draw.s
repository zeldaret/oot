glabel EnNiw_Draw
/* 02938 80AB80B8 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 0293C 80AB80BC 3C0F80AC */  lui     $t7, %hi(D_80AB870C)       ## $t7 = 80AC0000
/* 02940 80AB80C0 AFBF002C */  sw      $ra, 0x002C($sp)
/* 02944 80AB80C4 AFB00028 */  sw      $s0, 0x0028($sp)
/* 02948 80AB80C8 AFA5004C */  sw      $a1, 0x004C($sp)
/* 0294C 80AB80CC 25EF870C */  addiu   $t7, $t7, %lo(D_80AB870C)  ## $t7 = 80AB870C
/* 02950 80AB80D0 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80AB870C
/* 02954 80AB80D4 27AE0038 */  addiu   $t6, $sp, 0x0038           ## $t6 = FFFFFFF0
/* 02958 80AB80D8 8DF80004 */  lw      $t8, 0x0004($t7)           ## 80AB8710
/* 0295C 80AB80DC ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFF0
/* 02960 80AB80E0 8DF90008 */  lw      $t9, 0x0008($t7)           ## 80AB8714
/* 02964 80AB80E4 ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFF4
/* 02968 80AB80E8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0296C 80AB80EC ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFF8
/* 02970 80AB80F0 8FA8004C */  lw      $t0, 0x004C($sp)
/* 02974 80AB80F4 0C024F46 */  jal     func_80093D18
/* 02978 80AB80F8 8D040000 */  lw      $a0, 0x0000($t0)           ## 00000000
/* 0297C 80AB80FC 8E050150 */  lw      $a1, 0x0150($s0)           ## 00000150
/* 02980 80AB8100 8E06016C */  lw      $a2, 0x016C($s0)           ## 0000016C
/* 02984 80AB8104 9207014E */  lbu     $a3, 0x014E($s0)           ## 0000014E
/* 02988 80AB8108 3C0980AB */  lui     $t1, %hi(func_80AB7F60)    ## $t1 = 80AB0000
/* 0298C 80AB810C 25297F60 */  addiu   $t1, $t1, %lo(func_80AB7F60) ## $t1 = 80AB7F60
/* 02990 80AB8110 AFA90010 */  sw      $t1, 0x0010($sp)
/* 02994 80AB8114 AFB00018 */  sw      $s0, 0x0018($sp)
/* 02998 80AB8118 AFA00014 */  sw      $zero, 0x0014($sp)
/* 0299C 80AB811C 0C0286B2 */  jal     SkelAnime_DrawSV
/* 029A0 80AB8120 8FA4004C */  lw      $a0, 0x004C($sp)
/* 029A4 80AB8124 8E0B0250 */  lw      $t3, 0x0250($s0)           ## 00000250
/* 029A8 80AB8128 3C0A80AB */  lui     $t2, %hi(func_80AB6450)    ## $t2 = 80AB0000
/* 029AC 80AB812C 254A6450 */  addiu   $t2, $t2, %lo(func_80AB6450) ## $t2 = 80AB6450
/* 029B0 80AB8130 154B0005 */  bne     $t2, $t3, .L80AB8148
/* 029B4 80AB8134 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
/* 029B8 80AB8138 27A50038 */  addiu   $a1, $sp, 0x0038           ## $a1 = FFFFFFF0
/* 029BC 80AB813C 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 029C0 80AB8140 0C00CF0C */  jal     func_80033C30
/* 029C4 80AB8144 8FA7004C */  lw      $a3, 0x004C($sp)
.L80AB8148:
/* 029C8 80AB8148 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 029CC 80AB814C 0C2AE103 */  jal     func_80AB840C
/* 029D0 80AB8150 8FA5004C */  lw      $a1, 0x004C($sp)
/* 029D4 80AB8154 8FBF002C */  lw      $ra, 0x002C($sp)
/* 029D8 80AB8158 8FB00028 */  lw      $s0, 0x0028($sp)
/* 029DC 80AB815C 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 029E0 80AB8160 03E00008 */  jr      $ra
/* 029E4 80AB8164 00000000 */  nop


