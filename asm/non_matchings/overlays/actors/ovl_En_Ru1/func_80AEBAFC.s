glabel func_80AEBAFC
/* 00EEC 80AEBAFC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00EF0 80AEBB00 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00EF4 80AEBB04 8C8E0298 */  lw      $t6, 0x0298($a0)           ## 00000298
/* 00EF8 80AEBB08 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00EFC 80AEBB0C 248400E4 */  addiu   $a0, $a0, 0x00E4           ## $a0 = 000000E4
/* 00F00 80AEBB10 15C00006 */  bne     $t6, $zero, .L80AEBB2C     
/* 00F04 80AEBB14 24052889 */  addiu   $a1, $zero, 0x2889         ## $a1 = 00002889
/* 00F08 80AEBB18 0C01E245 */  jal     func_80078914              
/* 00F0C 80AEBB1C AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00F10 80AEBB20 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00F14 80AEBB24 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 00F18 80AEBB28 ACCF0298 */  sw      $t7, 0x0298($a2)           ## 00000298
.L80AEBB2C:
/* 00F1C 80AEBB2C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00F20 80AEBB30 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00F24 80AEBB34 03E00008 */  jr      $ra                        
/* 00F28 80AEBB38 00000000 */  nop
