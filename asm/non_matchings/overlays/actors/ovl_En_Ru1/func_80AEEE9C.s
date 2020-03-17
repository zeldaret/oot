glabel func_80AEEE9C
/* 0428C 80AEEE9C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 04290 80AEEEA0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 04294 80AEEEA4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 04298 80AEEEA8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0429C 80AEEEAC 0C2BB60F */  jal     func_80AED83C              
/* 042A0 80AEEEB0 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 042A4 80AEEEB4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 042A8 80AEEEB8 0C2BABB3 */  jal     func_80AEAECC              
/* 042AC 80AEEEBC 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 042B0 80AEEEC0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 042B4 80AEEEC4 0C2BB7FD */  jal     func_80AEDFF4              
/* 042B8 80AEEEC8 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 042BC 80AEEECC 0C2BACC8 */  jal     func_80AEB320              
/* 042C0 80AEEED0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 042C4 80AEEED4 0C2BAB87 */  jal     func_80AEAE1C              
/* 042C8 80AEEED8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 042CC 80AEEEDC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 042D0 80AEEEE0 0C2BB5CE */  jal     func_80AED738              
/* 042D4 80AEEEE4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 042D8 80AEEEE8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 042DC 80AEEEEC 0C2BB589 */  jal     func_80AED624              
/* 042E0 80AEEEF0 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 042E4 80AEEEF4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 042E8 80AEEEF8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 042EC 80AEEEFC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 042F0 80AEEF00 03E00008 */  jr      $ra                        
/* 042F4 80AEEF04 00000000 */  nop


