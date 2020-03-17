glabel func_80AEEC5C
/* 0404C 80AEEC5C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 04050 80AEEC60 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 04054 80AEEC64 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 04058 80AEEC68 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 0405C 80AEEC6C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 04060 80AEEC70 0C2BB60F */  jal     func_80AED83C              
/* 04064 80AEEC74 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 04068 80AEEC78 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0406C 80AEEC7C 0C2BAB37 */  jal     func_80AEACDC              
/* 04070 80AEEC80 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 04074 80AEEC84 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04078 80AEEC88 0C2BABB3 */  jal     func_80AEAECC              
/* 0407C 80AEEC8C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 04080 80AEEC90 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04084 80AEEC94 0C2BB8BE */  jal     func_80AEE2F8              
/* 04088 80AEEC98 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 0408C 80AEEC9C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04090 80AEECA0 0C2BB7FD */  jal     func_80AEDFF4              
/* 04094 80AEECA4 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 04098 80AEECA8 0C2BACC8 */  jal     func_80AEB320              
/* 0409C 80AEECAC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 040A0 80AEECB0 0C2BAB87 */  jal     func_80AEAE1C              
/* 040A4 80AEECB4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 040A8 80AEECB8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 040AC 80AEECBC 0C2BB95A */  jal     func_80AEE568              
/* 040B0 80AEECC0 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 040B4 80AEECC4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 040B8 80AEECC8 0C2BB589 */  jal     func_80AED624              
/* 040BC 80AEECCC 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 040C0 80AEECD0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 040C4 80AEECD4 0C2BB6B8 */  jal     func_80AEDAE0              
/* 040C8 80AEECD8 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 040CC 80AEECDC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 040D0 80AEECE0 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 040D4 80AEECE4 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 040D8 80AEECE8 03E00008 */  jr      $ra                        
/* 040DC 80AEECEC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000


