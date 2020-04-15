glabel func_80AA10EC
/* 00A5C 80AA10EC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00A60 80AA10F0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00A64 80AA10F4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00A68 80AA10F8 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 00A6C 80AA10FC 3C010080 */  lui     $at, 0x0080                ## $at = 00800000
/* 00A70 80AA1100 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 00A74 80AA1104 8C4E0680 */  lw      $t6, 0x0680($v0)           ## 00000680
/* 00A78 80AA1108 01C17825 */  or      $t7, $t6, $at              ## $t7 = 00800000
/* 00A7C 80AA110C AC4F0680 */  sw      $t7, 0x0680($v0)           ## 00000680
/* 00A80 80AA1110 0C042F6F */  jal     func_8010BDBC              
/* 00A84 80AA1114 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00A88 80AA1118 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 00A8C 80AA111C 14410008 */  bne     $v0, $at, .L80AA1140       
/* 00A90 80AA1120 8FA6001C */  lw      $a2, 0x001C($sp)           
/* 00A94 80AA1124 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00A98 80AA1128 0C042F56 */  jal     func_8010BD58              
/* 00A9C 80AA112C 24050016 */  addiu   $a1, $zero, 0x0016         ## $a1 = 00000016
/* 00AA0 80AA1130 8FB90018 */  lw      $t9, 0x0018($sp)           
/* 00AA4 80AA1134 3C1880AA */  lui     $t8, %hi(func_80AA1150)    ## $t8 = 80AA0000
/* 00AA8 80AA1138 27181150 */  addiu   $t8, $t8, %lo(func_80AA1150) ## $t8 = 80AA1150
/* 00AAC 80AA113C AF380190 */  sw      $t8, 0x0190($t9)           ## 00000190
.L80AA1140:
/* 00AB0 80AA1140 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00AB4 80AA1144 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00AB8 80AA1148 03E00008 */  jr      $ra                        
/* 00ABC 80AA114C 00000000 */  nop
