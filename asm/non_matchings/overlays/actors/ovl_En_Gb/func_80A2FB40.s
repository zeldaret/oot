glabel func_80A2FB40
/* 009C0 80A2FB40 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 009C4 80A2FB44 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 009C8 80A2FB48 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 009CC 80A2FB4C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 009D0 80A2FB50 0C042F6F */  jal     func_8010BDBC              
/* 009D4 80A2FB54 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 009D8 80A2FB58 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 009DC 80A2FB5C 54410011 */  bnel    $v0, $at, .L80A2FBA4       
/* 009E0 80A2FB60 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 009E4 80A2FB64 0C041AF2 */  jal     func_80106BC8              
/* 009E8 80A2FB68 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 009EC 80A2FB6C 1040000C */  beq     $v0, $zero, .L80A2FBA0     
/* 009F0 80A2FB70 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 009F4 80A2FB74 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 009F8 80A2FB78 44812000 */  mtc1    $at, $f4                   ## $f4 = 10.00
/* 009FC 80A2FB7C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00A00 80A2FB80 2406000F */  addiu   $a2, $zero, 0x000F         ## $a2 = 0000000F
/* 00A04 80A2FB84 3C0742C8 */  lui     $a3, 0x42C8                ## $a3 = 42C80000
/* 00A08 80A2FB88 0C00BD0D */  jal     func_8002F434              
/* 00A0C 80A2FB8C E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00A10 80A2FB90 8FAF0020 */  lw      $t7, 0x0020($sp)           
/* 00A14 80A2FB94 3C0E80A3 */  lui     $t6, %hi(func_80A2FBB0)    ## $t6 = 80A30000
/* 00A18 80A2FB98 25CEFBB0 */  addiu   $t6, $t6, %lo(func_80A2FBB0) ## $t6 = 80A2FBB0
/* 00A1C 80A2FB9C ADEE0238 */  sw      $t6, 0x0238($t7)           ## 00000238
.L80A2FBA0:
/* 00A20 80A2FBA0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A2FBA4:
/* 00A24 80A2FBA4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00A28 80A2FBA8 03E00008 */  jr      $ra                        
/* 00A2C 80A2FBAC 00000000 */  nop
