glabel func_80ACB22C
/* 0130C 80ACB22C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01310 80ACB230 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01314 80ACB234 0C00BCCD */  jal     func_8002F334              
/* 01318 80ACB238 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0131C 80ACB23C 10400009 */  beq     $v0, $zero, .L80ACB264     
/* 01320 80ACB240 3C041100 */  lui     $a0, 0x1100                ## $a0 = 11000000
/* 01324 80ACB244 0C03E803 */  jal     Audio_SetBGM
              
/* 01328 80ACB248 348400FF */  ori     $a0, $a0, 0x00FF           ## $a0 = 110000FF
/* 0132C 80ACB24C 0C2B2972 */  jal     func_80ACA5C8              
/* 01330 80ACB250 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01334 80ACB254 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 01338 80ACB258 3C0E80AD */  lui     $t6, %hi(func_80ACC30C)    ## $t6 = 80AD0000
/* 0133C 80ACB25C 25CEC30C */  addiu   $t6, $t6, %lo(func_80ACC30C) ## $t6 = 80ACC30C
/* 01340 80ACB260 ADEE040C */  sw      $t6, 0x040C($t7)           ## 0000040C
.L80ACB264:
/* 01344 80ACB264 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01348 80ACB268 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0134C 80ACB26C 03E00008 */  jr      $ra                        
/* 01350 80ACB270 00000000 */  nop
