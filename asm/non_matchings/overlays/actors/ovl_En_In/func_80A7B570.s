.rdata
glabel D_80A7B9EC
    .asciz "../z_en_in.c"
    .balign 4

glabel D_80A7B9FC
    .asciz "../z_en_in.c"
    .balign 4

.text
glabel func_80A7B570
/* 025C0 80A7B570 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 025C4 80A7B574 3C0F80A8 */  lui     $t7, %hi(D_80A7B9A8)       ## $t7 = 80A80000
/* 025C8 80A7B578 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 025CC 80A7B57C AFA40048 */  sw      $a0, 0x0048($sp)           
/* 025D0 80A7B580 AFA5004C */  sw      $a1, 0x004C($sp)           
/* 025D4 80A7B584 AFA60050 */  sw      $a2, 0x0050($sp)           
/* 025D8 80A7B588 AFA70054 */  sw      $a3, 0x0054($sp)           
/* 025DC 80A7B58C 25EFB9A8 */  addiu   $t7, $t7, %lo(D_80A7B9A8)  ## $t7 = 80A7B9A8
/* 025E0 80A7B590 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80A7B9A8
/* 025E4 80A7B594 27AE0038 */  addiu   $t6, $sp, 0x0038           ## $t6 = FFFFFFF0
/* 025E8 80A7B598 8DF80004 */  lw      $t8, 0x0004($t7)           ## 80A7B9AC
/* 025EC 80A7B59C ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFF0
/* 025F0 80A7B5A0 8DF90008 */  lw      $t9, 0x0008($t7)           ## 80A7B9B0
/* 025F4 80A7B5A4 ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFF4
/* 025F8 80A7B5A8 3C0680A8 */  lui     $a2, %hi(D_80A7B9EC)       ## $a2 = 80A80000
/* 025FC 80A7B5AC ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFF8
/* 02600 80A7B5B0 8FA90048 */  lw      $t1, 0x0048($sp)           
/* 02604 80A7B5B4 24C6B9EC */  addiu   $a2, $a2, %lo(D_80A7B9EC)  ## $a2 = 80A7B9EC
/* 02608 80A7B5B8 2407091F */  addiu   $a3, $zero, 0x091F         ## $a3 = 0000091F
/* 0260C 80A7B5BC 8D250000 */  lw      $a1, 0x0000($t1)           ## 00000000
/* 02610 80A7B5C0 27A40024 */  addiu   $a0, $sp, 0x0024           ## $a0 = FFFFFFDC
/* 02614 80A7B5C4 0C031AB1 */  jal     Graph_OpenDisps              
/* 02618 80A7B5C8 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 0261C 80A7B5CC 8FA7004C */  lw      $a3, 0x004C($sp)           
/* 02620 80A7B5D0 24010010 */  addiu   $at, $zero, 0x0010         ## $at = 00000010
/* 02624 80A7B5D4 8FA80034 */  lw      $t0, 0x0034($sp)           
/* 02628 80A7B5D8 14E1000E */  bne     $a3, $at, .L80A7B614       
/* 0262C 80A7B5DC 8FA60058 */  lw      $a2, 0x0058($sp)           
/* 02630 80A7B5E0 27A40038 */  addiu   $a0, $sp, 0x0038           ## $a0 = FFFFFFF0
/* 02634 80A7B5E4 24C50038 */  addiu   $a1, $a2, 0x0038           ## $a1 = 00000038
/* 02638 80A7B5E8 0C0346BD */  jal     Matrix_MultVec3f              
/* 0263C 80A7B5EC AFA80034 */  sw      $t0, 0x0034($sp)           
/* 02640 80A7B5F0 8FA60058 */  lw      $a2, 0x0058($sp)           
/* 02644 80A7B5F4 8FA7004C */  lw      $a3, 0x004C($sp)           
/* 02648 80A7B5F8 8FA80034 */  lw      $t0, 0x0034($sp)           
/* 0264C 80A7B5FC 88CB0030 */  lwl     $t3, 0x0030($a2)           ## 00000030
/* 02650 80A7B600 98CB0033 */  lwr     $t3, 0x0033($a2)           ## 00000033
/* 02654 80A7B604 A8CB0044 */  swl     $t3, 0x0044($a2)           ## 00000044
/* 02658 80A7B608 B8CB0047 */  swr     $t3, 0x0047($a2)           ## 00000047
/* 0265C 80A7B60C 94CB0034 */  lhu     $t3, 0x0034($a2)           ## 00000034
/* 02660 80A7B610 A4CB0048 */  sh      $t3, 0x0048($a2)           ## 00000048
.L80A7B614:
/* 02664 80A7B614 2401000C */  addiu   $at, $zero, 0x000C         ## $at = 0000000C
/* 02668 80A7B618 14E1000D */  bne     $a3, $at, .L80A7B650       
/* 0266C 80A7B61C 8FA60058 */  lw      $a2, 0x0058($sp)           
/* 02670 80A7B620 8CCD0154 */  lw      $t5, 0x0154($a2)           ## 00000154
/* 02674 80A7B624 3C0C0601 */  lui     $t4, 0x0601                ## $t4 = 06010000
/* 02678 80A7B628 258C4CA8 */  addiu   $t4, $t4, 0x4CA8           ## $t4 = 06014CA8
/* 0267C 80A7B62C 158D0008 */  bne     $t4, $t5, .L80A7B650       
/* 02680 80A7B630 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 02684 80A7B634 8D0302C0 */  lw      $v1, 0x02C0($t0)           ## 000002C0
/* 02688 80A7B638 3C180600 */  lui     $t8, 0x0600                ## $t8 = 06000000
/* 0268C 80A7B63C 27187A20 */  addiu   $t8, $t8, 0x7A20           ## $t8 = 06007A20
/* 02690 80A7B640 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 02694 80A7B644 AD0E02C0 */  sw      $t6, 0x02C0($t0)           ## 000002C0
/* 02698 80A7B648 AC780004 */  sw      $t8, 0x0004($v1)           ## 00000004
/* 0269C 80A7B64C AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
.L80A7B650:
/* 026A0 80A7B650 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
/* 026A4 80A7B654 14E1000D */  bne     $a3, $at, .L80A7B68C       
/* 026A8 80A7B658 27A40024 */  addiu   $a0, $sp, 0x0024           ## $a0 = FFFFFFDC
/* 026AC 80A7B65C 8CC90154 */  lw      $t1, 0x0154($a2)           ## 00000154
/* 026B0 80A7B660 3C190601 */  lui     $t9, 0x0601                ## $t9 = 06010000
/* 026B4 80A7B664 27394CA8 */  addiu   $t9, $t9, 0x4CA8           ## $t9 = 06014CA8
/* 026B8 80A7B668 17290008 */  bne     $t9, $t1, .L80A7B68C       
/* 026BC 80A7B66C 3C0BDE00 */  lui     $t3, 0xDE00                ## $t3 = DE000000
/* 026C0 80A7B670 8D0302C0 */  lw      $v1, 0x02C0($t0)           ## 000002C0
/* 026C4 80A7B674 3C0C0600 */  lui     $t4, 0x0600                ## $t4 = 06000000
/* 026C8 80A7B678 258C7BF8 */  addiu   $t4, $t4, 0x7BF8           ## $t4 = 06007BF8
/* 026CC 80A7B67C 246A0008 */  addiu   $t2, $v1, 0x0008           ## $t2 = 00000008
/* 026D0 80A7B680 AD0A02C0 */  sw      $t2, 0x02C0($t0)           ## 000002C0
/* 026D4 80A7B684 AC6C0004 */  sw      $t4, 0x0004($v1)           ## 00000004
/* 026D8 80A7B688 AC6B0000 */  sw      $t3, 0x0000($v1)           ## 00000000
.L80A7B68C:
/* 026DC 80A7B68C 8FAD0048 */  lw      $t5, 0x0048($sp)           
/* 026E0 80A7B690 3C0680A8 */  lui     $a2, %hi(D_80A7B9FC)       ## $a2 = 80A80000
/* 026E4 80A7B694 24C6B9FC */  addiu   $a2, $a2, %lo(D_80A7B9FC)  ## $a2 = 80A7B9FC
/* 026E8 80A7B698 2407093D */  addiu   $a3, $zero, 0x093D         ## $a3 = 0000093D
/* 026EC 80A7B69C 0C031AD5 */  jal     Graph_CloseDisps              
/* 026F0 80A7B6A0 8DA50000 */  lw      $a1, 0x0000($t5)           ## 00000000
/* 026F4 80A7B6A4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 026F8 80A7B6A8 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 026FC 80A7B6AC 03E00008 */  jr      $ra                        
/* 02700 80A7B6B0 00000000 */  nop
