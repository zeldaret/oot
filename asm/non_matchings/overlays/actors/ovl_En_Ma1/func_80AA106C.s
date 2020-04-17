glabel func_80AA106C
/* 009DC 80AA106C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 009E0 80AA1070 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 009E4 80AA1074 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 009E8 80AA1078 3C010080 */  lui     $at, 0x0080                ## $at = 00800000
/* 009EC 80AA107C 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 009F0 80AA1080 8C4E0680 */  lw      $t6, 0x0680($v0)           ## 00000680
/* 009F4 80AA1084 01C17825 */  or      $t7, $t6, $at              ## $t7 = 00800000
/* 009F8 80AA1088 AC4F0680 */  sw      $t7, 0x0680($v0)           ## 00000680
/* 009FC 80AA108C 849801E8 */  lh      $t8, 0x01E8($a0)           ## 000001E8
/* 00A00 80AA1090 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00A04 80AA1094 24040002 */  addiu   $a0, $zero, 0x0002         ## $a0 = 00000002
/* 00A08 80AA1098 57010011 */  bnel    $t8, $at, .L80AA10E0       
/* 00A0C 80AA109C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00A10 80AA10A0 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00A14 80AA10A4 0C03B616 */  jal     func_800ED858              
/* 00A18 80AA10A8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00A1C 80AA10AC 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00A20 80AA10B0 0C042F56 */  jal     func_8010BD58              
/* 00A24 80AA10B4 24050009 */  addiu   $a1, $zero, 0x0009         ## $a1 = 00000009
/* 00A28 80AA10B8 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00A2C 80AA10BC 3C01FFFE */  lui     $at, 0xFFFE                ## $at = FFFE0000
/* 00A30 80AA10C0 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = FFFEFFFF
/* 00A34 80AA10C4 8CD90004 */  lw      $t9, 0x0004($a2)           ## 00000004
/* 00A38 80AA10C8 3C0980AA */  lui     $t1, %hi(func_80AA10EC)    ## $t1 = 80AA0000
/* 00A3C 80AA10CC 252910EC */  addiu   $t1, $t1, %lo(func_80AA10EC) ## $t1 = 80AA10EC
/* 00A40 80AA10D0 03214024 */  and     $t0, $t9, $at              
/* 00A44 80AA10D4 ACC80004 */  sw      $t0, 0x0004($a2)           ## 00000004
/* 00A48 80AA10D8 ACC90190 */  sw      $t1, 0x0190($a2)           ## 00000190
/* 00A4C 80AA10DC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AA10E0:
/* 00A50 80AA10E0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00A54 80AA10E4 03E00008 */  jr      $ra                        
/* 00A58 80AA10E8 00000000 */  nop
