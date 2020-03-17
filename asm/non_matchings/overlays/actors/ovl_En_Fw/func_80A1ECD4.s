glabel func_80A1ECD4
/* 00734 80A1ECD4 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00738 80A1ECD8 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 0073C 80A1ECDC 27BDFF98 */  addiu   $sp, $sp, 0xFF98           ## $sp = FFFFFF98
/* 00740 80A1ECE0 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00744 80A1ECE4 AFB00030 */  sw      $s0, 0x0030($sp)           
/* 00748 80A1ECE8 AFA5006C */  sw      $a1, 0x006C($sp)           
/* 0074C 80A1ECEC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00750 80A1ECF0 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 00754 80A1ECF4 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 00758 80A1ECF8 44050000 */  mfc1    $a1, $f0                   
/* 0075C 80A1ECFC 44070000 */  mfc1    $a3, $f0                   
/* 00760 80A1ED00 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 00764 80A1ED04 24840168 */  addiu   $a0, $a0, 0x0168           ## $a0 = 00000168
/* 00768 80A1ED08 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 0076C 80A1ED0C E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00770 80A1ED10 8E0F0154 */  lw      $t7, 0x0154($s0)           ## 00000154
/* 00774 80A1ED14 3C0E0600 */  lui     $t6, 0x0600                ## $t6 = 06000000
/* 00778 80A1ED18 25CE6CF8 */  addiu   $t6, $t6, 0x6CF8           ## $t6 = 06006CF8
/* 0077C 80A1ED1C 15CF0012 */  bne     $t6, $t7, .L80A1ED68       
/* 00780 80A1ED20 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00784 80A1ED24 8E05015C */  lw      $a1, 0x015C($s0)           ## 0000015C
/* 00788 80A1ED28 0C0295B2 */  jal     func_800A56C8              
/* 0078C 80A1ED2C AFA4003C */  sw      $a0, 0x003C($sp)           
/* 00790 80A1ED30 54400159 */  bnel    $v0, $zero, .L80A1F298     
/* 00794 80A1ED34 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 00798 80A1ED38 8E050118 */  lw      $a1, 0x0118($s0)           ## 00000118
/* 0079C 80A1ED3C 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
/* 007A0 80A1ED40 0C01DFE4 */  jal     Math_Vec3f_DistXYZ
              
