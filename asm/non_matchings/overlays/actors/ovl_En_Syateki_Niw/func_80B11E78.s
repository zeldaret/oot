.late_rodata
glabel D_80B137CC
 .word 0x407F5C29
glabel D_80B137D0
 .word 0x4622F983
glabel D_80B137D4
    .float 0.2
    .balign 4

.text
glabel func_80B11E78
/* 00588 80B11E78 27BDFF78 */  addiu   $sp, $sp, 0xFF78           ## $sp = FFFFFF78
/* 0058C 80B11E7C 3C0F80B1 */  lui     $t7, %hi(D_80B13698)       ## $t7 = 80B10000
/* 00590 80B11E80 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 00594 80B11E84 AFB00030 */  sw      $s0, 0x0030($sp)           
/* 00598 80B11E88 AFA5008C */  sw      $a1, 0x008C($sp)           
/* 0059C 80B11E8C 25EF3698 */  addiu   $t7, $t7, %lo(D_80B13698)  ## $t7 = 80B13698
/* 005A0 80B11E90 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80B13698
/* 005A4 80B11E94 27AE007C */  addiu   $t6, $sp, 0x007C           ## $t6 = FFFFFFF4
/* 005A8 80B11E98 8DF80004 */  lw      $t8, 0x0004($t7)           ## 80B1369C
/* 005AC 80B11E9C ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFF4
/* 005B0 80B11EA0 8DF90008 */  lw      $t9, 0x0008($t7)           ## 80B136A0
/* 005B4 80B11EA4 3C0980B1 */  lui     $t1, %hi(D_80B136A4)       ## $t1 = 80B10000
/* 005B8 80B11EA8 252936A4 */  addiu   $t1, $t1, %lo(D_80B136A4)  ## $t1 = 80B136A4
/* 005BC 80B11EAC ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFF8
/* 005C0 80B11EB0 ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFFC
/* 005C4 80B11EB4 8D2B0000 */  lw      $t3, 0x0000($t1)           ## 80B136A4
/* 005C8 80B11EB8 27A80070 */  addiu   $t0, $sp, 0x0070           ## $t0 = FFFFFFE8
/* 005CC 80B11EBC 8D2A0004 */  lw      $t2, 0x0004($t1)           ## 80B136A8
/* 005D0 80B11EC0 AD0B0000 */  sw      $t3, 0x0000($t0)           ## FFFFFFE8
/* 005D4 80B11EC4 8D2B0008 */  lw      $t3, 0x0008($t1)           ## 80B136AC
/* 005D8 80B11EC8 AD0A0004 */  sw      $t2, 0x0004($t0)           ## FFFFFFEC
/* 005DC 80B11ECC 3C0C80B1 */  lui     $t4, %hi(D_80B136B0)       ## $t4 = 80B10000
/* 005E0 80B11ED0 AD0B0008 */  sw      $t3, 0x0008($t0)           ## FFFFFFF0
/* 005E4 80B11ED4 3C0D80B1 */  lui     $t5, %hi(D_80B136B4)       ## $t5 = 80B10000
/* 005E8 80B11ED8 8D8C36B0 */  lw      $t4, %lo(D_80B136B0)($t4)  
/* 005EC 80B11EDC 8DAD36B4 */  lw      $t5, %lo(D_80B136B4)($t5)  
/* 005F0 80B11EE0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 005F4 80B11EE4 AFAC006C */  sw      $t4, 0x006C($sp)           
/* 005F8 80B11EE8 AFAD0068 */  sw      $t5, 0x0068($sp)           
/* 005FC 80B11EEC 848E029C */  lh      $t6, 0x029C($a0)           ## 0000029C
/* 00600 80B11EF0 51C0000E */  beql    $t6, $zero, .L80B11F2C     
/* 00604 80B11EF4 A7A0004A */  sh      $zero, 0x004A($sp)         
/* 00608 80B11EF8 848F029E */  lh      $t7, 0x029E($a0)           ## 0000029E
/* 0060C 80B11EFC 55E0000B */  bnel    $t7, $zero, .L80B11F2C     
/* 00610 80B11F00 A7A0004A */  sh      $zero, 0x004A($sp)         
/* 00614 80B11F04 94980088 */  lhu     $t8, 0x0088($a0)           ## 00000088
/* 00618 80B11F08 3C0880B1 */  lui     $t0, %hi(func_80B123A8)    ## $t0 = 80B10000
/* 0061C 80B11F0C 250823A8 */  addiu   $t0, $t0, %lo(func_80B123A8) ## $t0 = 80B123A8
/* 00620 80B11F10 33190001 */  andi    $t9, $t8, 0x0001           ## $t9 = 00000000
/* 00624 80B11F14 53200005 */  beql    $t9, $zero, .L80B11F2C     
/* 00628 80B11F18 A7A0004A */  sh      $zero, 0x004A($sp)         
/* 0062C 80B11F1C A480029C */  sh      $zero, 0x029C($a0)         ## 0000029C
/* 00630 80B11F20 1000011C */  beq     $zero, $zero, .L80B12394   
/* 00634 80B11F24 AC880250 */  sw      $t0, 0x0250($a0)           ## 00000250
/* 00638 80B11F28 A7A0004A */  sh      $zero, 0x004A($sp)         
.L80B11F2C:
/* 0063C 80B11F2C 8609025E */  lh      $t1, 0x025E($s0)           ## 0000025E
/* 00640 80B11F30 5520009F */  bnel    $t1, $zero, .L80B121B0     
/* 00644 80B11F34 860D025C */  lh      $t5, 0x025C($s0)           ## 0000025C
/* 00648 80B11F38 860A025C */  lh      $t2, 0x025C($s0)           ## 0000025C
/* 0064C 80B11F3C 5540009C */  bnel    $t2, $zero, .L80B121B0     
/* 00650 80B11F40 860D025C */  lh      $t5, 0x025C($s0)           ## 0000025C
/* 00654 80B11F44 860B0294 */  lh      $t3, 0x0294($s0)           ## 00000294
/* 00658 80B11F48 256C0001 */  addiu   $t4, $t3, 0x0001           ## $t4 = 00000001
/* 0065C 80B11F4C A60C0294 */  sh      $t4, 0x0294($s0)           ## 00000294
/* 00660 80B11F50 860D0294 */  lh      $t5, 0x0294($s0)           ## 00000294
/* 00664 80B11F54 29A10008 */  slti    $at, $t5, 0x0008           
/* 00668 80B11F58 1420007A */  bne     $at, $zero, .L80B12144     
/* 0066C 80B11F5C 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 00670 80B11F60 44816000 */  mtc1    $at, $f12                  ## $f12 = 30.00
/* 00674 80B11F64 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 00678 80B11F68 00000000 */  nop
/* 0067C 80B11F6C 4600010D */  trunc.w.s $f4, $f0                   
/* 00680 80B11F70 3C0180B1 */  lui     $at, %hi(D_80B137CC)       ## $at = 80B10000
/* 00684 80B11F74 440F2000 */  mfc1    $t7, $f4                   
/* 00688 80B11F78 00000000 */  nop
/* 0068C 80B11F7C A60F025E */  sh      $t7, 0x025E($s0)           ## 0000025E
/* 00690 80B11F80 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 00694 80B11F84 C42C37CC */  lwc1    $f12, %lo(D_80B137CC)($at) 
/* 00698 80B11F88 4600018D */  trunc.w.s $f6, $f0                   
/* 0069C 80B11F8C 8602029E */  lh      $v0, 0x029E($s0)           ## 0000029E
/* 006A0 80B11F90 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 006A4 80B11F94 44193000 */  mfc1    $t9, $f6                   
/* 006A8 80B11F98 10400006 */  beq     $v0, $zero, .L80B11FB4     
/* 006AC 80B11F9C A6190294 */  sh      $t9, 0x0294($s0)           ## 00000294
/* 006B0 80B11FA0 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 006B4 80B11FA4 50410042 */  beql    $v0, $at, .L80B120B0       
/* 006B8 80B11FA8 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 006BC 80B11FAC 10000080 */  beq     $zero, $zero, .L80B121B0   
/* 006C0 80B11FB0 860D025C */  lh      $t5, 0x025C($s0)           ## 0000025C
.L80B11FB4:
/* 006C4 80B11FB4 44816000 */  mtc1    $at, $f12                  ## $f12 = 50.00
/* 006C8 80B11FB8 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 006CC 80B11FBC 00000000 */  nop
/* 006D0 80B11FC0 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 006D4 80B11FC4 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 006D8 80B11FC8 44816000 */  mtc1    $at, $f12                  ## $f12 = 100.00
/* 006DC 80B11FCC 4608003C */  c.lt.s  $f0, $f8                   
/* 006E0 80B11FD0 00000000 */  nop
/* 006E4 80B11FD4 45020004 */  bc1fl   .L80B11FE8                 
/* 006E8 80B11FD8 460C0380 */  add.s   $f14, $f0, $f12            
/* 006EC 80B11FDC 10000002 */  beq     $zero, $zero, .L80B11FE8   
/* 006F0 80B11FE0 460C0381 */  sub.s   $f14, $f0, $f12            
/* 006F4 80B11FE4 460C0380 */  add.s   $f14, $f0, $f12            
.L80B11FE8:
/* 006F8 80B11FE8 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 006FC 80B11FEC E7AE0050 */  swc1    $f14, 0x0050($sp)          
/* 00700 80B11FF0 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 00704 80B11FF4 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 00708 80B11FF8 44816000 */  mtc1    $at, $f12                  ## $f12 = 100.00
/* 0070C 80B11FFC 460A003C */  c.lt.s  $f0, $f10                  
/* 00710 80B12000 C7AE0050 */  lwc1    $f14, 0x0050($sp)          
/* 00714 80B12004 45020004 */  bc1fl   .L80B12018                 
/* 00718 80B12008 460C0080 */  add.s   $f2, $f0, $f12             
/* 0071C 80B1200C 10000002 */  beq     $zero, $zero, .L80B12018   
/* 00720 80B12010 460C0081 */  sub.s   $f2, $f0, $f12             
/* 00724 80B12014 460C0080 */  add.s   $f2, $f0, $f12             
.L80B12018:
/* 00728 80B12018 C61002DC */  lwc1    $f16, 0x02DC($s0)          ## 000002DC
/* 0072C 80B1201C 3C01C316 */  lui     $at, 0xC316                ## $at = C3160000
/* 00730 80B12020 44816000 */  mtc1    $at, $f12                  ## $f12 = -150.00
/* 00734 80B12024 460E8000 */  add.s   $f0, $f16, $f14            
/* 00738 80B12028 C61202E4 */  lwc1    $f18, 0x02E4($s0)          ## 000002E4
/* 0073C 80B1202C 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 00740 80B12030 460C003C */  c.lt.s  $f0, $f12                  
/* 00744 80B12034 E60002E8 */  swc1    $f0, 0x02E8($s0)           ## 000002E8
/* 00748 80B12038 46029100 */  add.s   $f4, $f18, $f2             
/* 0074C 80B1203C 44810000 */  mtc1    $at, $f0                   ## $f0 = 150.00
/* 00750 80B12040 3C01C270 */  lui     $at, 0xC270                ## $at = C2700000
/* 00754 80B12044 45000002 */  bc1f    .L80B12050                 
/* 00758 80B12048 E60402F0 */  swc1    $f4, 0x02F0($s0)           ## 000002F0
/* 0075C 80B1204C E60C02E8 */  swc1    $f12, 0x02E8($s0)          ## 000002E8
.L80B12050:
/* 00760 80B12050 C60602E8 */  lwc1    $f6, 0x02E8($s0)           ## 000002E8
/* 00764 80B12054 44811000 */  mtc1    $at, $f2                   ## $f2 = -60.00
/* 00768 80B12058 3C01C220 */  lui     $at, 0xC220                ## $at = C2200000
/* 0076C 80B1205C 4606003C */  c.lt.s  $f0, $f6                   
/* 00770 80B12060 00000000 */  nop
/* 00774 80B12064 45020003 */  bc1fl   .L80B12074                 
/* 00778 80B12068 C60002F0 */  lwc1    $f0, 0x02F0($s0)           ## 000002F0
/* 0077C 80B1206C E60002E8 */  swc1    $f0, 0x02E8($s0)           ## 000002E8
/* 00780 80B12070 C60002F0 */  lwc1    $f0, 0x02F0($s0)           ## 000002F0
.L80B12074:
/* 00784 80B12074 4602003C */  c.lt.s  $f0, $f2                   
/* 00788 80B12078 00000000 */  nop
/* 0078C 80B1207C 45020004 */  bc1fl   .L80B12090                 
/* 00790 80B12080 44811000 */  mtc1    $at, $f2                   ## $f2 = -40.00
/* 00794 80B12084 E60202F0 */  swc1    $f2, 0x02F0($s0)           ## 000002F0
/* 00798 80B12088 C60002F0 */  lwc1    $f0, 0x02F0($s0)           ## 000002F0
/* 0079C 80B1208C 44811000 */  mtc1    $at, $f2                   ## $f2 = -40.00
.L80B12090:
/* 007A0 80B12090 00000000 */  nop
/* 007A4 80B12094 4600103C */  c.lt.s  $f2, $f0                   
/* 007A8 80B12098 00000000 */  nop
/* 007AC 80B1209C 45020044 */  bc1fl   .L80B121B0                 
/* 007B0 80B120A0 860D025C */  lh      $t5, 0x025C($s0)           ## 0000025C
/* 007B4 80B120A4 10000041 */  beq     $zero, $zero, .L80B121AC   
/* 007B8 80B120A8 E60202F0 */  swc1    $f2, 0x02F0($s0)           ## 000002F0
/* 007BC 80B120AC 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
.L80B120B0:
/* 007C0 80B120B0 44816000 */  mtc1    $at, $f12                  ## $f12 = 50.00
/* 007C4 80B120B4 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 007C8 80B120B8 00000000 */  nop
/* 007CC 80B120BC 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 007D0 80B120C0 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 007D4 80B120C4 44811000 */  mtc1    $at, $f2                   ## $f2 = 50.00
/* 007D8 80B120C8 4608003C */  c.lt.s  $f0, $f8                   
/* 007DC 80B120CC 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 007E0 80B120D0 44816000 */  mtc1    $at, $f12                  ## $f12 = 30.00
/* 007E4 80B120D4 45020004 */  bc1fl   .L80B120E8                 
/* 007E8 80B120D8 46020380 */  add.s   $f14, $f0, $f2             
/* 007EC 80B120DC 10000002 */  beq     $zero, $zero, .L80B120E8   
/* 007F0 80B120E0 46020381 */  sub.s   $f14, $f0, $f2             
/* 007F4 80B120E4 46020380 */  add.s   $f14, $f0, $f2             
.L80B120E8:
/* 007F8 80B120E8 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 007FC 80B120EC E7AE0050 */  swc1    $f14, 0x0050($sp)          
/* 00800 80B120F0 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 00804 80B120F4 C7AE0050 */  lwc1    $f14, 0x0050($sp)          
/* 00808 80B120F8 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 0080C 80B120FC 460A003C */  c.lt.s  $f0, $f10                  
/* 00810 80B12100 00000000 */  nop
/* 00814 80B12104 45020006 */  bc1fl   .L80B12120                 
/* 00818 80B12108 44819000 */  mtc1    $at, $f18                  ## $f18 = 30.00
/* 0081C 80B1210C 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 00820 80B12110 44818000 */  mtc1    $at, $f16                  ## $f16 = 30.00
/* 00824 80B12114 10000004 */  beq     $zero, $zero, .L80B12128   
/* 00828 80B12118 46100081 */  sub.s   $f2, $f0, $f16             
/* 0082C 80B1211C 44819000 */  mtc1    $at, $f18                  ## $f18 = 30.00
.L80B12120:
/* 00830 80B12120 00000000 */  nop
/* 00834 80B12124 46120080 */  add.s   $f2, $f0, $f18             
.L80B12128:
/* 00838 80B12128 C60402DC */  lwc1    $f4, 0x02DC($s0)           ## 000002DC
/* 0083C 80B1212C C60802E4 */  lwc1    $f8, 0x02E4($s0)           ## 000002E4
/* 00840 80B12130 460E2180 */  add.s   $f6, $f4, $f14             
/* 00844 80B12134 46024280 */  add.s   $f10, $f8, $f2             
/* 00848 80B12138 E60602E8 */  swc1    $f6, 0x02E8($s0)           ## 000002E8
/* 0084C 80B1213C 1000001B */  beq     $zero, $zero, .L80B121AC   
/* 00850 80B12140 E60A02F0 */  swc1    $f10, 0x02F0($s0)          ## 000002F0
.L80B12144:
/* 00854 80B12144 96090088 */  lhu     $t1, 0x0088($s0)           ## 00000088
/* 00858 80B12148 24080004 */  addiu   $t0, $zero, 0x0004         ## $t0 = 00000004
/* 0085C 80B1214C A608025C */  sh      $t0, 0x025C($s0)           ## 0000025C
/* 00860 80B12150 312A0001 */  andi    $t2, $t1, 0x0001           ## $t2 = 00000000
/* 00864 80B12154 11400015 */  beq     $t2, $zero, .L80B121AC     
/* 00868 80B12158 3C014020 */  lui     $at, 0x4020                ## $at = 40200000
/* 0086C 80B1215C 44818000 */  mtc1    $at, $f16                  ## $f16 = 2.50
/* 00870 80B12160 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00874 80B12164 44816000 */  mtc1    $at, $f12                  ## $f12 = 10.00
/* 00878 80B12168 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 0087C 80B1216C E6100060 */  swc1    $f16, 0x0060($s0)          ## 00000060
/* 00880 80B12170 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00884 80B12174 44819000 */  mtc1    $at, $f18                  ## $f18 = 1.00
/* 00888 80B12178 00000000 */  nop
/* 0088C 80B1217C 4612003C */  c.lt.s  $f0, $f18                  
/* 00890 80B12180 00000000 */  nop
/* 00894 80B12184 4502000A */  bc1fl   .L80B121B0                 
/* 00898 80B12188 860D025C */  lh      $t5, 0x025C($s0)           ## 0000025C
/* 0089C 80B1218C 860B029E */  lh      $t3, 0x029E($s0)           ## 0000029E
/* 008A0 80B12190 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 008A4 80B12194 55600006 */  bnel    $t3, $zero, .L80B121B0     
/* 008A8 80B12198 860D025C */  lh      $t5, 0x025C($s0)           ## 0000025C
/* 008AC 80B1219C 44812000 */  mtc1    $at, $f4                   ## $f4 = 10.00
/* 008B0 80B121A0 240C000C */  addiu   $t4, $zero, 0x000C         ## $t4 = 0000000C
/* 008B4 80B121A4 A60C025C */  sh      $t4, 0x025C($s0)           ## 0000025C
/* 008B8 80B121A8 E6040060 */  swc1    $f4, 0x0060($s0)           ## 00000060
.L80B121AC:
/* 008BC 80B121AC 860D025C */  lh      $t5, 0x025C($s0)           ## 0000025C
.L80B121B0:
/* 008C0 80B121B0 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 008C4 80B121B4 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
/* 008C8 80B121B8 11A00048 */  beq     $t5, $zero, .L80B122DC     
/* 008CC 80B121BC 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 008D0 80B121C0 A7AE004A */  sh      $t6, 0x004A($sp)           
/* 008D4 80B121C4 8E0702CC */  lw      $a3, 0x02CC($s0)           ## 000002CC
/* 008D8 80B121C8 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 008DC 80B121CC 8E0502E8 */  lw      $a1, 0x02E8($s0)           ## 000002E8
/* 008E0 80B121D0 2604002C */  addiu   $a0, $s0, 0x002C           ## $a0 = 0000002C
/* 008E4 80B121D4 8E0502F0 */  lw      $a1, 0x02F0($s0)           ## 000002F0
/* 008E8 80B121D8 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 008EC 80B121DC 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 008F0 80B121E0 8E0702CC */  lw      $a3, 0x02CC($s0)           ## 000002CC
/* 008F4 80B121E4 3C073E99 */  lui     $a3, 0x3E99                ## $a3 = 3E990000
/* 008F8 80B121E8 34E7999A */  ori     $a3, $a3, 0x999A           ## $a3 = 3E99999A
/* 008FC 80B121EC 260402CC */  addiu   $a0, $s0, 0x02CC           ## $a0 = 000002CC
/* 00900 80B121F0 3C054040 */  lui     $a1, 0x4040                ## $a1 = 40400000
/* 00904 80B121F4 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 00908 80B121F8 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 0090C 80B121FC C60602E8 */  lwc1    $f6, 0x02E8($s0)           ## 000002E8
/* 00910 80B12200 C6080024 */  lwc1    $f8, 0x0024($s0)           ## 00000024
/* 00914 80B12204 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00918 80B12208 44811000 */  mtc1    $at, $f2                   ## $f2 = 10.00
/* 0091C 80B1220C 46083301 */  sub.s   $f12, $f6, $f8             
/* 00920 80B12210 C60A02F0 */  lwc1    $f10, 0x02F0($s0)          ## 000002F0
/* 00924 80B12214 C610002C */  lwc1    $f16, 0x002C($s0)          ## 0000002C
/* 00928 80B12218 46006005 */  abs.s   $f0, $f12                  
/* 0092C 80B1221C 46105381 */  sub.s   $f14, $f10, $f16           
/* 00930 80B12220 4602003C */  c.lt.s  $f0, $f2                   
/* 00934 80B12224 46007005 */  abs.s   $f0, $f14                  
/* 00938 80B12228 45020004 */  bc1fl   .L80B1223C                 
/* 0093C 80B1222C 4602003C */  c.lt.s  $f0, $f2                   
/* 00940 80B12230 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 00944 80B12234 00000000 */  nop
/* 00948 80B12238 4602003C */  c.lt.s  $f0, $f2                   
.L80B1223C:
/* 0094C 80B1223C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00950 80B12240 45020004 */  bc1fl   .L80B12254                 
/* 00954 80B12244 46006032 */  c.eq.s  $f12, $f0                  
/* 00958 80B12248 44807000 */  mtc1    $zero, $f14                ## $f14 = 0.00
/* 0095C 80B1224C 00000000 */  nop
/* 00960 80B12250 46006032 */  c.eq.s  $f12, $f0                  
.L80B12254:
/* 00964 80B12254 00000000 */  nop
/* 00968 80B12258 45000007 */  bc1f    .L80B12278                 
/* 0096C 80B1225C 00000000 */  nop
/* 00970 80B12260 46007032 */  c.eq.s  $f14, $f0                  
/* 00974 80B12264 240F0007 */  addiu   $t7, $zero, 0x0007         ## $t7 = 00000007
/* 00978 80B12268 45000003 */  bc1f    .L80B12278                 
/* 0097C 80B1226C 00000000 */  nop
/* 00980 80B12270 A600025C */  sh      $zero, 0x025C($s0)         ## 0000025C
/* 00984 80B12274 A60F0294 */  sh      $t7, 0x0294($s0)           ## 00000294
.L80B12278:
/* 00988 80B12278 0C03F494 */  jal     Math_atan2f              
/* 0098C 80B1227C 00000000 */  nop
/* 00990 80B12280 3C0180B1 */  lui     $at, %hi(D_80B137D0)       ## $at = 80B10000
/* 00994 80B12284 C43237D0 */  lwc1    $f18, %lo(D_80B137D0)($at) 
/* 00998 80B12288 C60802D0 */  lwc1    $f8, 0x02D0($s0)           ## 000002D0
/* 0099C 80B1228C AFA00010 */  sw      $zero, 0x0010($sp)         
/* 009A0 80B12290 46120102 */  mul.s   $f4, $f0, $f18             
/* 009A4 80B12294 4600428D */  trunc.w.s $f10, $f8                  
/* 009A8 80B12298 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 009AC 80B1229C 24060003 */  addiu   $a2, $zero, 0x0003         ## $a2 = 00000003
/* 009B0 80B122A0 44075000 */  mfc1    $a3, $f10                  
/* 009B4 80B122A4 4600218D */  trunc.w.s $f6, $f4                   
/* 009B8 80B122A8 00073C00 */  sll     $a3, $a3, 16               
/* 009BC 80B122AC 00073C03 */  sra     $a3, $a3, 16               
/* 009C0 80B122B0 44053000 */  mfc1    $a1, $f6                   
/* 009C4 80B122B4 00000000 */  nop
/* 009C8 80B122B8 00052C00 */  sll     $a1, $a1, 16               
/* 009CC 80B122BC 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 009D0 80B122C0 00052C03 */  sra     $a1, $a1, 16               
/* 009D4 80B122C4 3C05461C */  lui     $a1, 0x461C                ## $a1 = 461C0000
/* 009D8 80B122C8 34A54000 */  ori     $a1, $a1, 0x4000           ## $a1 = 461C4000
/* 009DC 80B122CC 260402D0 */  addiu   $a0, $s0, 0x02D0           ## $a0 = 000002D0
/* 009E0 80B122D0 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 009E4 80B122D4 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 009E8 80B122D8 3C07447A */  lui     $a3, 0x447A                ## $a3 = 447A0000
.L80B122DC:
/* 009EC 80B122DC 86080260 */  lh      $t0, 0x0260($s0)           ## 00000260
/* 009F0 80B122E0 8FA9008C */  lw      $t1, 0x008C($sp)           
/* 009F4 80B122E4 3C0A0001 */  lui     $t2, 0x0001                ## $t2 = 00010000
/* 009F8 80B122E8 15000007 */  bne     $t0, $zero, .L80B12308     
/* 009FC 80B122EC 01495021 */  addu    $t2, $t2, $t1              
/* 00A00 80B122F0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A04 80B122F4 8FA5008C */  lw      $a1, 0x008C($sp)           
/* 00A08 80B122F8 0C2C46A5 */  jal     func_80B11A94              
/* 00A0C 80B122FC 87A6004A */  lh      $a2, 0x004A($sp)           
/* 00A10 80B12300 10000025 */  beq     $zero, $zero, .L80B12398   
/* 00A14 80B12304 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L80B12308:
/* 00A18 80B12308 8D4A1DE4 */  lw      $t2, 0x1DE4($t2)           ## 00001DE4
/* 00A1C 80B1230C 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 00A20 80B12310 260C0024 */  addiu   $t4, $s0, 0x0024           ## $t4 = 00000024
/* 00A24 80B12314 314B0003 */  andi    $t3, $t2, 0x0003           ## $t3 = 00000000
/* 00A28 80B12318 5560001F */  bnel    $t3, $zero, .L80B12398     
/* 00A2C 80B1231C 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 00A30 80B12320 44816000 */  mtc1    $at, $f12                  ## $f12 = 5.00
/* 00A34 80B12324 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00A38 80B12328 AFAC003C */  sw      $t4, 0x003C($sp)           
/* 00A3C 80B1232C 3C0180B1 */  lui     $at, %hi(D_80B137D4)       ## $at = 80B10000
/* 00A40 80B12330 C43037D4 */  lwc1    $f16, %lo(D_80B137D4)($at) 
/* 00A44 80B12334 8FAD003C */  lw      $t5, 0x003C($sp)           
/* 00A48 80B12338 E7A00080 */  swc1    $f0, 0x0080($sp)           
/* 00A4C 80B1233C E7B00074 */  swc1    $f16, 0x0074($sp)          
/* 00A50 80B12340 8DAF0000 */  lw      $t7, 0x0000($t5)           ## 00000000
/* 00A54 80B12344 27A5005C */  addiu   $a1, $sp, 0x005C           ## $a1 = FFFFFFD4
/* 00A58 80B12348 27B8006C */  addiu   $t8, $sp, 0x006C           ## $t8 = FFFFFFE4
/* 00A5C 80B1234C ACAF0000 */  sw      $t7, 0x0000($a1)           ## FFFFFFD4
/* 00A60 80B12350 8DAE0004 */  lw      $t6, 0x0004($t5)           ## 00000004
/* 00A64 80B12354 27B90068 */  addiu   $t9, $sp, 0x0068           ## $t9 = FFFFFFE0
/* 00A68 80B12358 24080258 */  addiu   $t0, $zero, 0x0258         ## $t0 = 00000258
/* 00A6C 80B1235C ACAE0004 */  sw      $t6, 0x0004($a1)           ## FFFFFFD8
/* 00A70 80B12360 8DAF0008 */  lw      $t7, 0x0008($t5)           ## 00000008
/* 00A74 80B12364 24090028 */  addiu   $t1, $zero, 0x0028         ## $t1 = 00000028
/* 00A78 80B12368 240A001E */  addiu   $t2, $zero, 0x001E         ## $t2 = 0000001E
/* 00A7C 80B1236C ACAF0008 */  sw      $t7, 0x0008($a1)           ## FFFFFFDC
/* 00A80 80B12370 AFAA0020 */  sw      $t2, 0x0020($sp)           
/* 00A84 80B12374 AFA9001C */  sw      $t1, 0x001C($sp)           
/* 00A88 80B12378 AFA80018 */  sw      $t0, 0x0018($sp)           
/* 00A8C 80B1237C AFB90014 */  sw      $t9, 0x0014($sp)           
/* 00A90 80B12380 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 00A94 80B12384 8FA4008C */  lw      $a0, 0x008C($sp)           
/* 00A98 80B12388 27A6007C */  addiu   $a2, $sp, 0x007C           ## $a2 = FFFFFFF4
/* 00A9C 80B1238C 0C00A0DB */  jal     func_8002836C              
/* 00AA0 80B12390 27A70070 */  addiu   $a3, $sp, 0x0070           ## $a3 = FFFFFFE8
.L80B12394:
/* 00AA4 80B12394 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L80B12398:
/* 00AA8 80B12398 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 00AAC 80B1239C 27BD0088 */  addiu   $sp, $sp, 0x0088           ## $sp = 00000000
/* 00AB0 80B123A0 03E00008 */  jr      $ra                        
/* 00AB4 80B123A4 00000000 */  nop


