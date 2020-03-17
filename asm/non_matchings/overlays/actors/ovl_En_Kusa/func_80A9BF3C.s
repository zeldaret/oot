glabel func_80A9BF3C
/* 00F9C 80A9BF3C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00FA0 80A9BF40 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00FA4 80A9BF44 3C014110 */  lui     $at, 0x4110                ## $at = 41100000
/* 00FA8 80A9BF48 44814000 */  mtc1    $at, $f8                   ## $f8 = 9.00
/* 00FAC 80A9BF4C C486000C */  lwc1    $f6, 0x000C($a0)           ## 0000000C
/* 00FB0 80A9BF50 C4840008 */  lwc1    $f4, 0x0008($a0)           ## 00000008
/* 00FB4 80A9BF54 C4900010 */  lwc1    $f16, 0x0010($a0)          ## 00000010
/* 00FB8 80A9BF58 46083281 */  sub.s   $f10, $f6, $f8             
/* 00FBC 80A9BF5C E4840024 */  swc1    $f4, 0x0024($a0)           ## 00000024
/* 00FC0 80A9BF60 E490002C */  swc1    $f16, 0x002C($a0)          ## 0000002C
/* 00FC4 80A9BF64 E48A0028 */  swc1    $f10, 0x0028($a0)          ## 00000028
/* 00FC8 80A9BF68 0C2A6C7F */  jal     func_80A9B1FC              
/* 00FCC 80A9BF6C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00FD0 80A9BF70 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00FD4 80A9BF74 3C0580AA */  lui     $a1, %hi(func_80A9BFA8)    ## $a1 = 80AA0000
/* 00FD8 80A9BF78 24A5BFA8 */  addiu   $a1, $a1, %lo(func_80A9BFA8) ## $a1 = 80A9BFA8
/* 00FDC 80A9BF7C 888F0014 */  lwl     $t7, 0x0014($a0)           ## 00000014
/* 00FE0 80A9BF80 988F0017 */  lwr     $t7, 0x0017($a0)           ## 00000017
/* 00FE4 80A9BF84 A88F00B4 */  swl     $t7, 0x00B4($a0)           ## 000000B4
/* 00FE8 80A9BF88 B88F00B7 */  swr     $t7, 0x00B7($a0)           ## 000000B7
/* 00FEC 80A9BF8C 948F0018 */  lhu     $t7, 0x0018($a0)           ## 00000018
/* 00FF0 80A9BF90 0C2A6BE8 */  jal     func_80A9AFA0              
/* 00FF4 80A9BF94 A48F00B8 */  sh      $t7, 0x00B8($a0)           ## 000000B8
/* 00FF8 80A9BF98 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00FFC 80A9BF9C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01000 80A9BFA0 03E00008 */  jr      $ra                        
/* 01004 80A9BFA4 00000000 */  nop


