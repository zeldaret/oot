glabel func_809D03CC
/* 01CEC 809D03CC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01CF0 809D03D0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01CF4 809D03D4 908E0231 */  lbu     $t6, 0x0231($a0)           ## 00000231
/* 01CF8 809D03D8 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01CFC 809D03DC 2401000E */  addiu   $at, $zero, 0x000E         ## $at = 0000000E
/* 01D00 809D03E0 15C10003 */  bne     $t6, $at, .L809D03F0       
/* 01D04 809D03E4 E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
/* 01D08 809D03E8 240F0020 */  addiu   $t7, $zero, 0x0020         ## $t7 = 00000020
/* 01D0C 809D03EC A08F023B */  sb      $t7, 0x023B($a0)           ## 0000023B
.L809D03F0:
/* 01D10 809D03F0 90980114 */  lbu     $t8, 0x0114($a0)           ## 00000114
/* 01D14 809D03F4 2405389E */  addiu   $a1, $zero, 0x389E         ## $a1 = 0000389E
/* 01D18 809D03F8 A098023C */  sb      $t8, 0x023C($a0)           ## 0000023C
/* 01D1C 809D03FC 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01D20 809D0400 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01D24 809D0404 3C05809D */  lui     $a1, %hi(func_809D0424)    ## $a1 = 809D0000
/* 01D28 809D0408 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01D2C 809D040C 0C2739B8 */  jal     func_809CE6E0              
/* 01D30 809D0410 24A50424 */  addiu   $a1, $a1, %lo(func_809D0424) ## $a1 = 809D0424
/* 01D34 809D0414 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01D38 809D0418 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01D3C 809D041C 03E00008 */  jr      $ra                        
/* 01D40 809D0420 00000000 */  nop


