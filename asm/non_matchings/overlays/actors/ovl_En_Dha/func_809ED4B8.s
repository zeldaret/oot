glabel func_809ED4B8
/* 00C38 809ED4B8 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 00C3C 809ED4BC 3C0F809F */  lui     $t7, %hi(D_809ED764)       ## $t7 = 809F0000
/* 00C40 809ED4C0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00C44 809ED4C4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00C48 809ED4C8 AFA40048 */  sw      $a0, 0x0048($sp)           
/* 00C4C 809ED4CC AFA60050 */  sw      $a2, 0x0050($sp)           
/* 00C50 809ED4D0 AFA70054 */  sw      $a3, 0x0054($sp)           
/* 00C54 809ED4D4 25EFD764 */  addiu   $t7, $t7, %lo(D_809ED764)  ## $t7 = 809ED764
/* 00C58 809ED4D8 8DF90000 */  lw      $t9, 0x0000($t7)           ## 809ED764
/* 00C5C 809ED4DC 27AE003C */  addiu   $t6, $sp, 0x003C           ## $t6 = FFFFFFF4
/* 00C60 809ED4E0 8DF80004 */  lw      $t8, 0x0004($t7)           ## 809ED768
/* 00C64 809ED4E4 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFF4
/* 00C68 809ED4E8 8DF90008 */  lw      $t9, 0x0008($t7)           ## 809ED76C
/* 00C6C 809ED4EC 3C09809F */  lui     $t1, %hi(D_809ED770)       ## $t1 = 809F0000
/* 00C70 809ED4F0 2529D770 */  addiu   $t1, $t1, %lo(D_809ED770)  ## $t1 = 809ED770
/* 00C74 809ED4F4 ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFF8
/* 00C78 809ED4F8 ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFFC
/* 00C7C 809ED4FC 8D2B0000 */  lw      $t3, 0x0000($t1)           ## 809ED770
/* 00C80 809ED500 27A80030 */  addiu   $t0, $sp, 0x0030           ## $t0 = FFFFFFE8
/* 00C84 809ED504 8D2A0004 */  lw      $t2, 0x0004($t1)           ## 809ED774
/* 00C88 809ED508 AD0B0000 */  sw      $t3, 0x0000($t0)           ## FFFFFFE8
/* 00C8C 809ED50C 8D2B0008 */  lw      $t3, 0x0008($t1)           ## 809ED778
/* 00C90 809ED510 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00C94 809ED514 AD0A0004 */  sw      $t2, 0x0004($t0)           ## FFFFFFEC
/* 00C98 809ED518 10A10009 */  beq     $a1, $at, .L809ED540       
/* 00C9C 809ED51C AD0B0008 */  sw      $t3, 0x0008($t0)           ## FFFFFFF0
/* 00CA0 809ED520 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00CA4 809ED524 10A10010 */  beq     $a1, $at, .L809ED568       
/* 00CA8 809ED528 8FB00058 */  lw      $s0, 0x0058($sp)           
/* 00CAC 809ED52C 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00CB0 809ED530 10A10019 */  beq     $a1, $at, .L809ED598       
/* 00CB4 809ED534 8FB00058 */  lw      $s0, 0x0058($sp)           
/* 00CB8 809ED538 10000021 */  beq     $zero, $zero, .L809ED5C0   
/* 00CBC 809ED53C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809ED540:
/* 00CC0 809ED540 8FB00058 */  lw      $s0, 0x0058($sp)           
/* 00CC4 809ED544 24040002 */  addiu   $a0, $zero, 0x0002         ## $a0 = 00000002
/* 00CC8 809ED548 26050200 */  addiu   $a1, $s0, 0x0200           ## $a1 = 00000200
/* 00CCC 809ED54C 0C018A29 */  jal     func_800628A4              
/* 00CD0 809ED550 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00CD4 809ED554 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00CD8 809ED558 0C018A29 */  jal     func_800628A4              
/* 00CDC 809ED55C 24040003 */  addiu   $a0, $zero, 0x0003         ## $a0 = 00000003
/* 00CE0 809ED560 10000017 */  beq     $zero, $zero, .L809ED5C0   
/* 00CE4 809ED564 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809ED568:
/* 00CE8 809ED568 26050200 */  addiu   $a1, $s0, 0x0200           ## $a1 = 00000200
/* 00CEC 809ED56C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00CF0 809ED570 0C018A29 */  jal     func_800628A4              
/* 00CF4 809ED574 24040004 */  addiu   $a0, $zero, 0x0004         ## $a0 = 00000004
/* 00CF8 809ED578 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00CFC 809ED57C 0C018A29 */  jal     func_800628A4              
/* 00D00 809ED580 24040005 */  addiu   $a0, $zero, 0x0005         ## $a0 = 00000005
/* 00D04 809ED584 27A40030 */  addiu   $a0, $sp, 0x0030           ## $a0 = FFFFFFE8
/* 00D08 809ED588 0C0346BD */  jal     Matrix_MultVec3f              
/* 00D0C 809ED58C 260501F4 */  addiu   $a1, $s0, 0x01F4           ## $a1 = 000001F4
/* 00D10 809ED590 1000000B */  beq     $zero, $zero, .L809ED5C0   
/* 00D14 809ED594 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809ED598:
/* 00D18 809ED598 24040001 */  addiu   $a0, $zero, 0x0001         ## $a0 = 00000001
/* 00D1C 809ED59C 0C018A29 */  jal     func_800628A4              
/* 00D20 809ED5A0 26050200 */  addiu   $a1, $s0, 0x0200           ## $a1 = 00000200
/* 00D24 809ED5A4 27A4003C */  addiu   $a0, $sp, 0x003C           ## $a0 = FFFFFFF4
/* 00D28 809ED5A8 0C0346BD */  jal     Matrix_MultVec3f              
/* 00D2C 809ED5AC 260501DC */  addiu   $a1, $s0, 0x01DC           ## $a1 = 000001DC
/* 00D30 809ED5B0 27A40030 */  addiu   $a0, $sp, 0x0030           ## $a0 = FFFFFFE8
/* 00D34 809ED5B4 0C0346BD */  jal     Matrix_MultVec3f              
/* 00D38 809ED5B8 260501E8 */  addiu   $a1, $s0, 0x01E8           ## $a1 = 000001E8
/* 00D3C 809ED5BC 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809ED5C0:
/* 00D40 809ED5C0 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00D44 809ED5C4 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 00D48 809ED5C8 03E00008 */  jr      $ra                        
/* 00D4C 809ED5CC 00000000 */  nop
