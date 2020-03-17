glabel func_808A1CF4
/* 004F4 808A1CF4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 004F8 808A1CF8 3C0E808A */  lui     $t6, %hi(func_808A1D50)    ## $t6 = 808A0000
/* 004FC 808A1CFC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00500 808A1D00 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00504 808A1D04 25CE1D50 */  addiu   $t6, $t6, %lo(func_808A1D50) ## $t6 = 808A1D50
/* 00508 808A1D08 AC8E0164 */  sw      $t6, 0x0164($a0)           ## 00000164
/* 0050C 808A1D0C 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00510 808A1D10 AFA70020 */  sw      $a3, 0x0020($sp)           
/* 00514 808A1D14 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00518 808A1D18 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 0051C 808A1D1C 24050C9E */  addiu   $a1, $zero, 0x0C9E         ## $a1 = 00000C9E
/* 00520 808A1D20 0C02003E */  jal     func_800800F8              
/* 00524 808A1D24 24060046 */  addiu   $a2, $zero, 0x0046         ## $a2 = 00000046
/* 00528 808A1D28 8FA70020 */  lw      $a3, 0x0020($sp)           
/* 0052C 808A1D2C 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00530 808A1D30 240503FC */  addiu   $a1, $zero, 0x03FC         ## $a1 = 000003FC
/* 00534 808A1D34 2406000F */  addiu   $a2, $zero, 0x000F         ## $a2 = 0000000F
/* 00538 808A1D38 0C02003E */  jal     func_800800F8              
/* 0053C 808A1D3C AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00540 808A1D40 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00544 808A1D44 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00548 808A1D48 03E00008 */  jr      $ra                        
/* 0054C 808A1D4C 00000000 */  nop


