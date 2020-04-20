glabel func_80A974E8
/* 00738 80A974E8 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 0073C 80A974EC 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 00740 80A974F0 3C0B8012 */  lui     $t3, %hi(gBitFlags)
/* 00744 80A974F4 8D6B7120 */  lw      $t3, %lo(gBitFlags)($t3)
/* 00748 80A974F8 8C4C00A4 */  lw      $t4, 0x00A4($v0)           ## 8015E704
/* 0074C 80A974FC 016C6824 */  and     $t5, $t3, $t4              
/* 00750 80A97500 11A00003 */  beq     $t5, $zero, .L80A97510     
/* 00754 80A97504 00000000 */  nop
/* 00758 80A97508 03E00008 */  jr      $ra                        
/* 0075C 80A9750C 24021079 */  addiu   $v0, $zero, 0x1079         ## $v0 = 00001079
.L80A97510:
/* 00760 80A97510 03E00008 */  jr      $ra                        
/* 00764 80A97514 2402104E */  addiu   $v0, $zero, 0x104E         ## $v0 = 0000104E
