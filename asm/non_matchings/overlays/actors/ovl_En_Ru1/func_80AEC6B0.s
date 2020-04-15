glabel func_80AEC6B0
/* 01AA0 80AEC6B0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01AA4 80AEC6B4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01AA8 80AEC6B8 248400E4 */  addiu   $a0, $a0, 0x00E4           ## $a0 = 000000E4
/* 01AAC 80AEC6BC AFA4001C */  sw      $a0, 0x001C($sp)           
/* 01AB0 80AEC6C0 0C01E245 */  jal     func_80078914              
/* 01AB4 80AEC6C4 24052870 */  addiu   $a1, $zero, 0x2870         ## $a1 = 00002870
/* 01AB8 80AEC6C8 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 01ABC 80AEC6CC 0C01E245 */  jal     func_80078914              
/* 01AC0 80AEC6D0 24056862 */  addiu   $a1, $zero, 0x6862         ## $a1 = 00006862
/* 01AC4 80AEC6D4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01AC8 80AEC6D8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01ACC 80AEC6DC 03E00008 */  jr      $ra                        
/* 01AD0 80AEC6E0 00000000 */  nop
