glabel func_80B9A668
/* 00728 80B9A668 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0072C 80B9A66C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00730 80B9A670 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00734 80B9A674 C48E00EC */  lwc1    $f14, 0x00EC($a0)          ## 000000EC
/* 00738 80B9A678 C48C00E4 */  lwc1    $f12, 0x00E4($a0)          ## 000000E4
/* 0073C 80B9A67C 0C032D57 */  jal     func_800CB55C              
/* 00740 80B9A680 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00744 80B9A684 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00748 80B9A688 3C0180BA */  lui     $at, %hi(D_80B9A800)       ## $at = 80BA0000
/* 0074C 80B9A68C 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 00750 80B9A690 C4860184 */  lwc1    $f6, 0x0184($a0)           ## 00000184
/* 00754 80B9A694 31CF0003 */  andi    $t7, $t6, 0x0003           ## $t7 = 00000000
/* 00758 80B9A698 000FC080 */  sll     $t8, $t7,  2               
/* 0075C 80B9A69C 00380821 */  addu    $at, $at, $t8              
/* 00760 80B9A6A0 C424A800 */  lwc1    $f4, %lo(D_80B9A800)($at)  
/* 00764 80B9A6A4 46062202 */  mul.s   $f8, $f4, $f6              
/* 00768 80B9A6A8 4608003C */  c.lt.s  $f0, $f8                   
/* 0076C 80B9A6AC 00000000 */  nop
/* 00770 80B9A6B0 4502000A */  bc1fl   .L80B9A6DC                 
/* 00774 80B9A6B4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00778 80B9A6B8 8C990004 */  lw      $t9, 0x0004($a0)           ## 00000004
/* 0077C 80B9A6BC 37280010 */  ori     $t0, $t9, 0x0010           ## $t0 = 00000010
/* 00780 80B9A6C0 AC880004 */  sw      $t0, 0x0004($a0)           ## 00000004
/* 00784 80B9A6C4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00788 80B9A6C8 0C2E68AC */  jal     func_80B9A2B0              
/* 0078C 80B9A6CC 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00790 80B9A6D0 0C2E69BA */  jal     func_80B9A6E8              
/* 00794 80B9A6D4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00798 80B9A6D8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B9A6DC:
/* 0079C 80B9A6DC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 007A0 80B9A6E0 03E00008 */  jr      $ra                        
/* 007A4 80B9A6E4 00000000 */  nop
