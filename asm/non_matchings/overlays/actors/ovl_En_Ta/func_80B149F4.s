glabel func_80B149F4
/* 00F54 80B149F4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00F58 80B149F8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00F5C 80B149FC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00F60 80B14A00 848E0032 */  lh      $t6, 0x0032($a0)           ## 00000032
/* 00F64 80B14A04 849800B6 */  lh      $t8, 0x00B6($a0)           ## 000000B6
/* 00F68 80B14A08 848802CC */  lh      $t0, 0x02CC($a0)           ## 000002CC
/* 00F6C 80B14A0C 25CFF300 */  addiu   $t7, $t6, 0xF300           ## $t7 = FFFFF300
/* 00F70 80B14A10 2719F300 */  addiu   $t9, $t8, 0xF300           ## $t9 = FFFFF300
/* 00F74 80B14A14 A48F0032 */  sh      $t7, 0x0032($a0)           ## 00000032
/* 00F78 80B14A18 1500000A */  bne     $t0, $zero, .L80B14A44     
/* 00F7C 80B14A1C A49900B6 */  sh      $t9, 0x00B6($a0)           ## 000000B6
/* 00F80 80B14A20 3C0580B1 */  lui     $a1, %hi(func_80B1496C)    ## $a1 = 80B10000
/* 00F84 80B14A24 3C0680B1 */  lui     $a2, %hi(func_80B167C0)    ## $a2 = 80B10000
/* 00F88 80B14A28 24C667C0 */  addiu   $a2, $a2, %lo(func_80B167C0) ## $a2 = 80B167C0
/* 00F8C 80B14A2C 24A5496C */  addiu   $a1, $a1, %lo(func_80B1496C) ## $a1 = 80B1496C
/* 00F90 80B14A30 0C2C4EA8 */  jal     func_80B13AA0              
/* 00F94 80B14A34 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00F98 80B14A38 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00F9C 80B14A3C 24090041 */  addiu   $t1, $zero, 0x0041         ## $t1 = 00000041
/* 00FA0 80B14A40 A48902CC */  sh      $t1, 0x02CC($a0)           ## 000002CC
.L80B14A44:
/* 00FA4 80B14A44 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00FA8 80B14A48 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00FAC 80B14A4C 03E00008 */  jr      $ra                        
/* 00FB0 80B14A50 00000000 */  nop


