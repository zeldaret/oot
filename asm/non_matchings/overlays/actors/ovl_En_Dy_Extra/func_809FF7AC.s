glabel func_809FF7AC
/* 000BC 809FF7AC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 000C0 809FF7B0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 000C4 809FF7B4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 000C8 809FF7B8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 000CC 809FF7BC AFA50024 */  sw      $a1, 0x0024($sp)           
/* 000D0 809FF7C0 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 000D4 809FF7C4 3C073BA3 */  lui     $a3, 0x3BA3                ## $a3 = 3BA30000
/* 000D8 809FF7C8 34E7D70A */  ori     $a3, $a3, 0xD70A           ## $a3 = 3BA3D70A
/* 000DC 809FF7CC 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 000E0 809FF7D0 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 000E4 809FF7D4 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 000E8 809FF7D8 2484006C */  addiu   $a0, $a0, 0x006C           ## $a0 = 0000006C
/* 000EC 809FF7DC 3C01C25C */  lui     $at, 0xC25C                ## $at = C25C0000
/* 000F0 809FF7E0 44813000 */  mtc1    $at, $f6                   ## $f6 = -55.00
/* 000F4 809FF7E4 C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 000F8 809FF7E8 4606203C */  c.lt.s  $f4, $f6                   
/* 000FC 809FF7EC 00000000 */  nop
/* 00100 809FF7F0 45020005 */  bc1fl   .L809FF808                 
/* 00104 809FF7F4 860E0154 */  lh      $t6, 0x0154($s0)           ## 00000154
/* 00108 809FF7F8 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 0010C 809FF7FC 00000000 */  nop
/* 00110 809FF800 E6080060 */  swc1    $f8, 0x0060($s0)           ## 00000060
/* 00114 809FF804 860E0154 */  lh      $t6, 0x0154($s0)           ## 00000154
.L809FF808:
/* 00118 809FF808 55C00009 */  bnel    $t6, $zero, .L809FF830     
/* 0011C 809FF80C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00120 809FF810 860F0152 */  lh      $t7, 0x0152($s0)           ## 00000152
/* 00124 809FF814 3C1980A0 */  lui     $t9, %hi(func_809FF840)    ## $t9 = 80A00000
/* 00128 809FF818 241800C8 */  addiu   $t8, $zero, 0x00C8         ## $t8 = 000000C8
/* 0012C 809FF81C 11E00003 */  beq     $t7, $zero, .L809FF82C     
/* 00130 809FF820 2739F840 */  addiu   $t9, $t9, %lo(func_809FF840) ## $t9 = 809FF840
/* 00134 809FF824 A6180154 */  sh      $t8, 0x0154($s0)           ## 00000154
/* 00138 809FF828 AE19014C */  sw      $t9, 0x014C($s0)           ## 0000014C
.L809FF82C:
/* 0013C 809FF82C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809FF830:
/* 00140 809FF830 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00144 809FF834 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00148 809FF838 03E00008 */  jr      $ra                        
/* 0014C 809FF83C 00000000 */  nop


