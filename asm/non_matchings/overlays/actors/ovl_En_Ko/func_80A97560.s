glabel func_80A97560
/* 007B0 80A97560 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 007B4 80A97564 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 007B8 80A97568 3C098012 */  lui     $t1, %hi(gBitFlags)
/* 007BC 80A9756C 8D297120 */  lw      $t1, %lo(gBitFlags)($t1)
/* 007C0 80A97570 8C4A00A4 */  lw      $t2, 0x00A4($v0)           ## 8015E704
/* 007C4 80A97574 012A5824 */  and     $t3, $t1, $t2              
/* 007C8 80A97578 11600003 */  beq     $t3, $zero, .L80A97588     
/* 007CC 80A9757C 00000000 */  nop
/* 007D0 80A97580 03E00008 */  jr      $ra                        
/* 007D4 80A97584 2402107B */  addiu   $v0, $zero, 0x107B         ## $v0 = 0000107B
.L80A97588:
/* 007D8 80A97588 03E00008 */  jr      $ra                        
/* 007DC 80A9758C 24021051 */  addiu   $v0, $zero, 0x1051         ## $v0 = 00001051
