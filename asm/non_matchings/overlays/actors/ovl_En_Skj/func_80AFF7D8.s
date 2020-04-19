glabel func_80AFF7D8
/* 01528 80AFF7D8 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 0152C 80AFF7DC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01530 80AFF7E0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01534 80AFF7E4 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 01538 80AFF7E8 8CA61C44 */  lw      $a2, 0x1C44($a1)           ## 00001C44
/* 0153C 80AFF7EC 3C0280B0 */  lui     $v0, %hi(D_80B01640)       ## $v0 = 80B00000
/* 01540 80AFF7F0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01544 80AFF7F4 8CC30680 */  lw      $v1, 0x0680($a2)           ## 00000680
/* 01548 80AFF7F8 24421640 */  addiu   $v0, $v0, %lo(D_80B01640)  ## $v0 = 80B01640
/* 0154C 80AFF7FC 3C010200 */  lui     $at, 0x0200                ## $at = 02000000
/* 01550 80AFF800 000379C0 */  sll     $t7, $v1,  7               
/* 01554 80AFF804 05E10018 */  bgez    $t7, .L80AFF868            
/* 01558 80AFF808 3C0B80B0 */  lui     $t3, %hi(D_80B01EA0)       ## $t3 = 80B00000
/* 0155C 80AFF80C 0061C025 */  or      $t8, $v1, $at              ## $t8 = 02000000
/* 01560 80AFF810 ACD80680 */  sw      $t8, 0x0680($a2)           ## 00000680
/* 01564 80AFF814 8C590004 */  lw      $t9, 0x0004($v0)           ## 80B01644
/* 01568 80AFF818 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 0156C 80AFF81C ACD906A8 */  sw      $t9, 0x06A8($a2)           ## 000006A8
/* 01570 80AFF820 8C480004 */  lw      $t0, 0x0004($v0)           ## 80B01644
/* 01574 80AFF824 C5040024 */  lwc1    $f4, 0x0024($t0)           ## 00000024
/* 01578 80AFF828 E4C40024 */  swc1    $f4, 0x0024($a2)           ## 00000024
/* 0157C 80AFF82C 8C490004 */  lw      $t1, 0x0004($v0)           ## 80B01644
/* 01580 80AFF830 C5260028 */  lwc1    $f6, 0x0028($t1)           ## 00000028
/* 01584 80AFF834 E4C60028 */  swc1    $f6, 0x0028($a2)           ## 00000028
/* 01588 80AFF838 8C4A0004 */  lw      $t2, 0x0004($v0)           ## 80B01644
/* 0158C 80AFF83C C548002C */  lwc1    $f8, 0x002C($t2)           ## 0000002C
/* 01590 80AFF840 E4C8002C */  swc1    $f8, 0x002C($a2)           ## 0000002C
/* 01594 80AFF844 0C2C0282 */  jal     func_80B00A08              
/* 01598 80AFF848 8C440004 */  lw      $a0, 0x0004($v0)           ## 80B01644
/* 0159C 80AFF84C 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 015A0 80AFF850 0C042F62 */  jal     func_8010BD88              
/* 015A4 80AFF854 24050022 */  addiu   $a1, $zero, 0x0022         ## $a1 = 00000022
/* 015A8 80AFF858 0C2BFE7A */  jal     func_80AFF9E8              
/* 015AC 80AFF85C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 015B0 80AFF860 1000005D */  beq     $zero, $zero, .L80AFF9D8   
/* 015B4 80AFF864 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AFF868:
/* 015B8 80AFF868 8D6B1EA0 */  lw      $t3, %lo(D_80B01EA0)($t3)  
/* 015BC 80AFF86C 3C0280B0 */  lui     $v0, %hi(D_80B01640)       ## $v0 = 80B00000
/* 015C0 80AFF870 24421640 */  addiu   $v0, $v0, %lo(D_80B01640)  ## $v0 = 80B01640
/* 015C4 80AFF874 11600020 */  beq     $t3, $zero, .L80AFF8F8     
/* 015C8 80AFF878 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 015CC 80AFF87C 3C0280B0 */  lui     $v0, %hi(D_80B01640)       ## $v0 = 80B00000
/* 015D0 80AFF880 24421640 */  addiu   $v0, $v0, %lo(D_80B01640)  ## $v0 = 80B01640
/* 015D4 80AFF884 8C4C0004 */  lw      $t4, 0x0004($v0)           ## 80B01644
/* 015D8 80AFF888 C58A0024 */  lwc1    $f10, 0x0024($t4)          ## 00000024
/* 015DC 80AFF88C E4CA0024 */  swc1    $f10, 0x0024($a2)          ## 00000024
/* 015E0 80AFF890 8C4D0004 */  lw      $t5, 0x0004($v0)           ## 80B01644
/* 015E4 80AFF894 C5B00028 */  lwc1    $f16, 0x0028($t5)          ## 00000028
/* 015E8 80AFF898 E4D00028 */  swc1    $f16, 0x0028($a2)          ## 00000028
/* 015EC 80AFF89C 8C4E0004 */  lw      $t6, 0x0004($v0)           ## 80B01644
/* 015F0 80AFF8A0 C5D2002C */  lwc1    $f18, 0x002C($t6)          ## 0000002C
/* 015F4 80AFF8A4 E4D2002C */  swc1    $f18, 0x002C($a2)          ## 0000002C
/* 015F8 80AFF8A8 0C023C20 */  jal     func_8008F080              
/* 015FC 80AFF8AC 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 01600 80AFF8B0 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 01604 80AFF8B4 1441000C */  bne     $v0, $at, .L80AFF8E8       
/* 01608 80AFF8B8 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 0160C 80AFF8BC 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 01610 80AFF8C0 944F0EF6 */  lhu     $t7, 0x0EF6($v0)           ## 8015F556
/* 01614 80AFF8C4 31F80200 */  andi    $t8, $t7, 0x0200           ## $t8 = 00000000
/* 01618 80AFF8C8 17000007 */  bne     $t8, $zero, .L80AFF8E8     
/* 0161C 80AFF8CC 00000000 */  nop
/* 01620 80AFF8D0 0C01E221 */  jal     func_80078884              
/* 01624 80AFF8D4 24044807 */  addiu   $a0, $zero, 0x4807         ## $a0 = 00004807
/* 01628 80AFF8D8 0C2BFFCE */  jal     func_80AFFF38              
/* 0162C 80AFF8DC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01630 80AFF8E0 1000003D */  beq     $zero, $zero, .L80AFF9D8   
/* 01634 80AFF8E4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AFF8E8:
/* 01638 80AFF8E8 0C2BFF59 */  jal     func_80AFFD64              
/* 0163C 80AFF8EC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01640 80AFF8F0 10000039 */  beq     $zero, $zero, .L80AFF9D8   
/* 01644 80AFF8F4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AFF8F8:
/* 01648 80AFF8F8 8C450004 */  lw      $a1, 0x0004($v0)           ## 00000004
/* 0164C 80AFF8FC 0C2BFA3B */  jal     func_80AFE8EC              
/* 01650 80AFF900 AFA60024 */  sw      $a2, 0x0024($sp)           
/* 01654 80AFF904 14400005 */  bne     $v0, $zero, .L80AFF91C     
/* 01658 80AFF908 8FA60024 */  lw      $a2, 0x0024($sp)           
/* 0165C 80AFF90C 0C2BFC0E */  jal     func_80AFF038              
/* 01660 80AFF910 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01664 80AFF914 10000030 */  beq     $zero, $zero, .L80AFF9D8   
/* 01668 80AFF918 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AFF91C:
/* 0166C 80AFF91C 8CD90680 */  lw      $t9, 0x0680($a2)           ## 00000680
/* 01670 80AFF920 3C010080 */  lui     $at, 0x0080                ## $at = 00800000
/* 01674 80AFF924 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 01678 80AFF928 03214025 */  or      $t0, $t9, $at              ## $t0 = 00800000
/* 0167C 80AFF92C 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 01680 80AFF930 ACC80680 */  sw      $t0, 0x0680($a2)           ## 00000680
/* 01684 80AFF934 94490EF2 */  lhu     $t1, 0x0EF2($v0)           ## 8015F552
/* 01688 80AFF938 312A0040 */  andi    $t2, $t1, 0x0040           ## $t2 = 00000000
/* 0168C 80AFF93C 51400026 */  beql    $t2, $zero, .L80AFF9D8     
/* 01690 80AFF940 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01694 80AFF944 944B0EF6 */  lhu     $t3, 0x0EF6($v0)           ## 8015F556
/* 01698 80AFF948 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 0169C 80AFF94C 316C0200 */  andi    $t4, $t3, 0x0200           ## $t4 = 00000000
/* 016A0 80AFF950 11800009 */  beq     $t4, $zero, .L80AFF978     
/* 016A4 80AFF954 00000000 */  nop
/* 016A8 80AFF958 0C01B0D8 */  jal     Text_GetFaceReaction              
/* 016AC 80AFF95C 24050015 */  addiu   $a1, $zero, 0x0015         ## $a1 = 00000015
/* 016B0 80AFF960 304DFFFF */  andi    $t5, $v0, 0xFFFF           ## $t5 = 00000000
/* 016B4 80AFF964 15A00015 */  bne     $t5, $zero, .L80AFF9BC     
/* 016B8 80AFF968 A60202C4 */  sh      $v0, 0x02C4($s0)           ## 000002C4
/* 016BC 80AFF96C 240E1020 */  addiu   $t6, $zero, 0x1020         ## $t6 = 00001020
/* 016C0 80AFF970 10000012 */  beq     $zero, $zero, .L80AFF9BC   
/* 016C4 80AFF974 A60E02C4 */  sh      $t6, 0x02C4($s0)           ## 000002C4
.L80AFF978:
/* 016C8 80AFF978 0C023C20 */  jal     func_8008F080              
/* 016CC 80AFF97C 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 016D0 80AFF980 14400003 */  bne     $v0, $zero, .L80AFF990     
/* 016D4 80AFF984 240F10BC */  addiu   $t7, $zero, 0x10BC         ## $t7 = 000010BC
/* 016D8 80AFF988 1000000C */  beq     $zero, $zero, .L80AFF9BC   
/* 016DC 80AFF98C A60F02C4 */  sh      $t7, 0x02C4($s0)           ## 000002C4
.L80AFF990:
/* 016E0 80AFF990 0C023C20 */  jal     func_8008F080              
/* 016E4 80AFF994 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 016E8 80AFF998 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 016EC 80AFF99C 14410004 */  bne     $v0, $at, .L80AFF9B0       
/* 016F0 80AFF9A0 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 016F4 80AFF9A4 2418101B */  addiu   $t8, $zero, 0x101B         ## $t8 = 0000101B
/* 016F8 80AFF9A8 10000004 */  beq     $zero, $zero, .L80AFF9BC   
/* 016FC 80AFF9AC A61802C4 */  sh      $t8, 0x02C4($s0)           ## 000002C4
.L80AFF9B0:
/* 01700 80AFF9B0 0C01B0D8 */  jal     Text_GetFaceReaction              
/* 01704 80AFF9B4 24050015 */  addiu   $a1, $zero, 0x0015         ## $a1 = 00000015
/* 01708 80AFF9B8 A60202C4 */  sh      $v0, 0x02C4($s0)           ## 000002C4
.L80AFF9BC:
/* 0170C 80AFF9BC 0C2BFA5A */  jal     func_80AFE968              
/* 01710 80AFF9C0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01714 80AFF9C4 44060000 */  mfc1    $a2, $f0                   
/* 01718 80AFF9C8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0171C 80AFF9CC 0C00BCB3 */  jal     func_8002F2CC              
/* 01720 80AFF9D0 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 01724 80AFF9D4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AFF9D8:
/* 01728 80AFF9D8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0172C 80AFF9DC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01730 80AFF9E0 03E00008 */  jr      $ra                        
/* 01734 80AFF9E4 00000000 */  nop
