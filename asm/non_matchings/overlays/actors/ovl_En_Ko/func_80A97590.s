glabel func_80A97590
/* 007E0 80A97590 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 007E4 80A97594 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 007E8 80A97598 3C0C8012 */  lui     $t4, %hi(gBitFlags)
/* 007EC 80A9759C 8D8C7120 */  lw      $t4, %lo(gBitFlags)($t4)
/* 007F0 80A975A0 8C4D00A4 */  lw      $t5, 0x00A4($v0)           ## 8015E704
/* 007F4 80A975A4 018D7024 */  and     $t6, $t4, $t5              
/* 007F8 80A975A8 11C00003 */  beq     $t6, $zero, .L80A975B8     
/* 007FC 80A975AC 00000000 */  nop
/* 00800 80A975B0 03E00008 */  jr      $ra                        
/* 00804 80A975B4 2402107C */  addiu   $v0, $zero, 0x107C         ## $v0 = 0000107C
.L80A975B8:
/* 00808 80A975B8 03E00008 */  jr      $ra                        
/* 0080C 80A975BC 24021052 */  addiu   $v0, $zero, 0x1052         ## $v0 = 00001052
