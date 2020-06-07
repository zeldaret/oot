glabel func_80AFAE28
/* 00708 80AFAE28 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 0070C 80AFAE2C AFB00030 */  sw      $s0, 0x0030($sp)           
/* 00710 80AFAE30 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00714 80AFAE34 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 00718 80AFAE38 AFA5004C */  sw      $a1, 0x004C($sp)           
/* 0071C 80AFAE3C 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 00720 80AFAE40 248400B6 */  addiu   $a0, $a0, 0x00B6           ## $a0 = 000000B6
/* 00724 80AFAE44 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 00728 80AFAE48 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 0072C 80AFAE4C 24070E38 */  addiu   $a3, $zero, 0x0E38         ## $a3 = 00000E38
/* 00730 80AFAE50 3C0142F0 */  lui     $at, 0x42F0                ## $at = 42F00000
/* 00734 80AFAE54 44813000 */  mtc1    $at, $f6                   ## $f6 = 120.00
/* 00738 80AFAE58 C6040090 */  lwc1    $f4, 0x0090($s0)           ## 00000090
/* 0073C 80AFAE5C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00740 80AFAE60 4606203C */  c.lt.s  $f4, $f6                   
/* 00744 80AFAE64 00000000 */  nop
/* 00748 80AFAE68 45000005 */  bc1f    .L80AFAE80                 
/* 0074C 80AFAE6C 00000000 */  nop
/* 00750 80AFAE70 0C2BEA75 */  jal     func_80AFA9D4              
/* 00754 80AFAE74 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00758 80AFAE78 10000036 */  beq     $zero, $zero, .L80AFAF54   
/* 0075C 80AFAE7C 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L80AFAE80:
/* 00760 80AFAE80 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00764 80AFAE84 AFA40038 */  sw      $a0, 0x0038($sp)           
/* 00768 80AFAE88 10400005 */  beq     $v0, $zero, .L80AFAEA0     
/* 0076C 80AFAE8C 8FA40038 */  lw      $a0, 0x0038($sp)           
/* 00770 80AFAE90 0C2BEA5B */  jal     func_80AFA96C              
/* 00774 80AFAE94 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00778 80AFAE98 1000002E */  beq     $zero, $zero, .L80AFAF54   
/* 0077C 80AFAE9C 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L80AFAEA0:
/* 00780 80AFAEA0 0C0295B2 */  jal     func_800A56C8              
/* 00784 80AFAEA4 3C0540C0 */  lui     $a1, 0x40C0                ## $a1 = 40C00000
/* 00788 80AFAEA8 5040002A */  beql    $v0, $zero, .L80AFAF54     
/* 0078C 80AFAEAC 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 00790 80AFAEB0 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00794 80AFAEB4 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 00798 80AFAEB8 3C0141B8 */  lui     $at, 0x41B8                ## $at = 41B80000
/* 0079C 80AFAEBC 44814000 */  mtc1    $at, $f8                   ## $f8 = 23.00
/* 007A0 80AFAEC0 C6100024 */  lwc1    $f16, 0x0024($s0)          ## 00000024
/* 007A4 80AFAEC4 3C014140 */  lui     $at, 0x4140                ## $at = 41400000
/* 007A8 80AFAEC8 46080282 */  mul.s   $f10, $f0, $f8             
/* 007AC 80AFAECC 44813000 */  mtc1    $at, $f6                   ## $f6 = 12.00
/* 007B0 80AFAED0 46105480 */  add.s   $f18, $f10, $f16           
/* 007B4 80AFAED4 E7B2003C */  swc1    $f18, 0x003C($sp)          
/* 007B8 80AFAED8 C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 007BC 80AFAEDC 46062200 */  add.s   $f8, $f4, $f6              
/* 007C0 80AFAEE0 E7A80040 */  swc1    $f8, 0x0040($sp)           
/* 007C4 80AFAEE4 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 007C8 80AFAEE8 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 007CC 80AFAEEC 3C0141B8 */  lui     $at, 0x41B8                ## $at = 41B80000
/* 007D0 80AFAEF0 44815000 */  mtc1    $at, $f10                  ## $f10 = 23.00
/* 007D4 80AFAEF4 C612002C */  lwc1    $f18, 0x002C($s0)          ## 0000002C
/* 007D8 80AFAEF8 C7A40040 */  lwc1    $f4, 0x0040($sp)           
/* 007DC 80AFAEFC 460A0402 */  mul.s   $f16, $f0, $f10            
/* 007E0 80AFAF00 8FA5004C */  lw      $a1, 0x004C($sp)           
/* 007E4 80AFAF04 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 007E8 80AFAF08 24190002 */  addiu   $t9, $zero, 0x0002         ## $t9 = 00000002
/* 007EC 80AFAF0C 24060193 */  addiu   $a2, $zero, 0x0193         ## $a2 = 00000193
/* 007F0 80AFAF10 8FA7003C */  lw      $a3, 0x003C($sp)           
/* 007F4 80AFAF14 24A41C24 */  addiu   $a0, $a1, 0x1C24           ## $a0 = 00001C24
/* 007F8 80AFAF18 46128080 */  add.s   $f2, $f16, $f18            
/* 007FC 80AFAF1C E7A20014 */  swc1    $f2, 0x0014($sp)           
/* 00800 80AFAF20 860E00B4 */  lh      $t6, 0x00B4($s0)           ## 000000B4
/* 00804 80AFAF24 AFAE0018 */  sw      $t6, 0x0018($sp)           
/* 00808 80AFAF28 860F00B6 */  lh      $t7, 0x00B6($s0)           ## 000000B6
/* 0080C 80AFAF2C AFAF001C */  sw      $t7, 0x001C($sp)           
/* 00810 80AFAF30 861800B8 */  lh      $t8, 0x00B8($s0)           ## 000000B8
/* 00814 80AFAF34 AFB90024 */  sw      $t9, 0x0024($sp)           
/* 00818 80AFAF38 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 0081C 80AFAF3C AFB80020 */  sw      $t8, 0x0020($sp)           
/* 00820 80AFAF40 10400003 */  beq     $v0, $zero, .L80AFAF50     
/* 00824 80AFAF44 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00828 80AFAF48 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 0082C 80AFAF4C 2405387E */  addiu   $a1, $zero, 0x387E         ## $a1 = 0000387E
.L80AFAF50:
/* 00830 80AFAF50 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L80AFAF54:
/* 00834 80AFAF54 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 00838 80AFAF58 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 0083C 80AFAF5C 03E00008 */  jr      $ra                        
/* 00840 80AFAF60 00000000 */  nop
