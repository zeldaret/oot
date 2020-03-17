glabel func_80B57240
/* 03E90 80B57240 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 03E94 80B57244 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 03E98 80B57248 0C2D5C7F */  jal     func_80B571FC              
/* 03E9C 80B5724C AFA40030 */  sw      $a0, 0x0030($sp)           
/* 03EA0 80B57250 8FA40030 */  lw      $a0, 0x0030($sp)           
/* 03EA4 80B57254 00022C00 */  sll     $a1, $v0, 16               
/* 03EA8 80B57258 240E03E8 */  addiu   $t6, $zero, 0x03E8         ## $t6 = 000003E8
/* 03EAC 80B5725C 24840032 */  addiu   $a0, $a0, 0x0032           ## $a0 = 00000032
/* 03EB0 80B57260 AFA40024 */  sw      $a0, 0x0024($sp)           
/* 03EB4 80B57264 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 03EB8 80B57268 00052C03 */  sra     $a1, $a1, 16               
/* 03EBC 80B5726C 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 03EC0 80B57270 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 03EC4 80B57274 24071900 */  addiu   $a3, $zero, 0x1900         ## $a3 = 00001900
/* 03EC8 80B57278 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 03ECC 80B5727C 8FB80030 */  lw      $t8, 0x0030($sp)           
/* 03ED0 80B57280 848F0000 */  lh      $t7, 0x0000($a0)           ## 00000000
/* 03ED4 80B57284 A70F00B6 */  sh      $t7, 0x00B6($t8)           ## 000000B6
/* 03ED8 80B57288 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 03EDC 80B5728C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 03EE0 80B57290 03E00008 */  jr      $ra                        
/* 03EE4 80B57294 00000000 */  nop


