glabel func_80A97438
/* 00688 80A97438 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 0068C 80A9743C 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 00690 80A97440 3C0A8012 */  lui     $t2, %hi(gBitFlags)
/* 00694 80A97444 8D4A7120 */  lw      $t2, %lo(gBitFlags)($t2)
/* 00698 80A97448 8C4B00A4 */  lw      $t3, 0x00A4($v0)           ## 8015E704
/* 0069C 80A9744C 014B6024 */  and     $t4, $t2, $t3              
/* 006A0 80A97450 11800003 */  beq     $t4, $zero, .L80A97460     
/* 006A4 80A97454 00000000 */  nop
/* 006A8 80A97458 03E00008 */  jr      $ra                        
/* 006AC 80A9745C 24021075 */  addiu   $v0, $zero, 0x1075         ## $v0 = 00001075
.L80A97460:
/* 006B0 80A97460 03E00008 */  jr      $ra                        
/* 006B4 80A97464 2402105B */  addiu   $v0, $zero, 0x105B         ## $v0 = 0000105B
