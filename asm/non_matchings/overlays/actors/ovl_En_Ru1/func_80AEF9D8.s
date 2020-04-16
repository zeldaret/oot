glabel func_80AEF9D8
/* 04DC8 80AEF9D8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 04DCC 80AEF9DC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 04DD0 80AEF9E0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 04DD4 80AEF9E4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 04DD8 80AEF9E8 0C2BB60F */  jal     func_80AED83C              
/* 04DDC 80AEF9EC AFA50024 */  sw      $a1, 0x0024($sp)           
/* 04DE0 80AEF9F0 0C2BACC8 */  jal     func_80AEB320              
/* 04DE4 80AEF9F4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04DE8 80AEF9F8 0C2BAB87 */  jal     func_80AEAE1C              
/* 04DEC 80AEF9FC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04DF0 80AEFA00 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04DF4 80AEFA04 0C2BBD89 */  jal     func_80AEF624              
/* 04DF8 80AEFA08 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 04DFC 80AEFA0C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04E00 80AEFA10 0C2BAC88 */  jal     func_80AEB220              
/* 04E04 80AEFA14 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 04E08 80AEFA18 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 04E0C 80AEFA1C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 04E10 80AEFA20 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 04E14 80AEFA24 03E00008 */  jr      $ra                        
/* 04E18 80AEFA28 00000000 */  nop
