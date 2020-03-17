glabel func_808DC4DC
/* 05C6C 808DC4DC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 05C70 808DC4E0 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 05C74 808DC4E4 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 05C78 808DC4E8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 05C7C 808DC4EC AFA50024 */  sw      $a1, 0x0024($sp)           
/* 05C80 808DC4F0 240E0009 */  addiu   $t6, $zero, 0x0009         ## $t6 = 00000009
/* 05C84 808DC4F4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 05C88 808DC4F8 A08E0624 */  sb      $t6, 0x0624($a0)           ## 00000624
/* 05C8C 808DC4FC 24910150 */  addiu   $s1, $a0, 0x0150           ## $s1 = 00000150
/* 05C90 808DC500 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 05C94 808DC504 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000150
/* 05C98 808DC508 3C038090 */  lui     $v1, %hi(D_808F93C0)       ## $v1 = 80900000
/* 05C9C 808DC50C 246393C0 */  addiu   $v1, $v1, %lo(D_808F93C0)  ## $v1 = 808F93C0
/* 05CA0 808DC510 3C01C110 */  lui     $at, 0xC110                ## $at = C1100000
/* 05CA4 808DC514 44812000 */  mtc1    $at, $f4                   ## $f4 = -9.00
/* 05CA8 808DC518 8C6F0000 */  lw      $t7, 0x0000($v1)           ## 808F93C0
/* 05CAC 808DC51C 3C013E80 */  lui     $at, 0x3E80                ## $at = 3E800000
/* 05CB0 808DC520 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.25
/* 05CB4 808DC524 E5E416B0 */  swc1    $f4, 0x16B0($t7)           ## 000016B0
/* 05CB8 808DC528 8C780000 */  lw      $t8, 0x0000($v1)           ## 808F93C0
/* 05CBC 808DC52C 3C01C000 */  lui     $at, 0xC000                ## $at = C0000000
/* 05CC0 808DC530 44814000 */  mtc1    $at, $f8                   ## $f8 = -2.00
/* 05CC4 808DC534 E70616B4 */  swc1    $f6, 0x16B4($t8)           ## 000016B4
/* 05CC8 808DC538 8C790000 */  lw      $t9, 0x0000($v1)           ## 808F93C0
/* 05CCC 808DC53C 3C014150 */  lui     $at, 0x4150                ## $at = 41500000
/* 05CD0 808DC540 44815000 */  mtc1    $at, $f10                  ## $f10 = 13.00
/* 05CD4 808DC544 E72816B8 */  swc1    $f8, 0x16B8($t9)           ## 000016B8
/* 05CD8 808DC548 8C680000 */  lw      $t0, 0x0000($v1)           ## 808F93C0
/* 05CDC 808DC54C 3C01C150 */  lui     $at, 0xC150                ## $at = C1500000
/* 05CE0 808DC550 E50A16D0 */  swc1    $f10, 0x16D0($t0)          ## 000016D0
/* 05CE4 808DC554 860901C2 */  lh      $t1, 0x01C2($s0)           ## 000001C2
/* 05CE8 808DC558 5520001E */  bnel    $t1, $zero, .L808DC5D4     
/* 05CEC 808DC55C 44813000 */  mtc1    $at, $f6                   ## $f6 = -13.00
/* 05CF0 808DC560 860A01B6 */  lh      $t2, 0x01B6($s0)           ## 000001B6
/* 05CF4 808DC564 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 05CF8 808DC568 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000150
/* 05CFC 808DC56C 15400022 */  bne     $t2, $zero, .L808DC5F8     
/* 05D00 808DC570 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 05D04 808DC574 A60B01C2 */  sh      $t3, 0x01C2($s0)           ## 000001C2
/* 05D08 808DC578 24A5A598 */  addiu   $a1, $a1, 0xA598           ## $a1 = 0600A598
/* 05D0C 808DC57C 0C029490 */  jal     func_800A5240              
/* 05D10 808DC580 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 05D14 808DC584 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 05D18 808DC588 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 05D1C 808DC58C 2484A598 */  addiu   $a0, $a0, 0xA598           ## $a0 = 0600A598
/* 05D20 808DC590 44828000 */  mtc1    $v0, $f16                  ## $f16 = 0.00
/* 05D24 808DC594 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000150
/* 05D28 808DC598 468084A0 */  cvt.s.w $f18, $f16                 
/* 05D2C 808DC59C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 05D30 808DC5A0 E61201CC */  swc1    $f18, 0x01CC($s0)          ## 000001CC
/* 05D34 808DC5A4 3C038090 */  lui     $v1, %hi(D_808F93C0)       ## $v1 = 80900000
/* 05D38 808DC5A8 246393C0 */  addiu   $v1, $v1, %lo(D_808F93C0)  ## $v1 = 808F93C0
/* 05D3C 808DC5AC 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 05D40 808DC5B0 44812000 */  mtc1    $at, $f4                   ## $f4 = 15.00
/* 05D44 808DC5B4 8C6C0000 */  lw      $t4, 0x0000($v1)           ## 808F93C0
/* 05D48 808DC5B8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05D4C 808DC5BC 240528C7 */  addiu   $a1, $zero, 0x28C7         ## $a1 = 000028C7
/* 05D50 808DC5C0 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 05D54 808DC5C4 E58416C4 */  swc1    $f4, 0x16C4($t4)           ## 000016C4
/* 05D58 808DC5C8 1000000C */  beq     $zero, $zero, .L808DC5FC   
/* 05D5C 808DC5CC C6080024 */  lwc1    $f8, 0x0024($s0)           ## 00000024
/* 05D60 808DC5D0 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.00
.L808DC5D4:
/* 05D64 808DC5D4 8C6D0000 */  lw      $t5, 0x0000($v1)           ## 00000000
/* 05D68 808DC5D8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000150
/* 05D6C 808DC5DC E5A616B8 */  swc1    $f6, 0x16B8($t5)           ## 000016B8
/* 05D70 808DC5E0 0C0295B2 */  jal     func_800A56C8              
/* 05D74 808DC5E4 8E0501CC */  lw      $a1, 0x01CC($s0)           ## 000001CC
/* 05D78 808DC5E8 10400003 */  beq     $v0, $zero, .L808DC5F8     
/* 05D7C 808DC5EC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05D80 808DC5F0 0C236EBC */  jal     func_808DBAF0              
/* 05D84 808DC5F4 8FA50024 */  lw      $a1, 0x0024($sp)           
.L808DC5F8:
/* 05D88 808DC5F8 C6080024 */  lwc1    $f8, 0x0024($s0)           ## 00000024
.L808DC5FC:
/* 05D8C 808DC5FC C60A005C */  lwc1    $f10, 0x005C($s0)          ## 0000005C
/* 05D90 808DC600 C6120028 */  lwc1    $f18, 0x0028($s0)          ## 00000028
/* 05D94 808DC604 C6040060 */  lwc1    $f4, 0x0060($s0)           ## 00000060
/* 05D98 808DC608 460A4400 */  add.s   $f16, $f8, $f10            
/* 05D9C 808DC60C C60A0064 */  lwc1    $f10, 0x0064($s0)          ## 00000064
/* 05DA0 808DC610 C608002C */  lwc1    $f8, 0x002C($s0)           ## 0000002C
/* 05DA4 808DC614 46049180 */  add.s   $f6, $f18, $f4             
/* 05DA8 808DC618 E6100024 */  swc1    $f16, 0x0024($s0)          ## 00000024
/* 05DAC 808DC61C 2604005C */  addiu   $a0, $s0, 0x005C           ## $a0 = 0000005C
/* 05DB0 808DC620 460A4400 */  add.s   $f16, $f8, $f10            
/* 05DB4 808DC624 E6060028 */  swc1    $f6, 0x0028($s0)           ## 00000028
/* 05DB8 808DC628 3C053F80 */  lui     $a1, 0x3F80                ## $a1 = 3F800000
/* 05DBC 808DC62C 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 05DC0 808DC630 0C01E123 */  jal     Math_SmoothDownscaleMaxF
              
/* 05DC4 808DC634 E610002C */  swc1    $f16, 0x002C($s0)          ## 0000002C
/* 05DC8 808DC638 26040060 */  addiu   $a0, $s0, 0x0060           ## $a0 = 00000060
/* 05DCC 808DC63C 3C053F80 */  lui     $a1, 0x3F80                ## $a1 = 3F800000
/* 05DD0 808DC640 0C01E123 */  jal     Math_SmoothDownscaleMaxF
              
/* 05DD4 808DC644 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 05DD8 808DC648 26040064 */  addiu   $a0, $s0, 0x0064           ## $a0 = 00000064
/* 05DDC 808DC64C 3C053F80 */  lui     $a1, 0x3F80                ## $a1 = 3F800000
/* 05DE0 808DC650 0C01E123 */  jal     Math_SmoothDownscaleMaxF
              
/* 05DE4 808DC654 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 05DE8 808DC658 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 05DEC 808DC65C 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 05DF0 808DC660 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 05DF4 808DC664 03E00008 */  jr      $ra                        
/* 05DF8 808DC668 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000


