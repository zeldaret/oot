glabel func_80949C4C
/* 10F7C 80949C4C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 10F80 80949C50 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 10F84 80949C54 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 10F88 80949C58 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 10F8C 80949C5C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 10F90 80949C60 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 10F94 80949C64 24840568 */  addiu   $a0, $a0, 0x0568           ## $a0 = 00000568
/* 10F98 80949C68 860E017A */  lh      $t6, 0x017A($s0)           ## 0000017A
/* 10F9C 80949C6C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 10FA0 80949C70 3C0F8095 */  lui     $t7, %hi(D_8094C870)       ## $t7 = 80950000
/* 10FA4 80949C74 15C0000F */  bne     $t6, $zero, .L80949CB4     
/* 10FA8 80949C78 00000000 */  nop
/* 10FAC 80949C7C 91EFC870 */  lbu     $t7, %lo(D_8094C870)($t7)  
/* 10FB0 80949C80 3C188095 */  lui     $t8, %hi(D_8094C84C)       ## $t8 = 80950000
/* 10FB4 80949C84 15E0000B */  bne     $t7, $zero, .L80949CB4     
/* 10FB8 80949C88 00000000 */  nop
/* 10FBC 80949C8C 8F18C84C */  lw      $t8, %lo(D_8094C84C)($t8)  
/* 10FC0 80949C90 8719017C */  lh      $t9, 0x017C($t8)           ## 8095017C
/* 10FC4 80949C94 17200005 */  bne     $t9, $zero, .L80949CAC     
/* 10FC8 80949C98 00000000 */  nop
/* 10FCC 80949C9C 0C252870 */  jal     func_8094A1C0              
/* 10FD0 80949CA0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 10FD4 80949CA4 10000003 */  beq     $zero, $zero, .L80949CB4   
/* 10FD8 80949CA8 00000000 */  nop
.L80949CAC:
/* 10FDC 80949CAC 0C2529B6 */  jal     func_8094A6D8              
/* 10FE0 80949CB0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80949CB4:
/* 10FE4 80949CB4 3C018095 */  lui     $at, %hi(D_8094C870)       ## $at = 80950000
/* 10FE8 80949CB8 A020C870 */  sb      $zero, %lo(D_8094C870)($at) 
/* 10FEC 80949CBC 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 10FF0 80949CC0 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 10FF4 80949CC4 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
/* 10FF8 80949CC8 0C01E1EF */  jal     Math_ApproachS
              
/* 10FFC 80949CCC 24071000 */  addiu   $a3, $zero, 0x1000         ## $a3 = 00001000
/* 11000 80949CD0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 11004 80949CD4 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 11008 80949CD8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 1100C 80949CDC 03E00008 */  jr      $ra                        
/* 11010 80949CE0 00000000 */  nop
