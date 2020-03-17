glabel func_80AE561C
/* 0094C 80AE561C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00950 80AE5620 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00954 80AE5624 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00958 80AE5628 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 0095C 80AE562C 3C063E99 */  lui     $a2, 0x3E99                ## $a2 = 3E990000
/* 00960 80AE5630 34C6999A */  ori     $a2, $a2, 0x999A           ## $a2 = 3E99999A
/* 00964 80AE5634 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 00968 80AE5638 24840068 */  addiu   $a0, $a0, 0x0068           ## $a0 = 00000068
/* 0096C 80AE563C 0C01E123 */  jal     Math_SmoothDownscaleMaxF
              
/* 00970 80AE5640 3C053F80 */  lui     $a1, 0x3F80                ## $a1 = 3F800000
/* 00974 80AE5644 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 00978 80AE5648 84EE0272 */  lh      $t6, 0x0272($a3)           ## 00000272
/* 0097C 80AE564C 55C0000B */  bnel    $t6, $zero, .L80AE567C     
/* 00980 80AE5650 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00984 80AE5654 84EF027A */  lh      $t7, 0x027A($a3)           ## 0000027A
/* 00988 80AE5658 3C1980AE */  lui     $t9, %hi(func_80AE5688)    ## $t9 = 80AE0000
/* 0098C 80AE565C 3C1880AE */  lui     $t8, %hi(func_80AE538C)    ## $t8 = 80AE0000
/* 00990 80AE5660 11E00004 */  beq     $t7, $zero, .L80AE5674     
/* 00994 80AE5664 27395688 */  addiu   $t9, $t9, %lo(func_80AE5688) ## $t9 = 80AE5688
/* 00998 80AE5668 2718538C */  addiu   $t8, $t8, %lo(func_80AE538C) ## $t8 = 80AE538C
/* 0099C 80AE566C 10000002 */  beq     $zero, $zero, .L80AE5678   
/* 009A0 80AE5670 ACF8026C */  sw      $t8, 0x026C($a3)           ## 0000026C
.L80AE5674:
/* 009A4 80AE5674 ACF9026C */  sw      $t9, 0x026C($a3)           ## 0000026C
.L80AE5678:
/* 009A8 80AE5678 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AE567C:
/* 009AC 80AE567C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 009B0 80AE5680 03E00008 */  jr      $ra                        
/* 009B4 80AE5684 00000000 */  nop


