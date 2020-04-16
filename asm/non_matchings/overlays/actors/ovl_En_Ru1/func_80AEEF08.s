glabel func_80AEEF08
/* 042F8 80AEEF08 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 042FC 80AEEF0C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 04300 80AEEF10 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 04304 80AEEF14 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 04308 80AEEF18 0C2BB60F */  jal     func_80AED83C              
/* 0430C 80AEEF1C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 04310 80AEEF20 0C2BACC8 */  jal     func_80AEB320              
/* 04314 80AEEF24 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04318 80AEEF28 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0431C 80AEEF2C 0C2BABB3 */  jal     func_80AEAECC              
/* 04320 80AEEF30 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 04324 80AEEF34 0C2BAB87 */  jal     func_80AEAE1C              
/* 04328 80AEEF38 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0432C 80AEEF3C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04330 80AEEF40 0C2BB98A */  jal     func_80AEE628              
/* 04334 80AEEF44 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 04338 80AEEF48 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0433C 80AEEF4C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 04340 80AEEF50 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 04344 80AEEF54 03E00008 */  jr      $ra                        
/* 04348 80AEEF58 00000000 */  nop
