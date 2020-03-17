glabel func_80AB36DC
/* 0294C 80AB36DC 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 02950 80AB36E0 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 02954 80AB36E4 8DCEFA90 */  lw      $t6, -0x0570($t6)          ## 8015FA90
/* 02958 80AB36E8 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 0295C 80AB36EC AFB00020 */  sw      $s0, 0x0020($sp)           
/* 02960 80AB36F0 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 02964 80AB36F4 85C51476 */  lh      $a1, 0x1476($t6)           ## 80161476
/* 02968 80AB36F8 948202FE */  lhu     $v0, 0x02FE($a0)           ## 000002FE
/* 0296C 80AB36FC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02970 80AB3700 24A50019 */  addiu   $a1, $a1, 0x0019           ## $a1 = 00000019
/* 02974 80AB3704 30A5FFFF */  andi    $a1, $a1, 0xFFFF           ## $a1 = 00000019
/* 02978 80AB3708 24AFFFFC */  addiu   $t7, $a1, 0xFFFC           ## $t7 = 00000015
/* 0297C 80AB370C 31F8FFFF */  andi    $t8, $t7, 0xFFFF           ## $t8 = 00000015
/* 02980 80AB3710 0058082A */  slt     $at, $v0, $t8              
/* 02984 80AB3714 1020000E */  beq     $at, $zero, .L80AB3750     
/* 02988 80AB3718 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
/* 0298C 80AB371C 24190004 */  addiu   $t9, $zero, 0x0004         ## $t9 = 00000004
/* 02990 80AB3720 03223023 */  subu    $a2, $t9, $v0              
/* 02994 80AB3724 00063400 */  sll     $a2, $a2, 16               
/* 02998 80AB3728 00063403 */  sra     $a2, $a2, 16               
/* 0299C 80AB372C 18C00012 */  blez    $a2, .L80AB3778            
/* 029A0 80AB3730 248400B6 */  addiu   $a0, $a0, 0x00B6           ## $a0 = 000000B6
/* 029A4 80AB3734 860502FC */  lh      $a1, 0x02FC($s0)           ## 000002FC
/* 029A8 80AB3738 24080064 */  addiu   $t0, $zero, 0x0064         ## $t0 = 00000064
/* 029AC 80AB373C AFA80010 */  sw      $t0, 0x0010($sp)           
/* 029B0 80AB3740 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 029B4 80AB3744 24071838 */  addiu   $a3, $zero, 0x1838         ## $a3 = 00001838
/* 029B8 80AB3748 1000000C */  beq     $zero, $zero, .L80AB377C   
/* 029BC 80AB374C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AB3750:
/* 029C0 80AB3750 00A33023 */  subu    $a2, $a1, $v1              
/* 029C4 80AB3754 00063400 */  sll     $a2, $a2, 16               
/* 029C8 80AB3758 00063403 */  sra     $a2, $a2, 16               
/* 029CC 80AB375C 18C00006 */  blez    $a2, .L80AB3778            
/* 029D0 80AB3760 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 029D4 80AB3764 86050016 */  lh      $a1, 0x0016($s0)           ## 00000016
/* 029D8 80AB3768 24090064 */  addiu   $t1, $zero, 0x0064         ## $t1 = 00000064
/* 029DC 80AB376C AFA90010 */  sw      $t1, 0x0010($sp)           
/* 029E0 80AB3770 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 029E4 80AB3774 24071838 */  addiu   $a3, $zero, 0x1838         ## $a3 = 00001838
.L80AB3778:
/* 029E8 80AB3778 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AB377C:
/* 029EC 80AB377C 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 029F0 80AB3780 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 029F4 80AB3784 03E00008 */  jr      $ra                        
/* 029F8 80AB3788 00000000 */  nop