/* 007A4 80A1ED44 24A50024 */  addiu   $a1, $a1, 0x0024           ## $a1 = 00000024
/* 007A8 80A1ED48 E6000218 */  swc1    $f0, 0x0218($s0)           ## 00000218
/* 007AC 80A1ED4C 3C0580A2 */  lui     $a1, %hi(D_80A1FBA0)       ## $a1 = 80A20000
/* 007B0 80A1ED50 24A5FBA0 */  addiu   $a1, $a1, %lo(D_80A1FBA0)  ## $a1 = 80A1FBA0
/* 007B4 80A1ED54 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 007B8 80A1ED58 0C00D3B0 */  jal     func_80034EC0              
/* 007BC 80A1ED5C 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 007C0 80A1ED60 1000014D */  beq     $zero, $zero, .L80A1F298   
/* 007C4 80A1ED64 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L80A1ED68:
/* 007C8 80A1ED68 86180208 */  lh      $t8, 0x0208($s0)           ## 00000208
/* 007CC 80A1ED6C 57000023 */  bnel    $t8, $zero, .L80A1EDFC     
/* 007D0 80A1ED70 860D020A */  lh      $t5, 0x020A($s0)           ## 0000020A
/* 007D4 80A1ED74 8619020A */  lh      $t9, 0x020A($s0)           ## 0000020A
/* 007D8 80A1ED78 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 007DC 80A1ED7C 5720001F */  bnel    $t9, $zero, .L80A1EDFC     
/* 007E0 80A1ED80 860D020A */  lh      $t5, 0x020A($s0)           ## 0000020A
/* 007E4 80A1ED84 0C287A0E */  jal     func_80A1E838              
/* 007E8 80A1ED88 8FA5006C */  lw      $a1, 0x006C($sp)           
/* 007EC 80A1ED8C 5040001B */  beql    $v0, $zero, .L80A1EDFC     
/* 007F0 80A1ED90 860D020A */  lh      $t5, 0x020A($s0)           ## 0000020A
/* 007F4 80A1ED94 8E080118 */  lw      $t0, 0x0118($s0)           ## 00000118
/* 007F8 80A1ED98 24053980 */  addiu   $a1, $zero, 0x3980         ## $a1 = 00003980
/* 007FC 80A1ED9C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00800 80A1EDA0 910900AF */  lbu     $t1, 0x00AF($t0)           ## 000000AF
/* 00804 80A1EDA4 1920000D */  blez    $t1, .L80A1EDDC            
/* 00808 80A1EDA8 00000000 */  nop
/* 0080C 80A1EDAC 920A0200 */  lbu     $t2, 0x0200($s0)           ## 00000200
/* 00810 80A1EDB0 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 00814 80A1EDB4 15400004 */  bne     $t2, $zero, .L80A1EDC8     
/* 00818 80A1EDB8 00000000 */  nop
/* 0081C 80A1EDBC 44813000 */  mtc1    $at, $f6                   ## $f6 = 6.00
/* 00820 80A1EDC0 00000000 */  nop
/* 00824 80A1EDC4 E6060060 */  swc1    $f6, 0x0060($s0)           ## 00000060
.L80A1EDC8:
/* 00828 80A1EDC8 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 0082C 80A1EDCC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00830 80A1EDD0 240B0014 */  addiu   $t3, $zero, 0x0014         ## $t3 = 00000014
/* 00834 80A1EDD4 10000005 */  beq     $zero, $zero, .L80A1EDEC   
/* 00838 80A1EDD8 A60B0208 */  sh      $t3, 0x0208($s0)           ## 00000208
.L80A1EDDC:
/* 0083C 80A1EDDC 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00840 80A1EDE0 24053980 */  addiu   $a1, $zero, 0x3980         ## $a1 = 00003980
/* 00844 80A1EDE4 240C0006 */  addiu   $t4, $zero, 0x0006         ## $t4 = 00000006
/* 00848 80A1EDE8 A60C020A */  sh      $t4, 0x020A($s0)           ## 0000020A
.L80A1EDEC:
/* 0084C 80A1EDEC 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00850 80A1EDF0 00000000 */  nop
/* 00854 80A1EDF4 E6000068 */  swc1    $f0, 0x0068($s0)           ## 00000068
/* 00858 80A1EDF8 860D020A */  lh      $t5, 0x020A($s0)           ## 0000020A
.L80A1EDFC:
/* 0085C 80A1EDFC 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00860 80A1EE00 26040050 */  addiu   $a0, $s0, 0x0050           ## $a0 = 00000050
/* 00864 80A1EE04 11A00038 */  beq     $t5, $zero, .L80A1EEE8     
/* 00868 80A1EE08 3C053CCC */  lui     $a1, 0x3CCC                ## $a1 = 3CCC0000
/* 0086C 80A1EE0C E6000168 */  swc1    $f0, 0x0168($s0)           ## 00000168
/* 00870 80A1EE10 3C063DA3 */  lui     $a2, 0x3DA3                ## $a2 = 3DA30000
/* 00874 80A1EE14 3C073F19 */  lui     $a3, 0x3F19                ## $a3 = 3F190000
/* 00878 80A1EE18 34E7999A */  ori     $a3, $a3, 0x999A           ## $a3 = 3F19999A
/* 0087C 80A1EE1C 34C6D70A */  ori     $a2, $a2, 0xD70A           ## $a2 = 3DA3D70A
/* 00880 80A1EE20 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 00884 80A1EE24 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 00888 80A1EE28 34A5CCCC */  ori     $a1, $a1, 0xCCCC           ## $a1 = 3CCCCCCC
/* 0088C 80A1EE2C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00890 80A1EE30 0C00B58B */  jal     Actor_SetScale
              
