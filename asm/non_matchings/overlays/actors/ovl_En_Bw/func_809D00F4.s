glabel func_809D00F4
/* 01A14 809D00F4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01A18 809D00F8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01A1C 809D00FC 8C8F0004 */  lw      $t7, 0x0004($a0)           ## 00000004
/* 01A20 809D0100 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01A24 809D0104 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 01A28 809D0108 240E0028 */  addiu   $t6, $zero, 0x0028         ## $t6 = 00000028
/* 01A2C 809D010C 01E1C024 */  and     $t8, $t7, $at              
/* 01A30 809D0110 A0800220 */  sb      $zero, 0x0220($a0)         ## 00000220
/* 01A34 809D0114 A48E0222 */  sh      $t6, 0x0222($a0)           ## 00000222
/* 01A38 809D0118 AC980004 */  sw      $t8, 0x0004($a0)           ## 00000004
/* 01A3C 809D011C E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
/* 01A40 809D0120 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01A44 809D0124 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01A48 809D0128 24053978 */  addiu   $a1, $zero, 0x3978         ## $a1 = 00003978
/* 01A4C 809D012C 3C05809D */  lui     $a1, %hi(func_809D014C)    ## $a1 = 809D0000
/* 01A50 809D0130 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01A54 809D0134 0C2739B8 */  jal     func_809CE6E0              
/* 01A58 809D0138 24A5014C */  addiu   $a1, $a1, %lo(func_809D014C) ## $a1 = 809D014C
/* 01A5C 809D013C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01A60 809D0140 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01A64 809D0144 03E00008 */  jr      $ra                        
/* 01A68 809D0148 00000000 */  nop


