glabel func_80AE9C88
/* 01848 80AE9C88 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 0184C 80AE9C8C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01850 80AE9C90 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 01854 80AE9C94 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 01858 80AE9C98 848E01EA */  lh      $t6, 0x01EA($a0)           ## 000001EA
/* 0185C 80AE9C9C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01860 80AE9CA0 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 01864 80AE9CA4 15C00006 */  bne     $t6, $zero, .L80AE9CC0     
/* 01868 80AE9CA8 2406000A */  addiu   $a2, $zero, 0x000A         ## $a2 = 0000000A
/* 0186C 80AE9CAC 3C0F80AF */  lui     $t7, %hi(func_80AE95B0)    ## $t7 = 80AF0000
/* 01870 80AE9CB0 25EF95B0 */  addiu   $t7, $t7, %lo(func_80AE95B0) ## $t7 = 80AE95B0
/* 01874 80AE9CB4 A0800375 */  sb      $zero, 0x0375($a0)         ## 00000375
/* 01878 80AE9CB8 10000013 */  beq     $zero, $zero, .L80AE9D08   
/* 0187C 80AE9CBC AC8F014C */  sw      $t7, 0x014C($a0)           ## 0000014C
.L80AE9CC0:
/* 01880 80AE9CC0 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 01884 80AE9CC4 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 01888 80AE9CC8 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 0188C 80AE9CCC 00A12821 */  addu    $a1, $a1, $at              
/* 01890 80AE9CD0 00052C00 */  sll     $a1, $a1, 16               
/* 01894 80AE9CD4 00052C03 */  sra     $a1, $a1, 16               
/* 01898 80AE9CD8 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 0189C 80AE9CDC 240703E8 */  addiu   $a3, $zero, 0x03E8         ## $a3 = 000003E8
/* 018A0 80AE9CE0 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 018A4 80AE9CE4 C6060068 */  lwc1    $f6, 0x0068($s0)           ## 00000068
/* 018A8 80AE9CE8 861800B6 */  lh      $t8, 0x00B6($s0)           ## 000000B6
/* 018AC 80AE9CEC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 018B0 80AE9CF0 46062032 */  c.eq.s  $f4, $f6                   
/* 018B4 80AE9CF4 A6180032 */  sh      $t8, 0x0032($s0)           ## 00000032
/* 018B8 80AE9CF8 45020004 */  bc1fl   .L80AE9D0C                 
/* 018BC 80AE9CFC 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 018C0 80AE9D00 0C2BA187 */  jal     func_80AE861C              
/* 018C4 80AE9D04 3C054000 */  lui     $a1, 0x4000                ## $a1 = 40000000
.L80AE9D08:
/* 018C8 80AE9D08 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AE9D0C:
/* 018CC 80AE9D0C 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 018D0 80AE9D10 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 018D4 80AE9D14 03E00008 */  jr      $ra                        
/* 018D8 80AE9D18 00000000 */  nop


