glabel func_80B2128C
/* 004AC 80B2128C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 004B0 80B21290 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 004B4 80B21294 240E0007 */  addiu   $t6, $zero, 0x0007         ## $t6 = 00000007
/* 004B8 80B21298 240F00C8 */  addiu   $t7, $zero, 0x00C8         ## $t7 = 000000C8
/* 004BC 80B2129C 3C0580B2 */  lui     $a1, %hi(func_80B212C0)    ## $a1 = 80B20000
/* 004C0 80B212A0 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
/* 004C4 80B212A4 A48F015A */  sh      $t7, 0x015A($a0)           ## 0000015A
/* 004C8 80B212A8 0C2C8378 */  jal     func_80B20DE0              
/* 004CC 80B212AC 24A512C0 */  addiu   $a1, $a1, %lo(func_80B212C0) ## $a1 = 80B212C0
/* 004D0 80B212B0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 004D4 80B212B4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 004D8 80B212B8 03E00008 */  jr      $ra                        
/* 004DC 80B212BC 00000000 */  nop


