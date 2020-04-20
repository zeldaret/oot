glabel func_80A972C8
/* 00518 80A972C8 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 0051C 80A972CC 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 00520 80A972D0 3C0F8012 */  lui     $t7, %hi(gBitFlags+0x48)
/* 00524 80A972D4 8DEF7168 */  lw      $t7, %lo(gBitFlags+0x48)($t7)
/* 00528 80A972D8 8C5800A4 */  lw      $t8, 0x00A4($v0)           ## 8015E704
/* 0052C 80A972DC 01F8C824 */  and     $t9, $t7, $t8              
/* 00530 80A972E0 13200003 */  beq     $t9, $zero, .L80A972F0     
/* 00534 80A972E4 00000000 */  nop
/* 00538 80A972E8 03E00008 */  jr      $ra                        
/* 0053C 80A972EC 2402104B */  addiu   $v0, $zero, 0x104B         ## $v0 = 0000104B
.L80A972F0:
/* 00540 80A972F0 03E00008 */  jr      $ra                        
/* 00544 80A972F4 2402103C */  addiu   $v0, $zero, 0x103C         ## $v0 = 0000103C