/* 00894 80A1EE34 8E050050 */  lw      $a1, 0x0050($s0)           ## 00000050
/* 00898 80A1EE38 920E0114 */  lbu     $t6, 0x0114($s0)           ## 00000114
/* 0089C 80A1EE3C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 008A0 80A1EE40 24054000 */  addiu   $a1, $zero, 0x4000         ## $a1 = 00004000
/* 008A4 80A1EE44 15C00008 */  bne     $t6, $zero, .L80A1EE68     
/* 008A8 80A1EE48 240600C8 */  addiu   $a2, $zero, 0x00C8         ## $a2 = 000000C8
/* 008AC 80A1EE4C 860F020A */  lh      $t7, 0x020A($s0)           ## 0000020A
/* 008B0 80A1EE50 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 008B4 80A1EE54 0C00D09B */  jal     func_8003426C              
/* 008B8 80A1EE58 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 008BC 80A1EE5C 8618020A */  lh      $t8, 0x020A($s0)           ## 0000020A
/* 008C0 80A1EE60 2719FFFF */  addiu   $t9, $t8, 0xFFFF           ## $t9 = FFFFFFFF
/* 008C4 80A1EE64 A619020A */  sh      $t9, 0x020A($s0)           ## 0000020A
.L80A1EE68:
/* 008C8 80A1EE68 8608020A */  lh      $t0, 0x020A($s0)           ## 0000020A
/* 008CC 80A1EE6C 8FA5006C */  lw      $a1, 0x006C($sp)           
/* 008D0 80A1EE70 24060010 */  addiu   $a2, $zero, 0x0010         ## $a2 = 00000010
/* 008D4 80A1EE74 15000107 */  bne     $t0, $zero, .L80A1F294     
/* 008D8 80A1EE78 24A41C24 */  addiu   $a0, $a1, 0x1C24           ## $a0 = 00001C24
/* 008DC 80A1EE7C C60801F8 */  lwc1    $f8, 0x01F8($s0)           ## 000001F8
/* 008E0 80A1EE80 8E0701F4 */  lw      $a3, 0x01F4($s0)           ## 000001F4
/* 008E4 80A1EE84 24090600 */  addiu   $t1, $zero, 0x0600         ## $t1 = 00000600
/* 008E8 80A1EE88 E7A80010 */  swc1    $f8, 0x0010($sp)           
/* 008EC 80A1EE8C C60A01FC */  lwc1    $f10, 0x01FC($s0)          ## 000001FC
/* 008F0 80A1EE90 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 008F4 80A1EE94 AFA90020 */  sw      $t1, 0x0020($sp)           
/* 008F8 80A1EE98 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 008FC 80A1EE9C AFA00018 */  sw      $zero, 0x0018($sp)         
/* 00900 80A1EEA0 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 00904 80A1EEA4 E7AA0014 */  swc1    $f10, 0x0014($sp)          
/* 00908 80A1EEA8 50400003 */  beql    $v0, $zero, .L80A1EEB8     
/* 0090C 80A1EEAC 8E020118 */  lw      $v0, 0x0118($s0)           ## 00000118
/* 00910 80A1EEB0 A44001F8 */  sh      $zero, 0x01F8($v0)         ## 000001F8
/* 00914 80A1EEB4 8E020118 */  lw      $v0, 0x0118($s0)           ## 00000118
.L80A1EEB8:
/* 00918 80A1EEB8 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0091C 80A1EEBC 26060024 */  addiu   $a2, $s0, 0x0024           ## $a2 = 00000024
/* 00920 80A1EEC0 844A001C */  lh      $t2, 0x001C($v0)           ## 0000001C
/* 00924 80A1EEC4 240700A0 */  addiu   $a3, $zero, 0x00A0         ## $a3 = 000000A0
/* 00928 80A1EEC8 354B4000 */  ori     $t3, $t2, 0x4000           ## $t3 = 00004000
/* 0092C 80A1EECC A44B001C */  sh      $t3, 0x001C($v0)           ## 0000001C
/* 00930 80A1EED0 0C007E50 */  jal     Item_DropCollectibleRandom
              
/* 00934 80A1EED4 8FA4006C */  lw      $a0, 0x006C($sp)           
/* 00938 80A1EED8 0C00B55C */  jal     Actor_Kill
              
