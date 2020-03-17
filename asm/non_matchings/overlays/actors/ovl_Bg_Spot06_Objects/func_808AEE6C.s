glabel func_808AEE6C
/* 006EC 808AEE6C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 006F0 808AEE70 3C0F0001 */  lui     $t7, 0x0001                ## $t7 = 00010000
/* 006F4 808AEE74 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 006F8 808AEE78 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 006FC 808AEE7C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00700 808AEE80 01E57821 */  addu    $t7, $t7, $a1              
/* 00704 808AEE84 8DEF1DE4 */  lw      $t7, 0x1DE4($t7)           ## 00011DE4
/* 00708 808AEE88 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 0070C 808AEE8C 01E1001B */  divu    $zero, $t7, $at            
/* 00710 808AEE90 0000C010 */  mfhi    $t8                        
/* 00714 808AEE94 13000003 */  beq     $t8, $zero, .L808AEEA4     
/* 00718 808AEE98 00000000 */  nop
/* 0071C 808AEE9C 50C00014 */  beql    $a2, $zero, .L808AEEF0     
/* 00720 808AEEA0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808AEEA4:
/* 00724 808AEEA4 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00728 808AEEA8 00000000 */  nop
/* 0072C 808AEEAC 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 00730 808AEEB0 44812000 */  mtc1    $at, $f4                   ## $f4 = 30.00
/* 00734 808AEEB4 3C01808B */  lui     $at, %hi(D_808AFA04)       ## $at = 808B0000
/* 00738 808AEEB8 C426FA04 */  lwc1    $f6, %lo(D_808AFA04)($at)  
/* 0073C 808AEEBC 3C01808B */  lui     $at, %hi(D_808AFA08)       ## $at = 808B0000
/* 00740 808AEEC0 C42AFA08 */  lwc1    $f10, %lo(D_808AFA08)($at) 
/* 00744 808AEEC4 46060202 */  mul.s   $f8, $f0, $f6              
/* 00748 808AEEC8 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 0074C 808AEECC 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00750 808AEED0 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 00754 808AEED4 3C074220 */  lui     $a3, 0x4220                ## $a3 = 42200000
/* 00758 808AEED8 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 0075C 808AEEDC 24A50024 */  addiu   $a1, $a1, 0x0024           ## $a1 = 00000024
/* 00760 808AEEE0 460A4400 */  add.s   $f16, $f8, $f10            
/* 00764 808AEEE4 0C00A4F9 */  jal     func_800293E4              
/* 00768 808AEEE8 E7B00014 */  swc1    $f16, 0x0014($sp)          
/* 0076C 808AEEEC 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808AEEF0:
/* 00770 808AEEF0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00774 808AEEF4 03E00008 */  jr      $ra                        
/* 00778 808AEEF8 00000000 */  nop


