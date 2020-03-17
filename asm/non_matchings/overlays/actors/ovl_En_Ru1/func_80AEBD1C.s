glabel func_80AEBD1C
/* 0110C 80AEBD1C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01110 80AEBD20 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 01114 80AEBD24 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01118 80AEBD28 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 0111C 80AEBD2C 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 01120 80AEBD30 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01124 80AEBD34 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 01128 80AEBD38 0C2BAD20 */  jal     func_80AEB480              
/* 0112C 80AEBD3C 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 01130 80AEBD40 1040000F */  beq     $v0, $zero, .L80AEBD80     
/* 01134 80AEBD44 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 01138 80AEBD48 AE0E0264 */  sw      $t6, 0x0264($s0)           ## 00000264
/* 0113C 80AEBD4C AE000268 */  sw      $zero, 0x0268($s0)         ## 00000268
/* 01140 80AEBD50 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01144 80AEBD54 0C2BAE45 */  jal     func_80AEB914              
/* 01148 80AEBD58 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 0114C 80AEBD5C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01150 80AEBD60 0C2BABB3 */  jal     func_80AEAECC              
/* 01154 80AEBD64 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01158 80AEBD68 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0115C 80AEBD6C 0C2BADA0 */  jal     func_80AEB680              
/* 01160 80AEBD70 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01164 80AEBD74 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01168 80AEBD78 0C2BAD67 */  jal     func_80AEB59C              
/* 0116C 80AEBD7C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
.L80AEBD80:
/* 01170 80AEBD80 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01174 80AEBD84 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 01178 80AEBD88 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 0117C 80AEBD8C 03E00008 */  jr      $ra                        
/* 01180 80AEBD90 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000


