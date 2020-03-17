glabel func_80AEC650
/* 01A40 80AEC650 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01A44 80AEC654 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01A48 80AEC658 8C8E0280 */  lw      $t6, 0x0280($a0)           ## 00000280
/* 01A4C 80AEC65C 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 01A50 80AEC660 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01A54 80AEC664 15C0000E */  bne     $t6, $zero, .L80AEC6A0     
/* 01A58 80AEC668 3C054000 */  lui     $a1, 0x4000                ## $a1 = 40000000
/* 01A5C 80AEC66C AFA4001C */  sw      $a0, 0x001C($sp)           
/* 01A60 80AEC670 0C0295B2 */  jal     func_800A56C8              
/* 01A64 80AEC674 AFA60028 */  sw      $a2, 0x0028($sp)           
/* 01A68 80AEC678 14400005 */  bne     $v0, $zero, .L80AEC690     
/* 01A6C 80AEC67C 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 01A70 80AEC680 0C0295B2 */  jal     func_800A56C8              
/* 01A74 80AEC684 3C0540E0 */  lui     $a1, 0x40E0                ## $a1 = 40E00000
/* 01A78 80AEC688 50400006 */  beql    $v0, $zero, .L80AEC6A4     
/* 01A7C 80AEC68C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AEC690:
/* 01A80 80AEC690 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 01A84 80AEC694 24050803 */  addiu   $a1, $zero, 0x0803         ## $a1 = 00000803
/* 01A88 80AEC698 0C01E245 */  jal     func_80078914              
/* 01A8C 80AEC69C 248400E4 */  addiu   $a0, $a0, 0x00E4           ## $a0 = 000000E4
.L80AEC6A0:
/* 01A90 80AEC6A0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AEC6A4:
/* 01A94 80AEC6A4 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01A98 80AEC6A8 03E00008 */  jr      $ra                        
/* 01A9C 80AEC6AC 00000000 */  nop


