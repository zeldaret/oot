glabel func_809EC1A0
/* 01460 809EC1A0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01464 809EC1A4 3C0E809F */  lui     $t6, %hi(D_809EC668)       ## $t6 = 809F0000
/* 01468 809EC1A8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0146C 809EC1AC AFA40028 */  sw      $a0, 0x0028($sp)           
/* 01470 809EC1B0 AFA60030 */  sw      $a2, 0x0030($sp)           
/* 01474 809EC1B4 AFA70034 */  sw      $a3, 0x0034($sp)           
/* 01478 809EC1B8 25CEC668 */  addiu   $t6, $t6, %lo(D_809EC668)  ## $t6 = 809EC668
/* 0147C 809EC1BC 8DD80000 */  lw      $t8, 0x0000($t6)           ## 809EC668
/* 01480 809EC1C0 27A4001C */  addiu   $a0, $sp, 0x001C           ## $a0 = FFFFFFF4
/* 01484 809EC1C4 2401000D */  addiu   $at, $zero, 0x000D         ## $at = 0000000D
/* 01488 809EC1C8 AC980000 */  sw      $t8, 0x0000($a0)           ## FFFFFFF4
/* 0148C 809EC1CC 8DCF0004 */  lw      $t7, 0x0004($t6)           ## 809EC66C
/* 01490 809EC1D0 AC8F0004 */  sw      $t7, 0x0004($a0)           ## FFFFFFF8
/* 01494 809EC1D4 8DD80008 */  lw      $t8, 0x0008($t6)           ## 809EC670
/* 01498 809EC1D8 14A10011 */  bne     $a1, $at, .L809EC220       
/* 0149C 809EC1DC AC980008 */  sw      $t8, 0x0008($a0)           ## FFFFFFFC
/* 014A0 809EC1E0 8FA50038 */  lw      $a1, 0x0038($sp)           
/* 014A4 809EC1E4 0C0346BD */  jal     Matrix_MultVec3f              
/* 014A8 809EC1E8 24A5030C */  addiu   $a1, $a1, 0x030C           ## $a1 = 0000030C
/* 014AC 809EC1EC 0C034213 */  jal     Matrix_Push              
/* 014B0 809EC1F0 00000000 */  nop
/* 014B4 809EC1F4 C7AC001C */  lwc1    $f12, 0x001C($sp)          
/* 014B8 809EC1F8 C7AE0020 */  lwc1    $f14, 0x0020($sp)          
/* 014BC 809EC1FC 8FA60024 */  lw      $a2, 0x0024($sp)           
/* 014C0 809EC200 0C034261 */  jal     Matrix_Translate              
/* 014C4 809EC204 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 014C8 809EC208 8FA50038 */  lw      $a1, 0x0038($sp)           
/* 014CC 809EC20C 24040001 */  addiu   $a0, $zero, 0x0001         ## $a0 = 00000001
/* 014D0 809EC210 0C018A29 */  jal     func_800628A4              
/* 014D4 809EC214 24A502AC */  addiu   $a1, $a1, 0x02AC           ## $a1 = 000002AC
/* 014D8 809EC218 0C034221 */  jal     Matrix_Pull              
/* 014DC 809EC21C 00000000 */  nop
.L809EC220:
/* 014E0 809EC220 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 014E4 809EC224 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 014E8 809EC228 03E00008 */  jr      $ra                        
/* 014EC 809EC22C 00000000 */  nop


