glabel func_80AEF40C
/* 047FC 80AEF40C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 04800 80AEF410 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 04804 80AEF414 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 04808 80AEF418 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 0480C 80AEF41C 2490014C */  addiu   $s0, $a0, 0x014C           ## $s0 = 0000014C
/* 04810 80AEF420 02002025 */  or      $a0, $s0, $zero            ## $a0 = 0000014C
/* 04814 80AEF424 0C0295B2 */  jal     func_800A56C8              
/* 04818 80AEF428 3C054000 */  lui     $a1, 0x4000                ## $a1 = 40000000
/* 0481C 80AEF42C 14400015 */  bne     $v0, $zero, .L80AEF484     
/* 04820 80AEF430 02002025 */  or      $a0, $s0, $zero            ## $a0 = 0000014C
/* 04824 80AEF434 0C0295B2 */  jal     func_800A56C8              
/* 04828 80AEF438 3C0540E0 */  lui     $a1, 0x40E0                ## $a1 = 40E00000
/* 0482C 80AEF43C 14400011 */  bne     $v0, $zero, .L80AEF484     
/* 04830 80AEF440 02002025 */  or      $a0, $s0, $zero            ## $a0 = 0000014C
/* 04834 80AEF444 0C0295B2 */  jal     func_800A56C8              
/* 04838 80AEF448 3C054140 */  lui     $a1, 0x4140                ## $a1 = 41400000
/* 0483C 80AEF44C 1440000D */  bne     $v0, $zero, .L80AEF484     
/* 04840 80AEF450 02002025 */  or      $a0, $s0, $zero            ## $a0 = 0000014C
/* 04844 80AEF454 0C0295B2 */  jal     func_800A56C8              
/* 04848 80AEF458 3C054190 */  lui     $a1, 0x4190                ## $a1 = 41900000
/* 0484C 80AEF45C 14400009 */  bne     $v0, $zero, .L80AEF484     
/* 04850 80AEF460 02002025 */  or      $a0, $s0, $zero            ## $a0 = 0000014C
/* 04854 80AEF464 0C0295B2 */  jal     func_800A56C8              
/* 04858 80AEF468 3C0541C8 */  lui     $a1, 0x41C8                ## $a1 = 41C80000
/* 0485C 80AEF46C 14400005 */  bne     $v0, $zero, .L80AEF484     
/* 04860 80AEF470 02002025 */  or      $a0, $s0, $zero            ## $a0 = 0000014C
/* 04864 80AEF474 0C0295B2 */  jal     func_800A56C8              
/* 04868 80AEF478 3C054204 */  lui     $a1, 0x4204                ## $a1 = 42040000
/* 0486C 80AEF47C 50400006 */  beql    $v0, $zero, .L80AEF498     
/* 04870 80AEF480 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AEF484:
/* 04874 80AEF484 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 04878 80AEF488 24050803 */  addiu   $a1, $zero, 0x0803         ## $a1 = 00000803
/* 0487C 80AEF48C 0C01E245 */  jal     func_80078914              
/* 04880 80AEF490 248400E4 */  addiu   $a0, $a0, 0x00E4           ## $a0 = 000000E4
/* 04884 80AEF494 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AEF498:
/* 04888 80AEF498 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0488C 80AEF49C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 04890 80AEF4A0 03E00008 */  jr      $ra                        
/* 04894 80AEF4A4 00000000 */  nop
