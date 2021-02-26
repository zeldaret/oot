glabel func_80AACB6C
/* 0026C 80AACB6C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00270 80AACB70 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00274 80AACB74 0C00BC65 */  jal     func_8002F194              
/* 00278 80AACB78 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0027C 80AACB7C 10400004 */  beq     $v0, $zero, .L80AACB90     
/* 00280 80AACB80 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00284 80AACB84 3C0E80AB */  lui     $t6, %hi(func_80AACB14)    ## $t6 = 80AB0000
/* 00288 80AACB88 25CECB14 */  addiu   $t6, $t6, %lo(func_80AACB14) ## $t6 = 80AACB14
/* 0028C 80AACB8C AC8E0284 */  sw      $t6, 0x0284($a0)           ## 00000284
.L80AACB90:
/* 00290 80AACB90 948F027E */  lhu     $t7, 0x027E($a0)           ## 0000027E
/* 00294 80AACB94 35F80001 */  ori     $t8, $t7, 0x0001           ## $t8 = 00000001
/* 00298 80AACB98 A498027E */  sh      $t8, 0x027E($a0)           ## 0000027E
/* 0029C 80AACB9C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 002A0 80AACBA0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 002A4 80AACBA4 03E00008 */  jr      $ra                        
/* 002A8 80AACBA8 00000000 */  nop
