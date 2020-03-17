glabel func_80AFFF58
/* 01CA8 80AFFF58 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01CAC 80AFFF5C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01CB0 80AFFF60 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 01CB4 80AFFF64 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01CB8 80AFFF68 0C042F6F */  jal     func_8010BDBC              
/* 01CBC 80AFFF6C 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 01CC0 80AFFF70 A3A2001F */  sb      $v0, 0x001F($sp)           
/* 01CC4 80AFFF74 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 01CC8 80AFFF78 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 01CCC 80AFFF7C 0C00B7D5 */  jal     func_8002DF54              
/* 01CD0 80AFFF80 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 01CD4 80AFFF84 93AE001F */  lbu     $t6, 0x001F($sp)           
/* 01CD8 80AFFF88 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 01CDC 80AFFF8C 55C10008 */  bnel    $t6, $at, .L80AFFFB0       
/* 01CE0 80AFFF90 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01CE4 80AFFF94 0C041AF2 */  jal     func_80106BC8              
/* 01CE8 80AFFF98 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 01CEC 80AFFF9C 50400004 */  beql    $v0, $zero, .L80AFFFB0     
/* 01CF0 80AFFFA0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01CF4 80AFFFA4 0C2BFFEF */  jal     func_80AFFFBC              
/* 01CF8 80AFFFA8 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 01CFC 80AFFFAC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AFFFB0:
/* 01D00 80AFFFB0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01D04 80AFFFB4 03E00008 */  jr      $ra                        
/* 01D08 80AFFFB8 00000000 */  nop