/* 0093C 80A1EEDC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00940 80A1EEE0 100000ED */  beq     $zero, $zero, .L80A1F298   
/* 00944 80A1EEE4 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L80A1EEE8:
/* 00948 80A1EEE8 960C0088 */  lhu     $t4, 0x0088($s0)           ## 00000088
/* 0094C 80A1EEEC 86020208 */  lh      $v0, 0x0208($s0)           ## 00000208
/* 00950 80A1EEF0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00954 80A1EEF4 318D0001 */  andi    $t5, $t4, 0x0001           ## $t5 = 00000000
/* 00958 80A1EEF8 11A00006 */  beq     $t5, $zero, .L80A1EF14     
/* 0095C 80A1EEFC 24054000 */  addiu   $a1, $zero, 0x4000         ## $a1 = 00004000
/* 00960 80A1EF00 C6100060 */  lwc1    $f16, 0x0060($s0)          ## 00000060
/* 00964 80A1EF04 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 00968 80A1EF08 4610003C */  c.lt.s  $f0, $f16                  
/* 0096C 80A1EF0C 00000000 */  nop
/* 00970 80A1EF10 45000006 */  bc1f    .L80A1EF2C                 
.L80A1EF14:
/* 00974 80A1EF14 240600C8 */  addiu   $a2, $zero, 0x00C8         ## $a2 = 000000C8
/* 00978 80A1EF18 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 0097C 80A1EF1C 0C00D09B */  jal     func_8003426C              
/* 00980 80A1EF20 AFA20010 */  sw      $v0, 0x0010($sp)           
/* 00984 80A1EF24 100000DC */  beq     $zero, $zero, .L80A1F298   
/* 00988 80A1EF28 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L80A1EF2C:
/* 0098C 80A1EF2C 10400002 */  beq     $v0, $zero, .L80A1EF38     
/* 00990 80A1EF30 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00994 80A1EF34 A60E0208 */  sh      $t6, 0x0208($s0)           ## 00000208
.L80A1EF38:
/* 00998 80A1EF38 44811000 */  mtc1    $at, $f2                   ## $f2 = 0.00
/* 0099C 80A1EF3C C6120218 */  lwc1    $f18, 0x0218($s0)          ## 00000218
/* 009A0 80A1EF40 3C0180A2 */  lui     $at, %hi(D_80A1FC70)       ## $at = 80A20000
/* 009A4 80A1EF44 C426FC70 */  lwc1    $f6, %lo(D_80A1FC70)($at)  
/* 009A8 80A1EF48 46121101 */  sub.s   $f4, $f2, $f18             
/* 009AC 80A1EF4C 3C063E99 */  lui     $a2, 0x3E99                ## $a2 = 3E990000
/* 009B0 80A1EF50 34C6999A */  ori     $a2, $a2, 0x999A           ## $a2 = 3E99999A
/* 009B4 80A1EF54 26040218 */  addiu   $a0, $s0, 0x0218           ## $a0 = 00000218
/* 009B8 80A1EF58 4606203C */  c.lt.s  $f4, $f6                   
/* 009BC 80A1EF5C 3C0742C8 */  lui     $a3, 0x42C8                ## $a3 = 42C80000
/* 009C0 80A1EF60 45020010 */  bc1fl   .L80A1EFA4                 
/* 009C4 80A1EF64 44051000 */  mfc1    $a1, $f2                   
/* 009C8 80A1EF68 86030212 */  lh      $v1, 0x0212($s0)           ## 00000212
/* 009CC 80A1EF6C 3C1880A2 */  lui     $t8, %hi(func_80A1F2A8)    ## $t8 = 80A20000
/* 009D0 80A1EF70 2718F2A8 */  addiu   $t8, $t8, %lo(func_80A1F2A8) ## $t8 = 80A1F2A8
/* 009D4 80A1EF74 14600003 */  bne     $v1, $zero, .L80A1EF84     
/* 009D8 80A1EF78 246FFFFF */  addiu   $t7, $v1, 0xFFFF           ## $t7 = FFFFFFFF
/* 009DC 80A1EF7C 10000003 */  beq     $zero, $zero, .L80A1EF8C   
/* 009E0 80A1EF80 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A1EF84:
/* 009E4 80A1EF84 A60F0212 */  sh      $t7, 0x0212($s0)           ## 00000212
/* 009E8 80A1EF88 86020212 */  lh      $v0, 0x0212($s0)           ## 00000212
.L80A1EF8C:
/* 009EC 80A1EF8C 54400005 */  bnel    $v0, $zero, .L80A1EFA4     
/* 009F0 80A1EF90 44051000 */  mfc1    $a1, $f2                   
/* 009F4 80A1EF94 E6000068 */  swc1    $f0, 0x0068($s0)           ## 00000068
/* 009F8 80A1EF98 100000BE */  beq     $zero, $zero, .L80A1F294   
/* 009FC 80A1EF9C AE180190 */  sw      $t8, 0x0190($s0)           ## 00000190
/* 00A00 80A1EFA0 44051000 */  mfc1    $a1, $f2                   
.L80A1EFA4:
/* 00A04 80A1EFA4 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 00A08 80A1EFA8 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 00A0C 80A1EFAC 86190214 */  lh      $t9, 0x0214($s0)           ## 00000214
/* 00A10 80A1EFB0 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 00A14 80A1EFB4 27A40048 */  addiu   $a0, $sp, 0x0048           ## $a0 = FFFFFFE0
/* 00A18 80A1EFB8 13200029 */  beq     $t9, $zero, .L80A1F060     
/* 00A1C 80A1EFBC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00A20 80A1EFC0 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00A24 80A1EFC4 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 00A28 80A1EFC8 AFA4003C */  sw      $a0, 0x003C($sp)           
/* 00A2C 80A1EFCC 44050000 */  mfc1    $a1, $f0                   
/* 00A30 80A1EFD0 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 00A34 80A1EFD4 3C073F80 */  lui     $a3, 0x3F80                ## $a3 = 3F800000
/* 00A38 80A1EFD8 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 00A3C 80A1EFDC E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 00A40 80A1EFE0 86080032 */  lh      $t0, 0x0032($s0)           ## 00000032
/* 00A44 80A1EFE4 860C00B6 */  lh      $t4, 0x00B6($s0)           ## 000000B6
/* 00A48 80A1EFE8 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 00A4C 80A1EFEC 39098000 */  xori    $t1, $t0, 0x8000           ## $t1 = FFFF8000
/* 00A50 80A1EFF0 00095400 */  sll     $t2, $t1, 16               
/* 00A54 80A1EFF4 000A5C03 */  sra     $t3, $t2, 16               
/* 00A58 80A1EFF8 448B4000 */  mtc1    $t3, $f8                   ## $f8 = 0.00
/* 00A5C 80A1EFFC 448C5000 */  mtc1    $t4, $f10                  ## $f10 = 0.00
/* 00A60 80A1F000 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 00A64 80A1F004 468040A0 */  cvt.s.w $f2, $f8                   
/* 00A68 80A1F008 3C07461C */  lui     $a3, 0x461C                ## $a3 = 461C0000
/* 00A6C 80A1F00C 34E74000 */  ori     $a3, $a3, 0x4000           ## $a3 = 461C4000
/* 00A70 80A1F010 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 00A74 80A1F014 27A4005C */  addiu   $a0, $sp, 0x005C           ## $a0 = FFFFFFF4
/* 00A78 80A1F018 46805420 */  cvt.s.w $f16, $f10                 
/* 00A7C 80A1F01C 44051000 */  mfc1    $a1, $f2                   
/* 00A80 80A1F020 E7B20010 */  swc1    $f18, 0x0010($sp)          
/* 00A84 80A1F024 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 00A88 80A1F028 E7B0005C */  swc1    $f16, 0x005C($sp)          
/* 00A8C 80A1F02C C7A4005C */  lwc1    $f4, 0x005C($sp)           
/* 00A90 80A1F030 3C0180A2 */  lui     $at, %hi(D_80A1FC74)       ## $at = 80A20000
/* 00A94 80A1F034 4600218D */  trunc.w.s $f6, $f4                   
/* 00A98 80A1F038 440E3000 */  mfc1    $t6, $f6                   
/* 00A9C 80A1F03C 00000000 */  nop
/* 00AA0 80A1F040 A60E00B6 */  sh      $t6, 0x00B6($s0)           ## 000000B6
/* 00AA4 80A1F044 C428FC74 */  lwc1    $f8, %lo(D_80A1FC74)($at)  
/* 00AA8 80A1F048 4600403C */  c.lt.s  $f8, $f0                   
/* 00AAC 80A1F04C 00000000 */  nop
/* 00AB0 80A1F050 45030091 */  bc1tl   .L80A1F298                 
/* 00AB4 80A1F054 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 00AB8 80A1F058 10000017 */  beq     $zero, $zero, .L80A1F0B8   
/* 00ABC 80A1F05C A6000214 */  sh      $zero, 0x0214($s0)         ## 00000214
.L80A1F060:
/* 00AC0 80A1F060 8E060218 */  lw      $a2, 0x0218($s0)           ## 00000218
/* 00AC4 80A1F064 0C2879D8 */  jal     func_80A1E760              
/* 00AC8 80A1F068 86070202 */  lh      $a3, 0x0202($s0)           ## 00000202
/* 00ACC 80A1F06C C7AC0048 */  lwc1    $f12, 0x0048($sp)          
/* 00AD0 80A1F070 0C03F494 */  jal     func_800FD250              
/* 00AD4 80A1F074 C7AE0050 */  lwc1    $f14, 0x0050($sp)          
/* 00AD8 80A1F078 3C0180A2 */  lui     $at, %hi(D_80A1FC78)       ## $at = 80A20000
/* 00ADC 80A1F07C C42AFC78 */  lwc1    $f10, %lo(D_80A1FC78)($at) 
/* 00AE0 80A1F080 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 00AE4 80A1F084 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 00AE8 80A1F088 460A0402 */  mul.s   $f16, $f0, $f10            
/* 00AEC 80A1F08C 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 00AF0 80A1F090 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 00AF4 80A1F094 24070FA0 */  addiu   $a3, $zero, 0x0FA0         ## $a3 = 00000FA0
/* 00AF8 80A1F098 4600848D */  trunc.w.s $f18, $f16                 
/* 00AFC 80A1F09C 44059000 */  mfc1    $a1, $f18                  
/* 00B00 80A1F0A0 00000000 */  nop
/* 00B04 80A1F0A4 00052C00 */  sll     $a1, $a1, 16               
/* 00B08 80A1F0A8 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00B0C 80A1F0AC 00052C03 */  sra     $a1, $a1, 16               
/* 00B10 80A1F0B0 26190068 */  addiu   $t9, $s0, 0x0068           ## $t9 = 00000068
/* 00B14 80A1F0B4 AFB9003C */  sw      $t9, 0x003C($sp)           
.L80A1F0B8:
/* 00B18 80A1F0B8 8A0900B4 */  lwl     $t1, 0x00B4($s0)           ## 000000B4
/* 00B1C 80A1F0BC 9A0900B7 */  lwr     $t1, 0x00B7($s0)           ## 000000B7
/* 00B20 80A1F0C0 860A020E */  lh      $t2, 0x020E($s0)           ## 0000020E
/* 00B24 80A1F0C4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B28 80A1F0C8 AA090030 */  swl     $t1, 0x0030($s0)           ## 00000030
/* 00B2C 80A1F0CC BA090033 */  swr     $t1, 0x0033($s0)           ## 00000033
/* 00B30 80A1F0D0 960900B8 */  lhu     $t1, 0x00B8($s0)           ## 000000B8
/* 00B34 80A1F0D4 1540000A */  bne     $t2, $zero, .L80A1F100     
/* 00B38 80A1F0D8 A6090034 */  sh      $t1, 0x0034($s0)           ## 00000034
/* 00B3C 80A1F0DC 0C28799A */  jal     func_80A1E668              
/* 00B40 80A1F0E0 8FA5006C */  lw      $a1, 0x006C($sp)           
/* 00B44 80A1F0E4 10400006 */  beq     $v0, $zero, .L80A1F100     
/* 00B48 80A1F0E8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B4C 80A1F0EC 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00B50 80A1F0F0 2405398B */  addiu   $a1, $zero, 0x398B         ## $a1 = 0000398B
/* 00B54 80A1F0F4 24020008 */  addiu   $v0, $zero, 0x0008         ## $v0 = 00000008
/* 00B58 80A1F0F8 A6020210 */  sh      $v0, 0x0210($s0)           ## 00000210
/* 00B5C 80A1F0FC A602020E */  sh      $v0, 0x020E($s0)           ## 0000020E
.L80A1F100:
/* 00B60 80A1F100 860B020E */  lh      $t3, 0x020E($s0)           ## 0000020E
/* 00B64 80A1F104 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00B68 80A1F108 3C0540C0 */  lui     $a1, 0x40C0                ## $a1 = 40C00000
/* 00B6C 80A1F10C 1160003E */  beq     $t3, $zero, .L80A1F208     
/* 00B70 80A1F110 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 00B74 80A1F114 86030210 */  lh      $v1, 0x0210($s0)           ## 00000210
/* 00B78 80A1F118 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B7C 80A1F11C 14600003 */  bne     $v1, $zero, .L80A1F12C     
/* 00B80 80A1F120 246CFFFF */  addiu   $t4, $v1, 0xFFFF           ## $t4 = FFFFFFFF
/* 00B84 80A1F124 10000003 */  beq     $zero, $zero, .L80A1F134   
/* 00B88 80A1F128 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A1F12C:
/* 00B8C 80A1F12C A60C0210 */  sh      $t4, 0x0210($s0)           ## 00000210
/* 00B90 80A1F130 86020210 */  lh      $v0, 0x0210($s0)           ## 00000210
.L80A1F134:
/* 00B94 80A1F134 54400006 */  bnel    $v0, $zero, .L80A1F150     
/* 00B98 80A1F138 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00B9C 80A1F13C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00BA0 80A1F140 24053982 */  addiu   $a1, $zero, 0x3982         ## $a1 = 00003982
/* 00BA4 80A1F144 240D0004 */  addiu   $t5, $zero, 0x0004         ## $t5 = 00000004
/* 00BA8 80A1F148 A60D0210 */  sh      $t5, 0x0210($s0)           ## 00000210
/* 00BAC 80A1F14C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
.L80A1F150:
/* 00BB0 80A1F150 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 00BB4 80A1F154 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 00BB8 80A1F158 44050000 */  mfc1    $a1, $f0                   
/* 00BBC 80A1F15C 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00BC0 80A1F160 3C073F80 */  lui     $a3, 0x3F80                ## $a3 = 3F800000
/* 00BC4 80A1F164 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 00BC8 80A1F168 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 00BCC 80A1F16C 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00BD0 80A1F170 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00BD4 80A1F174 E6040168 */  swc1    $f4, 0x0168($s0)           ## 00000168
/* 00BD8 80A1F178 3C0180A2 */  lui     $at, %hi(D_80A1FC7C)       ## $at = 80A20000
/* 00BDC 80A1F17C C422FC7C */  lwc1    $f2, %lo(D_80A1FC7C)($at)  
/* 00BE0 80A1F180 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 00BE4 80A1F184 44813000 */  mtc1    $at, $f6                   ## $f6 = 8.00
/* 00BE8 80A1F188 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00BEC 80A1F18C 44814000 */  mtc1    $at, $f8                   ## $f8 = 20.00
/* 00BF0 80A1F190 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00BF4 80A1F194 44815000 */  mtc1    $at, $f10                  ## $f10 = 0.50
/* 00BF8 80A1F198 3C0180A2 */  lui     $at, %hi(D_80A1FC80)       ## $at = 80A20000
/* 00BFC 80A1F19C C424FC80 */  lwc1    $f4, %lo(D_80A1FC80)($at)  
/* 00C00 80A1F1A0 460A0401 */  sub.s   $f16, $f0, $f10            
/* 00C04 80A1F1A4 E7A60014 */  swc1    $f6, 0x0014($sp)           
/* 00C08 80A1F1A8 3C063E23 */  lui     $a2, 0x3E23                ## $a2 = 3E230000
/* 00C0C 80A1F1AC 240E0003 */  addiu   $t6, $zero, 0x0003         ## $t6 = 00000003
/* 00C10 80A1F1B0 46028482 */  mul.s   $f18, $f16, $f2            
/* 00C14 80A1F1B4 44071000 */  mfc1    $a3, $f2                   
/* 00C18 80A1F1B8 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 00C1C 80A1F1BC 34C6D70A */  ori     $a2, $a2, 0xD70A           ## $a2 = 3E23D70A
/* 00C20 80A1F1C0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C24 80A1F1C4 24050008 */  addiu   $a1, $zero, 0x0008         ## $a1 = 00000008
/* 00C28 80A1F1C8 E7A80018 */  swc1    $f8, 0x0018($sp)           
/* 00C2C 80A1F1CC 46049180 */  add.s   $f6, $f18, $f4             
/* 00C30 80A1F1D0 0C287A3E */  jal     func_80A1E8F8              
/* 00C34 80A1F1D4 E7A6001C */  swc1    $f6, 0x001C($sp)           
/* 00C38 80A1F1D8 860F020E */  lh      $t7, 0x020E($s0)           ## 0000020E
/* 00C3C 80A1F1DC 25F8FFFF */  addiu   $t8, $t7, 0xFFFF           ## $t8 = FFFFFFFF
/* 00C40 80A1F1E0 A618020E */  sh      $t8, 0x020E($s0)           ## 0000020E
/* 00C44 80A1F1E4 8619020E */  lh      $t9, 0x020E($s0)           ## 0000020E
/* 00C48 80A1F1E8 5720002B */  bnel    $t9, $zero, .L80A1F298     
/* 00C4C 80A1F1EC 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 00C50 80A1F1F0 86090202 */  lh      $t1, 0x0202($s0)           ## 00000202
/* 00C54 80A1F1F4 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 00C58 80A1F1F8 A6080214 */  sh      $t0, 0x0214($s0)           ## 00000214
/* 00C5C 80A1F1FC 00095023 */  subu    $t2, $zero, $t1            
/* 00C60 80A1F200 10000024 */  beq     $zero, $zero, .L80A1F294   
/* 00C64 80A1F204 A60A0202 */  sh      $t2, 0x0202($s0)           ## 00000202
.L80A1F208:
/* 00C68 80A1F208 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 00C6C 80A1F20C 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 0000CCCD
/* 00C70 80A1F210 3C073F80 */  lui     $a3, 0x3F80                ## $a3 = 3F800000
/* 00C74 80A1F214 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 00C78 80A1F218 E7A80010 */  swc1    $f8, 0x0010($sp)           
/* 00C7C 80A1F21C C60A0164 */  lwc1    $f10, 0x0164($s0)          ## 00000164
/* 00C80 80A1F220 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00C84 80A1F224 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C88 80A1F228 4600540D */  trunc.w.s $f16, $f10                 
/* 00C8C 80A1F22C 44028000 */  mfc1    $v0, $f16                  
/* 00C90 80A1F230 00000000 */  nop
/* 00C94 80A1F234 00021400 */  sll     $v0, $v0, 16               
/* 00C98 80A1F238 00021403 */  sra     $v0, $v0, 16               
/* 00C9C 80A1F23C 10410003 */  beq     $v0, $at, .L80A1F24C       
/* 00CA0 80A1F240 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 00CA4 80A1F244 54410014 */  bnel    $v0, $at, .L80A1F298       
/* 00CA8 80A1F248 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L80A1F24C:
/* 00CAC 80A1F24C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00CB0 80A1F250 2405397F */  addiu   $a1, $zero, 0x397F         ## $a1 = 0000397F
/* 00CB4 80A1F254 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00CB8 80A1F258 44812000 */  mtc1    $at, $f4                   ## $f4 = 20.00
/* 00CBC 80A1F25C 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 00CC0 80A1F260 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 00CC4 80A1F264 3C063E23 */  lui     $a2, 0x3E23                ## $a2 = 3E230000
/* 00CC8 80A1F268 3C073DCC */  lui     $a3, 0x3DCC                ## $a3 = 3DCC0000
/* 00CCC 80A1F26C 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 00CD0 80A1F270 AFAC0010 */  sw      $t4, 0x0010($sp)           
/* 00CD4 80A1F274 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3DCCCCCD
/* 00CD8 80A1F278 34C6D70A */  ori     $a2, $a2, 0xD70A           ## $a2 = 3E23D70A
/* 00CDC 80A1F27C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00CE0 80A1F280 24050008 */  addiu   $a1, $zero, 0x0008         ## $a1 = 00000008
/* 00CE4 80A1F284 E7A40018 */  swc1    $f4, 0x0018($sp)           
/* 00CE8 80A1F288 E7B20014 */  swc1    $f18, 0x0014($sp)          
/* 00CEC 80A1F28C 0C287A3E */  jal     func_80A1E8F8              
/* 00CF0 80A1F290 E7A6001C */  swc1    $f6, 0x001C($sp)           
.L80A1F294:
/* 00CF4 80A1F294 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L80A1F298:
/* 00CF8 80A1F298 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 00CFC 80A1F29C 27BD0068 */  addiu   $sp, $sp, 0x0068           ## $sp = 00000000
/* 00D00 80A1F2A0 03E00008 */  jr      $ra                        
/* 00D04 80A1F2A4 00000000 */  nop


