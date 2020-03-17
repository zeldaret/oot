glabel func_80B90110
/* 01690 80B90110 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01694 80B90114 3C0E80B9 */  lui     $t6, %hi(func_80B90158)    ## $t6 = 80B90000
/* 01698 80B90118 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0169C 80B9011C 25CE0158 */  addiu   $t6, $t6, %lo(func_80B90158) ## $t6 = 80B90158
/* 016A0 80B90120 AC8E0164 */  sw      $t6, 0x0164($a0)           ## 00000164
/* 016A4 80B90124 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 016A8 80B90128 0C2E3BCA */  jal     func_80B8EF28              
/* 016AC 80B9012C 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 016B0 80B90130 3C053DCC */  lui     $a1, 0x3DCC                ## $a1 = 3DCC0000
/* 016B4 80B90134 34A5CCCD */  ori     $a1, $a1, 0xCCCD           ## $a1 = 3DCCCCCD
/* 016B8 80B90138 0C00B58B */  jal     Actor_SetScale
              
/* 016BC 80B9013C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 016C0 80B90140 0C2E3D97 */  jal     func_80B8F65C              
/* 016C4 80B90144 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 016C8 80B90148 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 016CC 80B9014C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 016D0 80B90150 03E00008 */  jr      $ra                        
/* 016D4 80B90154 00000000 */  nop


