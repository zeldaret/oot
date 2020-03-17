glabel func_80B57298
/* 03EE8 80B57298 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 03EEC 80B5729C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 03EF0 80B572A0 0C2D5C6A */  jal     func_80B571A8              
/* 03EF4 80B572A4 AFA40030 */  sw      $a0, 0x0030($sp)           
/* 03EF8 80B572A8 8FA40030 */  lw      $a0, 0x0030($sp)           
/* 03EFC 80B572AC 00022C00 */  sll     $a1, $v0, 16               
/* 03F00 80B572B0 240E03E8 */  addiu   $t6, $zero, 0x03E8         ## $t6 = 000003E8
/* 03F04 80B572B4 24840032 */  addiu   $a0, $a0, 0x0032           ## $a0 = 00000032
/* 03F08 80B572B8 AFA40024 */  sw      $a0, 0x0024($sp)           
/* 03F0C 80B572BC AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 03F10 80B572C0 00052C03 */  sra     $a1, $a1, 16               
/* 03F14 80B572C4 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 03F18 80B572C8 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 03F1C 80B572CC 24071900 */  addiu   $a3, $zero, 0x1900         ## $a3 = 00001900
/* 03F20 80B572D0 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 03F24 80B572D4 8FB80030 */  lw      $t8, 0x0030($sp)           
/* 03F28 80B572D8 848F0000 */  lh      $t7, 0x0000($a0)           ## 00000000
/* 03F2C 80B572DC A70F00B6 */  sh      $t7, 0x00B6($t8)           ## 000000B6
/* 03F30 80B572E0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 03F34 80B572E4 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 03F38 80B572E8 03E00008 */  jr      $ra                        
/* 03F3C 80B572EC 00000000 */  nop


