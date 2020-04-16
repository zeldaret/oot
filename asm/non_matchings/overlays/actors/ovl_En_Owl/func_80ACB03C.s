glabel func_80ACB03C
/* 0111C 80ACB03C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01120 80ACB040 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01124 80ACB044 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01128 80ACB048 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0112C 80ACB04C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01130 80ACB050 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 01134 80ACB054 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01138 80ACB058 0C00B7D5 */  jal     func_8002DF54              
/* 0113C 80ACB05C 24060008 */  addiu   $a2, $zero, 0x0008         ## $a2 = 00000008
/* 01140 80ACB060 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01144 80ACB064 0C00BCCD */  jal     func_8002F334              
/* 01148 80ACB068 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 0114C 80ACB06C 1040000B */  beq     $v0, $zero, .L80ACB09C     
/* 01150 80ACB070 3C041100 */  lui     $a0, 0x1100                ## $a0 = 11000000
/* 01154 80ACB074 0C03E803 */  jal     Audio_SetBGM
              
/* 01158 80ACB078 348400FF */  ori     $a0, $a0, 0x00FF           ## $a0 = 110000FF
/* 0115C 80ACB07C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01160 80ACB080 0C2B298B */  jal     func_80ACA62C              
/* 01164 80ACB084 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01168 80ACB088 8E0E0004 */  lw      $t6, 0x0004($s0)           ## 00000004
/* 0116C 80ACB08C 3C01FFFE */  lui     $at, 0xFFFE                ## $at = FFFE0000
/* 01170 80ACB090 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = FFFEFFFF
/* 01174 80ACB094 01C17824 */  and     $t7, $t6, $at              
/* 01178 80ACB098 AE0F0004 */  sw      $t7, 0x0004($s0)           ## 00000004
.L80ACB09C:
/* 0117C 80ACB09C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01180 80ACB0A0 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01184 80ACB0A4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01188 80ACB0A8 03E00008 */  jr      $ra                        
/* 0118C 80ACB0AC 00000000 */  nop
