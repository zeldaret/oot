glabel func_80AC09A4
/* 00344 80AC09A4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00348 80AC09A8 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 0034C 80AC09AC AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00350 80AC09B0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00354 80AC09B4 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 00358 80AC09B8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0035C 80AC09BC 240E0514 */  addiu   $t6, $zero, 0x0514         ## $t6 = 00000514
/* 00360 80AC09C0 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 00364 80AC09C4 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00368 80AC09C8 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 0036C 80AC09CC 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00370 80AC09D0 0C00A527 */  jal     EffectSsGSplash_Spawn              
/* 00374 80AC09D4 24A50008 */  addiu   $a1, $a1, 0x0008           ## $a1 = 00000008
/* 00378 80AC09D8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0037C 80AC09DC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00380 80AC09E0 03E00008 */  jr      $ra                        
/* 00384 80AC09E4 00000000 */  nop
