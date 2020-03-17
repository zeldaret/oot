glabel func_80AACBAC
/* 002AC 80AACBAC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 002B0 80AACBB0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 002B4 80AACBB4 94820282 */  lhu     $v0, 0x0282($a0)           ## 00000282
/* 002B8 80AACBB8 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 002BC 80AACBBC 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 002C0 80AACBC0 18400007 */  blez    $v0, .L80AACBE0            
/* 002C4 80AACBC4 3C1980AB */  lui     $t9, %hi(func_80AACB6C)    ## $t9 = 80AB0000
/* 002C8 80AACBC8 848F00B6 */  lh      $t7, 0x00B6($a0)           ## 000000B6
/* 002CC 80AACBCC 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 002D0 80AACBD0 A48E0282 */  sh      $t6, 0x0282($a0)           ## 00000282
/* 002D4 80AACBD4 25F8F800 */  addiu   $t8, $t7, 0xF800           ## $t8 = FFFFF800
/* 002D8 80AACBD8 10000006 */  beq     $zero, $zero, .L80AACBF4   
/* 002DC 80AACBDC A49800B6 */  sh      $t8, 0x00B6($a0)           ## 000000B6
.L80AACBE0:
/* 002E0 80AACBE0 2739CB6C */  addiu   $t9, $t9, %lo(func_80AACB6C) ## $t9 = 80AACB6C
/* 002E4 80AACBE4 ACD90284 */  sw      $t9, 0x0284($a2)           ## 00000284
/* 002E8 80AACBE8 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 002EC 80AACBEC 0C042DC8 */  jal     func_8010B720              
/* 002F0 80AACBF0 24054030 */  addiu   $a1, $zero, 0x4030         ## $a1 = 00004030
.L80AACBF4:
/* 002F4 80AACBF4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 002F8 80AACBF8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 002FC 80AACBFC 03E00008 */  jr      $ra                        
/* 00300 80AACC00 00000000 */  nop


