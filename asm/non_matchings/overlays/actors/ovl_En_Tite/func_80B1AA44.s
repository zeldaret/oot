glabel func_80B1AA44
/* 01FC4 80B1AA44 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01FC8 80B1AA48 3C014150 */  lui     $at, 0x4150                ## $at = 41500000
/* 01FCC 80B1AA4C 44812000 */  mtc1    $at, $f4                   ## $f4 = 13.00
/* 01FD0 80B1AA50 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01FD4 80B1AA54 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 01FD8 80B1AA58 240F03E8 */  addiu   $t7, $zero, 0x03E8         ## $t7 = 000003E8
/* 01FDC 80B1AA5C A08E02BD */  sb      $t6, 0x02BD($a0)           ## 000002BD
/* 01FE0 80B1AA60 A48F02E0 */  sh      $t7, 0x02E0($a0)           ## 000002E0
/* 01FE4 80B1AA64 E4840060 */  swc1    $f4, 0x0060($a0)           ## 00000060
/* 01FE8 80B1AA68 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01FEC 80B1AA6C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01FF0 80B1AA70 24053888 */  addiu   $a1, $zero, 0x3888         ## $a1 = 00003888
/* 01FF4 80B1AA74 3C0580B2 */  lui     $a1, %hi(func_80B1AA94)    ## $a1 = 80B20000
/* 01FF8 80B1AA78 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01FFC 80B1AA7C 0C2C62A0 */  jal     func_80B18A80              
/* 02000 80B1AA80 24A5AA94 */  addiu   $a1, $a1, %lo(func_80B1AA94) ## $a1 = 80B1AA94
/* 02004 80B1AA84 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02008 80B1AA88 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0200C 80B1AA8C 03E00008 */  jr      $ra                        
/* 02010 80B1AA90 00000000 */  nop


