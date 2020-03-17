glabel func_80ACB274
/* 01354 80ACB274 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01358 80ACB278 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0135C 80ACB27C 0C00BCCD */  jal     func_8002F334              
/* 01360 80ACB280 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01364 80ACB284 10400007 */  beq     $v0, $zero, .L80ACB2A4     
/* 01368 80ACB288 3C041100 */  lui     $a0, 0x1100                ## $a0 = 11000000
/* 0136C 80ACB28C 0C03E803 */  jal     Audio_SetBGM
              
/* 01370 80ACB290 348400FF */  ori     $a0, $a0, 0x00FF           ## $a0 = 110000FF
/* 01374 80ACB294 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 01378 80ACB298 3C0E80AD */  lui     $t6, %hi(func_80ACB2B4)    ## $t6 = 80AD0000
/* 0137C 80ACB29C 25CEB2B4 */  addiu   $t6, $t6, %lo(func_80ACB2B4) ## $t6 = 80ACB2B4
/* 01380 80ACB2A0 ADEE040C */  sw      $t6, 0x040C($t7)           ## 0000040C
.L80ACB2A4:
/* 01384 80ACB2A4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01388 80ACB2A8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0138C 80ACB2AC 03E00008 */  jr      $ra                        
/* 01390 80ACB2B0 00000000 */  nop


