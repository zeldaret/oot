glabel func_80AB10C4
/* 00334 80AB10C4 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00338 80AB10C8 AFA40038 */  sw      $a0, 0x0038($sp)           
/* 0033C 80AB10CC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00340 80AB10D0 24840308 */  addiu   $a0, $a0, 0x0308           ## $a0 = 00000308
/* 00344 80AB10D4 240E0064 */  addiu   $t6, $zero, 0x0064         ## $t6 = 00000064
/* 00348 80AB10D8 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 0034C 80AB10DC AFA40024 */  sw      $a0, 0x0024($sp)           
/* 00350 80AB10E0 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00354 80AB10E4 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 00358 80AB10E8 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 0035C 80AB10EC 24071838 */  addiu   $a3, $zero, 0x1838         ## $a3 = 00001838
/* 00360 80AB10F0 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00364 80AB10F4 240F0064 */  addiu   $t7, $zero, 0x0064         ## $t7 = 00000064
/* 00368 80AB10F8 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 0036C 80AB10FC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00370 80AB1100 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 00374 80AB1104 24071838 */  addiu   $a3, $zero, 0x1838         ## $a3 = 00001838
/* 00378 80AB1108 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 0037C 80AB110C 24840002 */  addiu   $a0, $a0, 0x0002           ## $a0 = 00000002
/* 00380 80AB1110 8FA40038 */  lw      $a0, 0x0038($sp)           
/* 00384 80AB1114 24180064 */  addiu   $t8, $zero, 0x0064         ## $t8 = 00000064
/* 00388 80AB1118 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 0038C 80AB111C 2484030E */  addiu   $a0, $a0, 0x030E           ## $a0 = 0000030E
/* 00390 80AB1120 AFA40024 */  sw      $a0, 0x0024($sp)           
/* 00394 80AB1124 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00398 80AB1128 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 0039C 80AB112C 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 003A0 80AB1130 24071838 */  addiu   $a3, $zero, 0x1838         ## $a3 = 00001838
/* 003A4 80AB1134 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 003A8 80AB1138 24190064 */  addiu   $t9, $zero, 0x0064         ## $t9 = 00000064
/* 003AC 80AB113C AFB90010 */  sw      $t9, 0x0010($sp)           
/* 003B0 80AB1140 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 003B4 80AB1144 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 003B8 80AB1148 24071838 */  addiu   $a3, $zero, 0x1838         ## $a3 = 00001838
/* 003BC 80AB114C 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 003C0 80AB1150 24840002 */  addiu   $a0, $a0, 0x0002           ## $a0 = 00000002
/* 003C4 80AB1154 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 003C8 80AB1158 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 003CC 80AB115C 03E00008 */  jr      $ra                        
/* 003D0 80AB1160 00000000 */  nop
