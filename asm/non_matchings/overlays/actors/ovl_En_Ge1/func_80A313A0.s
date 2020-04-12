glabel func_80A313A0
/* 00A30 80A313A0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00A34 80A313A4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00A38 80A313A8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00A3C 80A313AC 0C042F6F */  jal     func_8010BDBC              
/* 00A40 80A313B0 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 00A44 80A313B4 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00A48 80A313B8 14410005 */  bne     $v0, $at, .L80A313D0       
/* 00A4C 80A313BC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00A50 80A313C0 3C0E80A3 */  lui     $t6, %hi(func_80A31514)    ## $t6 = 80A30000
/* 00A54 80A313C4 25CE1514 */  addiu   $t6, $t6, %lo(func_80A31514) ## $t6 = 80A31514
/* 00A58 80A313C8 0C28C352 */  jal     func_80A30D48              
/* 00A5C 80A313CC AC8E02B4 */  sw      $t6, 0x02B4($a0)           ## 000002B4
.L80A313D0:
/* 00A60 80A313D0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00A64 80A313D4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00A68 80A313D8 03E00008 */  jr      $ra                        
/* 00A6C 80A313DC 00000000 */  nop
