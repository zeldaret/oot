glabel func_80AF3878
/* 01328 80AF3878 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0132C 80AF387C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01330 80AF3880 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 01334 80AF3884 0C2BCE0F */  jal     func_80AF383C              
/* 01338 80AF3888 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0133C 80AF388C 5040000D */  beql    $v0, $zero, .L80AF38C4     
/* 01340 80AF3890 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01344 80AF3894 0C02FF21 */  jal     func_800BFC84              
/* 01348 80AF3898 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 0134C 80AF389C 14400008 */  bne     $v0, $zero, .L80AF38C0     
/* 01350 80AF38A0 8FA70020 */  lw      $a3, 0x0020($sp)           
/* 01354 80AF38A4 240E0010 */  addiu   $t6, $zero, 0x0010         ## $t6 = 00000010
/* 01358 80AF38A8 ACEE02A8 */  sw      $t6, 0x02A8($a3)           ## 000002A8
/* 0135C 80AF38AC AFA00010 */  sw      $zero, 0x0010($sp)         
/* 01360 80AF38B0 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 01364 80AF38B4 24050C3A */  addiu   $a1, $zero, 0x0C3A         ## $a1 = 00000C3A
/* 01368 80AF38B8 0C02003E */  jal     func_800800F8              
/* 0136C 80AF38BC 2406FF9D */  addiu   $a2, $zero, 0xFF9D         ## $a2 = FFFFFF9D
.L80AF38C0:
/* 01370 80AF38C0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AF38C4:
/* 01374 80AF38C4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01378 80AF38C8 03E00008 */  jr      $ra                        
/* 0137C 80AF38CC 00000000 */  nop


