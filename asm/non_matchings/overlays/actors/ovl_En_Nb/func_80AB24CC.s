glabel func_80AB24CC
/* 0173C 80AB24CC 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01740 80AB24D0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01744 80AB24D4 94AE1D74 */  lhu     $t6, 0x1D74($a1)           ## 00001D74
/* 01748 80AB24D8 24010224 */  addiu   $at, $zero, 0x0224         ## $at = 00000224
/* 0174C 80AB24DC 2405685B */  addiu   $a1, $zero, 0x685B         ## $a1 = 0000685B
/* 01750 80AB24E0 15C10006 */  bne     $t6, $at, .L80AB24FC       
/* 01754 80AB24E4 248400E4 */  addiu   $a0, $a0, 0x00E4           ## $a0 = 000000E4
/* 01758 80AB24E8 0C01E245 */  jal     func_80078914              
/* 0175C 80AB24EC AFA4001C */  sw      $a0, 0x001C($sp)           
/* 01760 80AB24F0 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 01764 80AB24F4 0C01E245 */  jal     func_80078914              
/* 01768 80AB24F8 240538A8 */  addiu   $a1, $zero, 0x38A8         ## $a1 = 000038A8
.L80AB24FC:
/* 0176C 80AB24FC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01770 80AB2500 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01774 80AB2504 03E00008 */  jr      $ra                        
/* 01778 80AB2508 00000000 */  nop


