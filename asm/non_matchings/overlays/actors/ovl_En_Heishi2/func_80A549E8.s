glabel func_80A549E8
/* 01B48 80A549E8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01B4C 80A549EC AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01B50 80A549F0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01B54 80A549F4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01B58 80A549F8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01B5C 80A549FC 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 01B60 80A54A00 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01B64 80A54A04 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 01B68 80A54A08 0C042F6F */  jal     func_8010BDBC              
/* 01B6C 80A54A0C 248420D8 */  addiu   $a0, $a0, 0x20D8           ## $a0 = 000020D8
/* 01B70 80A54A10 860E0300 */  lh      $t6, 0x0300($s0)           ## 00000300
/* 01B74 80A54A14 55C20014 */  bnel    $t6, $v0, .L80A54A68       
/* 01B78 80A54A18 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01B7C 80A54A1C 0C041AF2 */  jal     func_80106BC8              
/* 01B80 80A54A20 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 01B84 80A54A24 50400010 */  beql    $v0, $zero, .L80A54A68     
/* 01B88 80A54A28 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01B8C 80A54A2C 0C041B33 */  jal     func_80106CCC              
/* 01B90 80A54A30 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 01B94 80A54A34 860202FE */  lh      $v0, 0x02FE($s0)           ## 000002FE
/* 01B98 80A54A38 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 01B9C 80A54A3C 3C0F80A5 */  lui     $t7, %hi(func_80A531E4)    ## $t7 = 80A50000
/* 01BA0 80A54A40 14410003 */  bne     $v0, $at, .L80A54A50       
/* 01BA4 80A54A44 25EF31E4 */  addiu   $t7, $t7, %lo(func_80A531E4) ## $t7 = 80A531E4
/* 01BA8 80A54A48 AE0F025C */  sw      $t7, 0x025C($s0)           ## 0000025C
/* 01BAC 80A54A4C 860202FE */  lh      $v0, 0x02FE($s0)           ## 000002FE
.L80A54A50:
/* 01BB0 80A54A50 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 01BB4 80A54A54 14410003 */  bne     $v0, $at, .L80A54A64       
/* 01BB8 80A54A58 3C1880A5 */  lui     $t8, %hi(func_80A53908)    ## $t8 = 80A50000
/* 01BBC 80A54A5C 27183908 */  addiu   $t8, $t8, %lo(func_80A53908) ## $t8 = 80A53908
/* 01BC0 80A54A60 AE18025C */  sw      $t8, 0x025C($s0)           ## 0000025C
.L80A54A64:
/* 01BC4 80A54A64 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A54A68:
/* 01BC8 80A54A68 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01BCC 80A54A6C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01BD0 80A54A70 03E00008 */  jr      $ra                        
/* 01BD4 80A54A74 00000000 */  nop


