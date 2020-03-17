glabel func_809CCAF0
/* 00EF0 809CCAF0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00EF4 809CCAF4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00EF8 809CCAF8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00EFC 809CCAFC 0C273008 */  jal     func_809CC020              
/* 00F00 809CCB00 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00F04 809CCB04 10400004 */  beq     $v0, $zero, .L809CCB18     
/* 00F08 809CCB08 8FA70020 */  lw      $a3, 0x0020($sp)           
/* 00F0C 809CCB0C 3C0E809D */  lui     $t6, %hi(func_809CC9B4)    ## $t6 = 809D0000
/* 00F10 809CCB10 25CEC9B4 */  addiu   $t6, $t6, %lo(func_809CC9B4) ## $t6 = 809CC9B4
/* 00F14 809CCB14 ACEE014C */  sw      $t6, 0x014C($a3)           ## 0000014C
.L809CCB18:
/* 00F18 809CCB18 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00F1C 809CCB1C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00F20 809CCB20 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00F24 809CCB24 24E60150 */  addiu   $a2, $a3, 0x0150           ## $a2 = 00000150
/* 00F28 809CCB28 00812821 */  addu    $a1, $a0, $at              
/* 00F2C 809CCB2C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00F30 809CCB30 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 00F34 809CCB34 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00F38 809CCB38 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00F3C 809CCB3C 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00F40 809CCB40 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 00F44 809CCB44 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00F48 809CCB48 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00F4C 809CCB4C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00F50 809CCB50 03E00008 */  jr      $ra                        
/* 00F54 809CCB54 00000000 */  nop


