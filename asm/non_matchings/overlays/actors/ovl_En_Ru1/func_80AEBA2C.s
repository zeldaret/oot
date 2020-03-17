glabel func_80AEBA2C
/* 00E1C 80AEBA2C 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00E20 80AEBA30 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00E24 80AEBA34 AFA40040 */  sw      $a0, 0x0040($sp)           
/* 00E28 80AEBA38 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00E2C 80AEBA3C AFA50044 */  sw      $a1, 0x0044($sp)           
/* 00E30 80AEBA40 0C2BAD0E */  jal     func_80AEB438              
/* 00E34 80AEBA44 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00E38 80AEBA48 10400027 */  beq     $v0, $zero, .L80AEBAE8     
/* 00E3C 80AEBA4C 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 00E40 80AEBA50 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 00E44 80AEBA54 0C2BADF8 */  jal     func_80AEB7E0              
/* 00E48 80AEBA58 8FA50044 */  lw      $a1, 0x0044($sp)           
/* 00E4C 80AEBA5C 8FA20040 */  lw      $v0, 0x0040($sp)           
/* 00E50 80AEBA60 E7A00030 */  swc1    $f0, 0x0030($sp)           
/* 00E54 80AEBA64 8E060018 */  lw      $a2, 0x0018($s0)           ## 00000018
/* 00E58 80AEBA68 C4440364 */  lwc1    $f4, 0x0364($v0)           ## 00000364
/* 00E5C 80AEBA6C 24420364 */  addiu   $v0, $v0, 0x0364           ## $v0 = 00000364
/* 00E60 80AEBA70 AFA20024 */  sw      $v0, 0x0024($sp)           
/* 00E64 80AEBA74 4600218D */  trunc.w.s $f6, $f4                   
/* 00E68 80AEBA78 46000306 */  mov.s   $f12, $f0                  
/* 00E6C 80AEBA7C 44053000 */  mfc1    $a1, $f6                   
/* 00E70 80AEBA80 0C2BAE1F */  jal     func_80AEB87C              
/* 00E74 80AEBA84 00000000 */  nop
/* 00E78 80AEBA88 8FA20040 */  lw      $v0, 0x0040($sp)           
/* 00E7C 80AEBA8C E4400024 */  swc1    $f0, 0x0024($v0)           ## 00000024
/* 00E80 80AEBA90 8FAF0024 */  lw      $t7, 0x0024($sp)           
/* 00E84 80AEBA94 8E06001C */  lw      $a2, 0x001C($s0)           ## 0000001C
/* 00E88 80AEBA98 24420024 */  addiu   $v0, $v0, 0x0024           ## $v0 = 00000024
/* 00E8C 80AEBA9C C5E80004 */  lwc1    $f8, 0x0004($t7)           ## 00000004
/* 00E90 80AEBAA0 AFA20020 */  sw      $v0, 0x0020($sp)           
/* 00E94 80AEBAA4 C7AC0030 */  lwc1    $f12, 0x0030($sp)          
/* 00E98 80AEBAA8 4600428D */  trunc.w.s $f10, $f8                  
/* 00E9C 80AEBAAC 44055000 */  mfc1    $a1, $f10                  
/* 00EA0 80AEBAB0 0C2BAE1F */  jal     func_80AEB87C              
/* 00EA4 80AEBAB4 00000000 */  nop
/* 00EA8 80AEBAB8 8FB90020 */  lw      $t9, 0x0020($sp)           
/* 00EAC 80AEBABC E7200004 */  swc1    $f0, 0x0004($t9)           ## 00000004
/* 00EB0 80AEBAC0 8FA80024 */  lw      $t0, 0x0024($sp)           
/* 00EB4 80AEBAC4 8E060020 */  lw      $a2, 0x0020($s0)           ## 00000020
/* 00EB8 80AEBAC8 C7AC0030 */  lwc1    $f12, 0x0030($sp)          
/* 00EBC 80AEBACC C5100008 */  lwc1    $f16, 0x0008($t0)          ## 00000008
/* 00EC0 80AEBAD0 4600848D */  trunc.w.s $f18, $f16                 
/* 00EC4 80AEBAD4 44059000 */  mfc1    $a1, $f18                  
/* 00EC8 80AEBAD8 0C2BAE1F */  jal     func_80AEB87C              
/* 00ECC 80AEBADC 00000000 */  nop
/* 00ED0 80AEBAE0 8FAA0020 */  lw      $t2, 0x0020($sp)           
/* 00ED4 80AEBAE4 E5400008 */  swc1    $f0, 0x0008($t2)           ## 00000008
.L80AEBAE8:
/* 00ED8 80AEBAE8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00EDC 80AEBAEC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00EE0 80AEBAF0 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 00EE4 80AEBAF4 03E00008 */  jr      $ra                        
/* 00EE8 80AEBAF8 00000000 */  nop


