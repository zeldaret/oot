glabel func_80A9C00C
/* 0106C 80A9C00C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01070 80A9C010 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01074 80A9C014 3C0580AA */  lui     $a1, %hi(func_80A9C068)    ## $a1 = 80AA0000
/* 01078 80A9C018 24A5C068 */  addiu   $a1, $a1, %lo(func_80A9C068) ## $a1 = 80A9C068
/* 0107C 80A9C01C 0C2A6BE8 */  jal     func_80A9AFA0              
/* 01080 80A9C020 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01084 80A9C024 0C2A6C7F */  jal     func_80A9B1FC              
/* 01088 80A9C028 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0108C 80A9C02C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01090 80A9C030 2401F7FF */  addiu   $at, $zero, 0xF7FF         ## $at = FFFFF7FF
/* 01094 80A9C034 888F0014 */  lwl     $t7, 0x0014($a0)           ## 00000014
/* 01098 80A9C038 988F0017 */  lwr     $t7, 0x0017($a0)           ## 00000017
/* 0109C 80A9C03C 8C980004 */  lw      $t8, 0x0004($a0)           ## 00000004
/* 010A0 80A9C040 A88F00B4 */  swl     $t7, 0x00B4($a0)           ## 000000B4
/* 010A4 80A9C044 B88F00B7 */  swr     $t7, 0x00B7($a0)           ## 000000B7
/* 010A8 80A9C048 948F0018 */  lhu     $t7, 0x0018($a0)           ## 00000018
/* 010AC 80A9C04C 0301C824 */  and     $t9, $t8, $at              
/* 010B0 80A9C050 AC990004 */  sw      $t9, 0x0004($a0)           ## 00000004
/* 010B4 80A9C054 A48F00B8 */  sh      $t7, 0x00B8($a0)           ## 000000B8
/* 010B8 80A9C058 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 010BC 80A9C05C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 010C0 80A9C060 03E00008 */  jr      $ra                        
/* 010C4 80A9C064 00000000 */  nop


