glabel func_80B2DCC8
/* 00868 80B2DCC8 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 0086C 80B2DCCC AFB00028 */  sw      $s0, 0x0028($sp)           
/* 00870 80B2DCD0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00874 80B2DCD4 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00878 80B2DCD8 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 0087C 80B2DCDC 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 00880 80B2DCE0 24840068 */  addiu   $a0, $a0, 0x0068           ## $a0 = 06000068
/* 00884 80B2DCE4 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00888 80B2DCE8 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 0088C 80B2DCEC 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00890 80B2DCF0 46802120 */  cvt.s.w $f4, $f4                   
/* 00894 80B2DCF4 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 00898 80B2DCF8 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 0089C 80B2DCFC 24A50068 */  addiu   $a1, $a1, 0x0068           ## $a1 = 06000068
/* 008A0 80B2DD00 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 008A4 80B2DD04 3C06BF80 */  lui     $a2, 0xBF80                ## $a2 = BF800000
/* 008A8 80B2DD08 44072000 */  mfc1    $a3, $f4                   
/* 008AC 80B2DD0C E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 008B0 80B2DD10 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 008B4 80B2DD14 E7A00018 */  swc1    $f0, 0x0018($sp)           
/* 008B8 80B2DD18 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 008BC 80B2DD1C A6000260 */  sh      $zero, 0x0260($s0)         ## 00000260
/* 008C0 80B2DD20 86180260 */  lh      $t8, 0x0260($s0)           ## 00000260
/* 008C4 80B2DD24 240F00B4 */  addiu   $t7, $zero, 0x00B4         ## $t7 = 000000B4
/* 008C8 80B2DD28 24190002 */  addiu   $t9, $zero, 0x0002         ## $t9 = 00000002
/* 008CC 80B2DD2C AE0F0220 */  sw      $t7, 0x0220($s0)           ## 00000220
/* 008D0 80B2DD30 AE19021C */  sw      $t9, 0x021C($s0)           ## 0000021C
/* 008D4 80B2DD34 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 008D8 80B2DD38 2405389E */  addiu   $a1, $zero, 0x389E         ## $a1 = 0000389E
/* 008DC 80B2DD3C E6000250 */  swc1    $f0, 0x0250($s0)           ## 00000250
/* 008E0 80B2DD40 E600024C */  swc1    $f0, 0x024C($s0)           ## 0000024C
/* 008E4 80B2DD44 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 008E8 80B2DD48 A618025E */  sh      $t8, 0x025E($s0)           ## 0000025E
/* 008EC 80B2DD4C 3C0580B3 */  lui     $a1, %hi(func_80B2DD70)    ## $a1 = 80B30000
/* 008F0 80B2DD50 24A5DD70 */  addiu   $a1, $a1, %lo(func_80B2DD70) ## $a1 = 80B2DD70
/* 008F4 80B2DD54 0C2CB518 */  jal     func_80B2D460              
/* 008F8 80B2DD58 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 008FC 80B2DD5C 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00900 80B2DD60 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 00904 80B2DD64 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00908 80B2DD68 03E00008 */  jr      $ra                        
/* 0090C 80B2DD6C 00000000 */  nop


