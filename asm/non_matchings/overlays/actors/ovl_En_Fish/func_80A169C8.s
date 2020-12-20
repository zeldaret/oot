glabel func_80A169C8
/* 01748 80A169C8 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 0174C 80A169CC AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01750 80A169D0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01754 80A169D4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01758 80A169D8 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 0175C 80A169DC 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 01760 80A169E0 8484024C */  lh      $a0, 0x024C($a0)           ## 0000024C
/* 01764 80A169E4 E7A00028 */  swc1    $f0, 0x0028($sp)           
/* 01768 80A169E8 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 0176C 80A169EC 8604024E */  lh      $a0, 0x024E($s0)           ## 0000024E
/* 01770 80A169F0 E7A00024 */  swc1    $f0, 0x0024($sp)           
/* 01774 80A169F4 860E00B4 */  lh      $t6, 0x00B4($s0)           ## 000000B4
/* 01778 80A169F8 861800B8 */  lh      $t8, 0x00B8($s0)           ## 000000B8
/* 0177C 80A169FC 3C0480A1 */  lui     $a0, %hi(D_80A17014)       ## $a0 = 80A10000
/* 01780 80A16A00 25CFFE0C */  addiu   $t7, $t6, 0xFE0C           ## $t7 = FFFFFE0C
/* 01784 80A16A04 27190064 */  addiu   $t9, $t8, 0x0064           ## $t9 = 00000064
/* 01788 80A16A08 A60F00B4 */  sh      $t7, 0x00B4($s0)           ## 000000B4
/* 0178C 80A16A0C A61900B8 */  sh      $t9, 0x00B8($s0)           ## 000000B8
/* 01790 80A16A10 24847014 */  addiu   $a0, $a0, %lo(D_80A17014)  ## $a0 = 80A17014
/* 01794 80A16A14 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 01798 80A16A18 0C01DE80 */  jal     Math_ApproxF
              
/* 0179C 80A16A1C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 017A0 80A16A20 C7A40028 */  lwc1    $f4, 0x0028($sp)           
/* 017A4 80A16A24 C7A60024 */  lwc1    $f6, 0x0024($sp)           
/* 017A8 80A16A28 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 017AC 80A16A2C 44815000 */  mtc1    $at, $f10                  ## $f10 = 0.50
/* 017B0 80A16A30 46062200 */  add.s   $f8, $f4, $f6              
/* 017B4 80A16A34 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 017B8 80A16A38 44819000 */  mtc1    $at, $f18                  ## $f18 = 2.00
/* 017BC 80A16A3C 260401AC */  addiu   $a0, $s0, 0x01AC           ## $a0 = 000001AC
/* 017C0 80A16A40 460A4402 */  mul.s   $f16, $f8, $f10            
/* 017C4 80A16A44 46128100 */  add.s   $f4, $f16, $f18            
/* 017C8 80A16A48 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 017CC 80A16A4C E60401C8 */  swc1    $f4, 0x01C8($s0)           ## 000001C8
/* 017D0 80A16A50 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 017D4 80A16A54 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 017D8 80A16A58 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 017DC 80A16A5C 03E00008 */  jr      $ra                        
/* 017E0 80A16A60 00000000 */  nop
