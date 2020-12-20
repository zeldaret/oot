.late_rodata
glabel D_80A171E4
    .float 0.1

glabel D_80A171E8
    .float 0.4

.text
glabel func_80A16898
/* 01618 80A16898 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 0161C 80A1689C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01620 80A168A0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01624 80A168A4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01628 80A168A8 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 0162C 80A168AC 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 01630 80A168B0 8484024C */  lh      $a0, 0x024C($a0)           ## 0000024C
/* 01634 80A168B4 E7A00024 */  swc1    $f0, 0x0024($sp)           
/* 01638 80A168B8 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 0163C 80A168BC 8604024E */  lh      $a0, 0x024E($s0)           ## 0000024E
/* 01640 80A168C0 3C0280A1 */  lui     $v0, %hi(D_80A17014)       ## $v0 = 80A10000
/* 01644 80A168C4 3C0380A1 */  lui     $v1, %hi(D_80A17018)       ## $v1 = 80A10000
/* 01648 80A168C8 24637018 */  addiu   $v1, $v1, %lo(D_80A17018)  ## $v1 = 80A17018
/* 0164C 80A168CC 24427014 */  addiu   $v0, $v0, %lo(D_80A17014)  ## $v0 = 80A17014
/* 01650 80A168D0 C4440000 */  lwc1    $f4, 0x0000($v0)           ## 80A17014
/* 01654 80A168D4 C4620000 */  lwc1    $f2, 0x0000($v1)           ## 80A17018
/* 01658 80A168D8 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0165C 80A168DC 44816000 */  mtc1    $at, $f12                  ## $f12 = 1.00
/* 01660 80A168E0 46022180 */  add.s   $f6, $f4, $f2              
/* 01664 80A168E4 E7A00020 */  swc1    $f0, 0x0020($sp)           
/* 01668 80A168E8 3C0180A1 */  lui     $at, %hi(D_80A171E8)       ## $at = 80A10000
/* 0166C 80A168EC E4460000 */  swc1    $f6, 0x0000($v0)           ## 80A17014
/* 01670 80A168F0 C4480000 */  lwc1    $f8, 0x0000($v0)           ## 80A17014
/* 01674 80A168F4 460C403E */  c.le.s  $f8, $f12                  
/* 01678 80A168F8 00000000 */  nop
/* 0167C 80A168FC 4500001E */  bc1f    .L80A16978                 
/* 01680 80A16900 00000000 */  nop
/* 01684 80A16904 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 01688 80A16908 E44C0000 */  swc1    $f12, 0x0000($v0)          ## 80A17014
/* 0168C 80A1690C 3C0180A1 */  lui     $at, %hi(D_80A171E4)       ## $at = 80A10000
/* 01690 80A16910 C42A71E4 */  lwc1    $f10, %lo(D_80A171E4)($at) 
/* 01694 80A16914 3C0380A1 */  lui     $v1, %hi(D_80A17018)       ## $v1 = 80A10000
/* 01698 80A16918 24637018 */  addiu   $v1, $v1, %lo(D_80A17018)  ## $v1 = 80A17018
/* 0169C 80A1691C 460A003C */  c.lt.s  $f0, $f10                  
/* 016A0 80A16920 00000000 */  nop
/* 016A4 80A16924 45020012 */  bc1fl   .L80A16970                 
/* 016A8 80A16928 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 016AC 80A1692C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 016B0 80A16930 00000000 */  nop
/* 016B4 80A16934 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 016B8 80A16938 44818000 */  mtc1    $at, $f16                  ## $f16 = 3.00
/* 016BC 80A1693C 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 016C0 80A16940 44812000 */  mtc1    $at, $f4                   ## $f4 = 2.00
/* 016C4 80A16944 46100482 */  mul.s   $f18, $f0, $f16            
/* 016C8 80A16948 3C0380A1 */  lui     $v1, %hi(D_80A17018)       ## $v1 = 80A10000
/* 016CC 80A1694C 24637018 */  addiu   $v1, $v1, %lo(D_80A17018)  ## $v1 = 80A17018
/* 016D0 80A16950 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 016D4 80A16954 24052869 */  addiu   $a1, $zero, 0x2869         ## $a1 = 00002869
/* 016D8 80A16958 46049180 */  add.s   $f6, $f18, $f4             
/* 016DC 80A1695C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 016E0 80A16960 E4660000 */  swc1    $f6, 0x0000($v1)           ## 80A17018
/* 016E4 80A16964 10000008 */  beq     $zero, $zero, .L80A16988   
/* 016E8 80A16968 C7B20024 */  lwc1    $f18, 0x0024($sp)          
/* 016EC 80A1696C 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
.L80A16970:
/* 016F0 80A16970 10000004 */  beq     $zero, $zero, .L80A16984   
/* 016F4 80A16974 E4680000 */  swc1    $f8, 0x0000($v1)           ## 00000000
.L80A16978:
/* 016F8 80A16978 C42A71E8 */  lwc1    $f10, %lo(D_80A171E8)($at) 
/* 016FC 80A1697C 460A1401 */  sub.s   $f16, $f2, $f10            
/* 01700 80A16980 E4700000 */  swc1    $f16, 0x0000($v1)          ## 00000000
.L80A16984:
/* 01704 80A16984 C7B20024 */  lwc1    $f18, 0x0024($sp)          
.L80A16988:
/* 01708 80A16988 C7A40020 */  lwc1    $f4, 0x0020($sp)           
/* 0170C 80A1698C 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 01710 80A16990 44814000 */  mtc1    $at, $f8                   ## $f8 = 0.50
/* 01714 80A16994 46049180 */  add.s   $f6, $f18, $f4             
/* 01718 80A16998 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 0171C 80A1699C 44818000 */  mtc1    $at, $f16                  ## $f16 = 2.00
/* 01720 80A169A0 260401AC */  addiu   $a0, $s0, 0x01AC           ## $a0 = 000001AC
/* 01724 80A169A4 46083282 */  mul.s   $f10, $f6, $f8             
/* 01728 80A169A8 46105480 */  add.s   $f18, $f10, $f16           
/* 0172C 80A169AC 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 01730 80A169B0 E61201C8 */  swc1    $f18, 0x01C8($s0)          ## 000001C8
/* 01734 80A169B4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01738 80A169B8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0173C 80A169BC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01740 80A169C0 03E00008 */  jr      $ra                        
/* 01744 80A169C4 00000000 */  nop
