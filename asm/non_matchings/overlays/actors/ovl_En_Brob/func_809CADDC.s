glabel func_809CADDC
/* 002CC 809CADDC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 002D0 809CADE0 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 002D4 809CADE4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 002D8 809CADE8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 002DC 809CADEC 8CE6014C */  lw      $a2, 0x014C($a3)           ## 0000014C
/* 002E0 809CADF0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 002E4 809CADF4 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 002E8 809CADF8 0C00FB14 */  jal     func_8003EC50              
/* 002EC 809CADFC AFA70018 */  sw      $a3, 0x0018($sp)           
/* 002F0 809CAE00 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 002F4 809CAE04 3C0F809D */  lui     $t7, %hi(func_809CB2B8)    ## $t7 = 809D0000
/* 002F8 809CAE08 25EFB2B8 */  addiu   $t7, $t7, %lo(func_809CB2B8) ## $t7 = 809CB2B8
/* 002FC 809CAE0C 8CF801A8 */  lw      $t8, 0x01A8($a3)           ## 000001A8
/* 00300 809CAE10 3C08809D */  lui     $t0, %hi(func_809CB054)    ## $t0 = 809D0000
/* 00304 809CAE14 241900C8 */  addiu   $t9, $zero, 0x00C8         ## $t9 = 000000C8
/* 00308 809CAE18 15F80003 */  bne     $t7, $t8, .L809CAE28       
/* 0030C 809CAE1C 2508B054 */  addiu   $t0, $t0, %lo(func_809CB054) ## $t0 = 809CB054
/* 00310 809CAE20 10000002 */  beq     $zero, $zero, .L809CAE2C   
/* 00314 809CAE24 A4F901AC */  sh      $t9, 0x01AC($a3)           ## 000001AC
.L809CAE28:
/* 00318 809CAE28 A4E001AC */  sh      $zero, 0x01AC($a3)         ## 000001AC
.L809CAE2C:
/* 0031C 809CAE2C A4E001AE */  sh      $zero, 0x01AE($a3)         ## 000001AE
/* 00320 809CAE30 ACE801A8 */  sw      $t0, 0x01A8($a3)           ## 000001A8
/* 00324 809CAE34 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00328 809CAE38 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0032C 809CAE3C 03E00008 */  jr      $ra                        
/* 00330 809CAE40 00000000 */  nop


