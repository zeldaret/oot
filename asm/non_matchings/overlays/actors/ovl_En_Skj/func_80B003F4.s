glabel func_80B003F4
/* 02144 80B003F4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02148 80B003F8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0214C 80B003FC 240E1041 */  addiu   $t6, $zero, 0x1041         ## $t6 = 00001041
/* 02150 80B00400 A48E02C4 */  sh      $t6, 0x02C4($a0)           ## 000002C4
/* 02154 80B00404 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02158 80B00408 0C2BF8AC */  jal     EnSkj_ChangeAnim              
/* 0215C 80B0040C 24050009 */  addiu   $a1, $zero, 0x0009         ## $a1 = 00000009
/* 02160 80B00410 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02164 80B00414 0C2BF8CE */  jal     EnSkj_SetupAction              
/* 02168 80B00418 24050017 */  addiu   $a1, $zero, 0x0017         ## $a1 = 00000017
/* 0216C 80B0041C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02170 80B00420 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02174 80B00424 03E00008 */  jr      $ra                        
/* 02178 80B00428 00000000 */  nop
