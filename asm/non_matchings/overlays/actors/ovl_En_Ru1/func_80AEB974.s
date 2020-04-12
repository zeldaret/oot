glabel func_80AEB974
/* 00D64 80AEB974 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00D68 80AEB978 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00D6C 80AEB97C AFA40038 */  sw      $a0, 0x0038($sp)           
/* 00D70 80AEB980 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00D74 80AEB984 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00D78 80AEB988 0C2BAD0E */  jal     func_80AEB438              
/* 00D7C 80AEB98C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00D80 80AEB990 10400019 */  beq     $v0, $zero, .L80AEB9F8     
/* 00D84 80AEB994 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 00D88 80AEB998 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 00D8C 80AEB99C 0C2BADF8 */  jal     func_80AEB7E0              
/* 00D90 80AEB9A0 8FA5003C */  lw      $a1, 0x003C($sp)           
/* 00D94 80AEB9A4 E7A00030 */  swc1    $f0, 0x0030($sp)           
/* 00D98 80AEB9A8 8E060018 */  lw      $a2, 0x0018($s0)           ## 00000018
/* 00D9C 80AEB9AC 8E05000C */  lw      $a1, 0x000C($s0)           ## 0000000C
/* 00DA0 80AEB9B0 0C2BAE1F */  jal     func_80AEB87C              
/* 00DA4 80AEB9B4 46000306 */  mov.s   $f12, $f0                  
/* 00DA8 80AEB9B8 8FA20038 */  lw      $v0, 0x0038($sp)           
/* 00DAC 80AEB9BC E4400024 */  swc1    $f0, 0x0024($v0)           ## 00000024
/* 00DB0 80AEB9C0 8E06001C */  lw      $a2, 0x001C($s0)           ## 0000001C
/* 00DB4 80AEB9C4 8E050010 */  lw      $a1, 0x0010($s0)           ## 00000010
/* 00DB8 80AEB9C8 24420024 */  addiu   $v0, $v0, 0x0024           ## $v0 = 00000024
/* 00DBC 80AEB9CC AFA20024 */  sw      $v0, 0x0024($sp)           
/* 00DC0 80AEB9D0 0C2BAE1F */  jal     func_80AEB87C              
/* 00DC4 80AEB9D4 C7AC0030 */  lwc1    $f12, 0x0030($sp)          
/* 00DC8 80AEB9D8 8FAE0024 */  lw      $t6, 0x0024($sp)           
/* 00DCC 80AEB9DC E5C00004 */  swc1    $f0, 0x0004($t6)           ## 00000004
/* 00DD0 80AEB9E0 8E060020 */  lw      $a2, 0x0020($s0)           ## 00000020
/* 00DD4 80AEB9E4 8E050014 */  lw      $a1, 0x0014($s0)           ## 00000014
/* 00DD8 80AEB9E8 0C2BAE1F */  jal     func_80AEB87C              
/* 00DDC 80AEB9EC C7AC0030 */  lwc1    $f12, 0x0030($sp)          
/* 00DE0 80AEB9F0 8FAF0024 */  lw      $t7, 0x0024($sp)           
/* 00DE4 80AEB9F4 E5E00008 */  swc1    $f0, 0x0008($t7)           ## 00000008
.L80AEB9F8:
/* 00DE8 80AEB9F8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00DEC 80AEB9FC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00DF0 80AEBA00 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00DF4 80AEBA04 03E00008 */  jr      $ra                        
/* 00DF8 80AEBA08 00000000 */  nop
