glabel func_80851FB0
/* 1FDA0 80851FB0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 1FDA4 80851FB4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 1FDA8 80851FB8 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 1FDAC 80851FBC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 1FDB0 80851FC0 24A501B4 */  addiu   $a1, $a1, 0x01B4           ## $a1 = 000001B4
/* 1FDB4 80851FC4 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 1FDB8 80851FC8 AFA60030 */  sw      $a2, 0x0030($sp)           
/* 1FDBC 80851FCC 0C028EF0 */  jal     func_800A3BC0              
/* 1FDC0 80851FD0 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 1FDC4 80851FD4 10400009 */  beq     $v0, $zero, .L80851FFC     
/* 1FDC8 80851FD8 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 1FDCC 80851FDC 3C060400 */  lui     $a2, 0x0400                ## $a2 = 04000000
/* 1FDD0 80851FE0 24C62430 */  addiu   $a2, $a2, 0x2430           ## $a2 = 04002430
/* 1FDD4 80851FE4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 1FDD8 80851FE8 0C20CC3B */  jal     func_808330EC              
/* 1FDDC 80851FEC 2407009C */  addiu   $a3, $zero, 0x009C         ## $a3 = 0000009C
/* 1FDE0 80851FF0 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 1FDE4 80851FF4 1000000F */  beq     $zero, $zero, .L80852034   
/* 1FDE8 80851FF8 A60E0850 */  sh      $t6, 0x0850($s0)           ## 00000850
.L80851FFC:
/* 1FDEC 80851FFC 860F0850 */  lh      $t7, 0x0850($s0)           ## 00000850
/* 1FDF0 80852000 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1FDF4 80852004 3C058085 */  lui     $a1, %hi(D_808551BC)       ## $a1 = 80850000
/* 1FDF8 80852008 55E0000B */  bnel    $t7, $zero, .L80852038     
/* 1FDFC 8085200C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 1FE00 80852010 0C20CA49 */  jal     func_80832924              
/* 1FE04 80852014 24A551BC */  addiu   $a1, $a1, %lo(D_808551BC)  ## $a1 = 808551BC
/* 1FE08 80852018 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 1FE0C 8085201C 0C02914C */  jal     func_800A4530              
/* 1FE10 80852020 3C054370 */  lui     $a1, 0x4370                ## $a1 = 43700000
/* 1FE14 80852024 10400003 */  beq     $v0, $zero, .L80852034     
/* 1FE18 80852028 3C188003 */  lui     $t8, 0x8003                ## $t8 = 80030000
/* 1FE1C 8085202C 2718B8C4 */  addiu   $t8, $t8, 0xB8C4           ## $t8 = 8002B8C4
/* 1FE20 80852030 AE1800C0 */  sw      $t8, 0x00C0($s0)           ## 000000C0
.L80852034:
/* 1FE24 80852034 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80852038:
/* 1FE28 80852038 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 1FE2C 8085203C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 1FE30 80852040 03E00008 */  jr      $ra                        
/* 1FE34 80852044 00000000 */  nop


