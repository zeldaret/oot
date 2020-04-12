glabel func_80B0BAC8
/* 00328 80B0BAC8 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 0032C 80B0BACC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00330 80B0BAD0 AFA40030 */  sw      $a0, 0x0030($sp)           
/* 00334 80B0BAD4 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00338 80B0BAD8 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 0033C 80B0BADC 00807825 */  or      $t7, $a0, $zero            ## $t7 = 00000000
/* 00340 80B0BAE0 8DE70054 */  lw      $a3, 0x0054($t7)           ## 00000054
/* 00344 80B0BAE4 24840024 */  addiu   $a0, $a0, 0x0024           ## $a0 = 00000024
/* 00348 80B0BAE8 27A6001C */  addiu   $a2, $sp, 0x001C           ## $a2 = FFFFFFEC
/* 0034C 80B0BAEC 0C2C2E07 */  jal     func_80B0B81C              
/* 00350 80B0BAF0 24450024 */  addiu   $a1, $v0, 0x0024           ## $a1 = 00000024
/* 00354 80B0BAF4 10400004 */  beq     $v0, $zero, .L80B0BB08     
/* 00358 80B0BAF8 8FA40030 */  lw      $a0, 0x0030($sp)           
/* 0035C 80B0BAFC 3C0580B1 */  lui     $a1, %hi(func_80B0B934)    ## $a1 = 80B10000
/* 00360 80B0BB00 0C2C2DE8 */  jal     func_80B0B7A0              
/* 00364 80B0BB04 24A5B934 */  addiu   $a1, $a1, %lo(func_80B0B934) ## $a1 = 80B0B934
.L80B0BB08:
/* 00368 80B0BB08 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0036C 80B0BB0C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00370 80B0BB10 03E00008 */  jr      $ra                        
/* 00374 80B0BB14 00000000 */  nop
