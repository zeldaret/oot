glabel func_80AA6D20
/* 00CD0 80AA6D20 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00CD4 80AA6D24 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00CD8 80AA6D28 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00CDC 80AA6D2C 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 00CE0 80AA6D30 24A59280 */  addiu   $a1, $a1, 0x9280           ## $a1 = 06009280
/* 00CE4 80AA6D34 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00CE8 80AA6D38 0C02947A */  jal     func_800A51E8              
/* 00CEC 80AA6D3C 2484018C */  addiu   $a0, $a0, 0x018C           ## $a0 = 0000018C
/* 00CF0 80AA6D40 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00CF4 80AA6D44 3C01C100 */  lui     $at, 0xC100                ## $at = C1000000
/* 00CF8 80AA6D48 44812000 */  mtc1    $at, $f4                   ## $f4 = -8.00
/* 00CFC 80AA6D4C 948F0088 */  lhu     $t7, 0x0088($a0)           ## 00000088
/* 00D00 80AA6D50 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 00D04 80AA6D54 44813000 */  mtc1    $at, $f6                   ## $f6 = 6.00
/* 00D08 80AA6D58 240E000B */  addiu   $t6, $zero, 0x000B         ## $t6 = 0000000B
/* 00D0C 80AA6D5C 24190032 */  addiu   $t9, $zero, 0x0032         ## $t9 = 00000032
/* 00D10 80AA6D60 31F8FFFE */  andi    $t8, $t7, 0xFFFE           ## $t8 = 00000000
/* 00D14 80AA6D64 240538B9 */  addiu   $a1, $zero, 0x38B9         ## $a1 = 000038B9
/* 00D18 80AA6D68 AC8E0320 */  sw      $t6, 0x0320($a0)           ## 00000320
/* 00D1C 80AA6D6C A4980088 */  sh      $t8, 0x0088($a0)           ## 00000088
/* 00D20 80AA6D70 A480032A */  sh      $zero, 0x032A($a0)         ## 0000032A
/* 00D24 80AA6D74 A499032E */  sh      $t9, 0x032E($a0)           ## 0000032E
/* 00D28 80AA6D78 E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
/* 00D2C 80AA6D7C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00D30 80AA6D80 E4860060 */  swc1    $f6, 0x0060($a0)           ## 00000060
/* 00D34 80AA6D84 3C0580AA */  lui     $a1, %hi(func_80AA74BC)    ## $a1 = 80AA0000
/* 00D38 80AA6D88 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00D3C 80AA6D8C 0C2A9814 */  jal     func_80AA6050              
/* 00D40 80AA6D90 24A574BC */  addiu   $a1, $a1, %lo(func_80AA74BC) ## $a1 = 80AA74BC
/* 00D44 80AA6D94 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00D48 80AA6D98 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00D4C 80AA6D9C 03E00008 */  jr      $ra                        
/* 00D50 80AA6DA0 00000000 */  nop


