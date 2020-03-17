glabel func_80AC3350
/* 006B0 80AC3350 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 006B4 80AC3354 44866000 */  mtc1    $a2, $f12                  ## $f12 = 0.00
/* 006B8 80AC3358 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 006BC 80AC335C AFA40028 */  sw      $a0, 0x0028($sp)           
/* 006C0 80AC3360 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 006C4 80AC3364 E48C02D4 */  swc1    $f12, 0x02D4($a0)          ## 000002D4
/* 006C8 80AC3368 8FAF002C */  lw      $t7, 0x002C($sp)           
/* 006CC 80AC336C 4600610D */  trunc.w.s $f4, $f12                  
/* 006D0 80AC3370 2405000C */  addiu   $a1, $zero, 0x000C         ## $a1 = 0000000C
/* 006D4 80AC3374 85F807A0 */  lh      $t8, 0x07A0($t7)           ## 000007A0
/* 006D8 80AC3378 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 006DC 80AC337C 440A2000 */  mfc1    $t2, $f4                   
/* 006E0 80AC3380 0018C880 */  sll     $t9, $t8,  2               
/* 006E4 80AC3384 01F94021 */  addu    $t0, $t7, $t9              
/* 006E8 80AC3388 8D040790 */  lw      $a0, 0x0790($t0)           ## 00000790
/* 006EC 80AC338C AFA00018 */  sw      $zero, 0x0018($sp)         
/* 006F0 80AC3390 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 006F4 80AC3394 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 006F8 80AC3398 0C016BF5 */  jal     Camera_SetCameraData              ## setCameraData
/* 006FC 80AC339C AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 00700 80AC33A0 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00704 80AC33A4 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00708 80AC33A8 03E00008 */  jr      $ra                        
/* 0070C 80AC33AC 00000000 */  nop


