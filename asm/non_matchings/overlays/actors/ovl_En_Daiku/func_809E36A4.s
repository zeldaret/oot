glabel func_809E36A4
/* 00B74 809E36A4 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00B78 809E36A8 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00B7C 809E36AC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00B80 809E36B0 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00B84 809E36B4 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00B88 809E36B8 86050208 */  lh      $a1, 0x0208($s0)           ## 00000208
/* 00B8C 809E36BC AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00B90 809E36C0 248400B6 */  addiu   $a0, $a0, 0x00B6           ## $a0 = 000000B6
/* 00B94 809E36C4 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 00B98 809E36C8 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00B9C 809E36CC 24071388 */  addiu   $a3, $zero, 0x1388         ## $a3 = 00001388
/* 00BA0 809E36D0 A7A2002E */  sh      $v0, 0x002E($sp)           
/* 00BA4 809E36D4 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00BA8 809E36D8 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00BAC 809E36DC 87AE002E */  lh      $t6, 0x002E($sp)           
/* 00BB0 809E36E0 3C02809E */  lui     $v0, %hi(func_809E3A8C)    ## $v0 = 809E0000
/* 00BB4 809E36E4 24423A8C */  addiu   $v0, $v0, %lo(func_809E3A8C) ## $v0 = 809E3A8C
/* 00BB8 809E36E8 15C00004 */  bne     $t6, $zero, .L809E36FC     
/* 00BBC 809E36EC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00BC0 809E36F0 AE020190 */  sw      $v0, 0x0190($s0)           ## 00000190
/* 00BC4 809E36F4 0040F809 */  jalr    $ra, $v0                   
/* 00BC8 809E36F8 8FA50034 */  lw      $a1, 0x0034($sp)           
.L809E36FC:
/* 00BCC 809E36FC 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00BD0 809E3700 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00BD4 809E3704 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00BD8 809E3708 03E00008 */  jr      $ra                        
/* 00BDC 809E370C 00000000 */  nop
