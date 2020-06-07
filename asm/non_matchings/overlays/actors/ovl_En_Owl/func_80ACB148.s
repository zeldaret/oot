glabel func_80ACB148
/* 01228 80ACB148 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0122C 80ACB14C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01230 80ACB150 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01234 80ACB154 0C00BCCD */  jal     func_8002F334              
/* 01238 80ACB158 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0123C 80ACB15C 1040000C */  beq     $v0, $zero, .L80ACB190     
/* 01240 80ACB160 3C041100 */  lui     $a0, 0x1100                ## $a0 = 11000000
/* 01244 80ACB164 0C03E803 */  jal     Audio_SetBGM
              
/* 01248 80ACB168 348400FF */  ori     $a0, $a0, 0x00FF           ## $a0 = 110000FF
/* 0124C 80ACB16C 0C2B2972 */  jal     func_80ACA5C8              
/* 01250 80ACB170 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01254 80ACB174 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 01258 80ACB178 3C0E80AD */  lui     $t6, %hi(func_80ACC30C)    ## $t6 = 80AD0000
/* 0125C 80ACB17C 25CEC30C */  addiu   $t6, $t6, %lo(func_80ACC30C) ## $t6 = 80ACC30C
/* 01260 80ACB180 ADEE040C */  sw      $t6, 0x040C($t7)           ## 0000040C
/* 01264 80ACB184 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 01268 80ACB188 0C00B2DD */  jal     Flags_SetSwitch
              
/* 0126C 80ACB18C 24050023 */  addiu   $a1, $zero, 0x0023         ## $a1 = 00000023
.L80ACB190:
/* 01270 80ACB190 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01274 80ACB194 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01278 80ACB198 03E00008 */  jr      $ra                        
/* 0127C 80ACB19C 00000000 */  nop
