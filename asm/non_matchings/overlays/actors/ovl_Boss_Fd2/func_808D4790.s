.rdata
glabel D_808D637C
    .asciz "[32m"
    .balign 4

glabel D_808D6384
    .asciz "damage   %d\n"
    .balign 4

glabel D_808D6394
    .asciz "\x1b[m"
    .balign 4

glabel D_808D6398
    .asciz "hp %d\n"
    .balign 4

.text
glabel func_808D4790
/* 02120 808D4790 27BDFF58 */  addiu   $sp, $sp, 0xFF58           ## $sp = FFFFFF58
/* 02124 808D4794 AFBF003C */  sw      $ra, 0x003C($sp)           
/* 02128 808D4798 AFB50038 */  sw      $s5, 0x0038($sp)           
/* 0212C 808D479C AFB40034 */  sw      $s4, 0x0034($sp)           
/* 02130 808D47A0 AFB30030 */  sw      $s3, 0x0030($sp)           
/* 02134 808D47A4 AFB2002C */  sw      $s2, 0x002C($sp)           
/* 02138 808D47A8 AFB10028 */  sw      $s1, 0x0028($sp)           
/* 0213C 808D47AC AFB00024 */  sw      $s0, 0x0024($sp)           
/* 02140 808D47B0 F7B40018 */  sdc1    $f20, 0x0018($sp)          
/* 02144 808D47B4 8C8E0118 */  lw      $t6, 0x0118($a0)           ## 00000118
/* 02148 808D47B8 3C0F808D */  lui     $t7, %hi(func_808D3A08)    ## $t7 = 808D0000
/* 0214C 808D47BC 25EF3A08 */  addiu   $t7, $t7, %lo(func_808D3A08) ## $t7 = 808D3A08
/* 02150 808D47C0 AFAE009C */  sw      $t6, 0x009C($sp)           
/* 02154 808D47C4 8C980190 */  lw      $t8, 0x0190($a0)           ## 00000190
/* 02158 808D47C8 00809825 */  or      $s3, $a0, $zero            ## $s3 = 00000000
/* 0215C 808D47CC 00A0A825 */  or      $s5, $a1, $zero            ## $s5 = 00000000
/* 02160 808D47D0 15F80014 */  bne     $t7, $t8, .L808D4824       
/* 02164 808D47D4 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 02168 808D47D8 8CB11C44 */  lw      $s1, 0x1C44($a1)           ## 00001C44
/* 0216C 808D47DC 2412FFFD */  addiu   $s2, $zero, 0xFFFD         ## $s2 = FFFFFFFD
/* 02170 808D47E0 8E791438 */  lw      $t9, 0x1438($s3)           ## 00001438
.L808D47E4:
/* 02174 808D47E4 00104180 */  sll     $t0, $s0,  6               
/* 02178 808D47E8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0217C 808D47EC 03281021 */  addu    $v0, $t9, $t0              
/* 02180 808D47F0 90430015 */  lbu     $v1, 0x0015($v0)           ## 00000015
/* 02184 808D47F4 2405083E */  addiu   $a1, $zero, 0x083E         ## $a1 = 0000083E
/* 02188 808D47F8 30690002 */  andi    $t1, $v1, 0x0002           ## $t1 = 00000000
/* 0218C 808D47FC 11200003 */  beq     $t1, $zero, .L808D480C     
/* 02190 808D4800 00725024 */  and     $t2, $v1, $s2              
/* 02194 808D4804 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 02198 808D4808 A04A0015 */  sb      $t2, 0x0015($v0)           ## 00000015
.L808D480C:
/* 0219C 808D480C 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 021A0 808D4810 00108400 */  sll     $s0, $s0, 16               
/* 021A4 808D4814 00108403 */  sra     $s0, $s0, 16               
/* 021A8 808D4818 2A010009 */  slti    $at, $s0, 0x0009           
/* 021AC 808D481C 5420FFF1 */  bnel    $at, $zero, .L808D47E4     
/* 021B0 808D4820 8E791438 */  lw      $t9, 0x1438($s3)           ## 00001438
.L808D4824:
/* 021B4 808D4824 8FAB009C */  lw      $t3, 0x009C($sp)           
/* 021B8 808D4828 2412FFFD */  addiu   $s2, $zero, 0xFFFD         ## $s2 = FFFFFFFD
/* 021BC 808D482C 8E621438 */  lw      $v0, 0x1438($s3)           ## 00001438
/* 021C0 808D4830 916C02D7 */  lbu     $t4, 0x02D7($t3)           ## 000002D7
/* 021C4 808D4834 240D0002 */  addiu   $t5, $zero, 0x0002         ## $t5 = 00000002
/* 021C8 808D4838 24030003 */  addiu   $v1, $zero, 0x0003         ## $v1 = 00000003
/* 021CC 808D483C 15800004 */  bne     $t4, $zero, .L808D4850     
/* 021D0 808D4840 240E0009 */  addiu   $t6, $zero, 0x0009         ## $t6 = 00000009
/* 021D4 808D4844 A04D0014 */  sb      $t5, 0x0014($v0)           ## 00000014
/* 021D8 808D4848 10000003 */  beq     $zero, $zero, .L808D4858   
/* 021DC 808D484C A26E1430 */  sb      $t6, 0x1430($s3)           ## 00001430
.L808D4850:
/* 021E0 808D4850 A0430014 */  sb      $v1, 0x0014($v0)           ## 00000014
/* 021E4 808D4854 A2631430 */  sb      $v1, 0x1430($s3)           ## 00001430
.L808D4858:
/* 021E8 808D4858 8E621438 */  lw      $v0, 0x1438($s3)           ## 00001438
/* 021EC 808D485C 90430016 */  lbu     $v1, 0x0016($v0)           ## 00000016
/* 021F0 808D4860 306F0002 */  andi    $t7, $v1, 0x0002           ## $t7 = 00000002
/* 021F4 808D4864 11E000F6 */  beq     $t7, $zero, .L808D4C40     
/* 021F8 808D4868 0072C024 */  and     $t8, $v1, $s2              
/* 021FC 808D486C A0580016 */  sb      $t8, 0x0016($v0)           ## 00000016
/* 02200 808D4870 8FA8009C */  lw      $t0, 0x009C($sp)           
/* 02204 808D4874 8E791438 */  lw      $t9, 0x1438($s3)           ## 00001438
/* 02208 808D4878 00009025 */  or      $s2, $zero, $zero          ## $s2 = 00000000
/* 0220C 808D487C 910902D7 */  lbu     $t1, 0x02D7($t0)           ## 000002D7
/* 02210 808D4880 8F300024 */  lw      $s0, 0x0024($t9)           ## 00000024
/* 02214 808D4884 15200061 */  bne     $t1, $zero, .L808D4A0C     
/* 02218 808D4888 00000000 */  nop
/* 0221C 808D488C 8E0A0000 */  lw      $t2, 0x0000($s0)           ## 00000001
/* 02220 808D4890 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 02224 808D4894 34210040 */  ori     $at, $at, 0x0040           ## $at = 40000040
/* 02228 808D4898 01415824 */  and     $t3, $t2, $at              
/* 0222C 808D489C 116000E8 */  beq     $t3, $zero, .L808D4C40     
/* 02230 808D48A0 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 02234 808D48A4 910C00AF */  lbu     $t4, 0x00AF($t0)           ## 000000AF
/* 02238 808D48A8 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 0223C 808D48AC 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 02240 808D48B0 258DFFFE */  addiu   $t5, $t4, 0xFFFE           ## $t5 = FFFFFFFE
/* 02244 808D48B4 A10D00AF */  sb      $t5, 0x00AF($t0)           ## 000000AF
/* 02248 808D48B8 8FAE009C */  lw      $t6, 0x009C($sp)           
/* 0224C 808D48BC 81CF00AF */  lb      $t7, 0x00AF($t6)           ## 000000B8
/* 02250 808D48C0 29E10003 */  slti    $at, $t7, 0x0003           
/* 02254 808D48C4 50200003 */  beql    $at, $zero, .L808D48D4     
/* 02258 808D48C8 8FA9009C */  lw      $t1, 0x009C($sp)           
/* 0225C 808D48CC A1D800AF */  sb      $t8, 0x00AF($t6)           ## 000000B8
/* 02260 808D48D0 8FA9009C */  lw      $t1, 0x009C($sp)           
.L808D48D4:
/* 02264 808D48D4 02A02825 */  or      $a1, $s5, $zero            ## $a1 = 00000000
/* 02268 808D48D8 0C234EA0 */  jal     func_808D3A80              
/* 0226C 808D48DC A13902D7 */  sb      $t9, 0x02D7($t1)           ## 000002D7
/* 02270 808D48E0 240A001E */  addiu   $t2, $zero, 0x001E         ## $t2 = 0000001E
/* 02274 808D48E4 240B0005 */  addiu   $t3, $zero, 0x0005         ## $t3 = 00000005
/* 02278 808D48E8 A66A01AA */  sh      $t2, 0x01AA($s3)           ## 000001AA
/* 0227C 808D48EC A66B01A6 */  sh      $t3, 0x01A6($s3)           ## 000001A6
/* 02280 808D48F0 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 02284 808D48F4 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 02288 808D48F8 240538D2 */  addiu   $a1, $zero, 0x38D2         ## $a1 = 000038D2
/* 0228C 808D48FC 8FB4009C */  lw      $s4, 0x009C($sp)           
/* 02290 808D4900 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 02294 808D4904 4481A000 */  mtc1    $at, $f20                  ## $f20 = 10.00
/* 02298 808D4908 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 0229C 808D490C 27B20080 */  addiu   $s2, $sp, 0x0080           ## $s2 = FFFFFFD8
/* 022A0 808D4910 27B1008C */  addiu   $s1, $sp, 0x008C           ## $s1 = FFFFFFE4
/* 022A4 808D4914 26941970 */  addiu   $s4, $s4, 0x1970           ## $s4 = 00001970
.L808D4918:
/* 022A8 808D4918 3C0C808D */  lui     $t4, %hi(D_808D61D0)       ## $t4 = 808D0000
/* 022AC 808D491C 258C61D0 */  addiu   $t4, $t4, %lo(D_808D61D0)  ## $t4 = 808D61D0
/* 022B0 808D4920 8D880000 */  lw      $t0, 0x0000($t4)           ## 808D61D0
/* 022B4 808D4924 3C0F808D */  lui     $t7, %hi(D_808D61DC)       ## $t7 = 808D0000
/* 022B8 808D4928 25EF61DC */  addiu   $t7, $t7, %lo(D_808D61DC)  ## $t7 = 808D61DC
/* 022BC 808D492C AE280000 */  sw      $t0, 0x0000($s1)           ## FFFFFFE4
/* 022C0 808D4930 8D8D0004 */  lw      $t5, 0x0004($t4)           ## 808D61D4
/* 022C4 808D4934 4600A306 */  mov.s   $f12, $f20                 
/* 022C8 808D4938 AE2D0004 */  sw      $t5, 0x0004($s1)           ## FFFFFFE8
/* 022CC 808D493C 8D880008 */  lw      $t0, 0x0008($t4)           ## 808D61D8
/* 022D0 808D4940 AE280008 */  sw      $t0, 0x0008($s1)           ## FFFFFFEC
/* 022D4 808D4944 8DEE0000 */  lw      $t6, 0x0000($t7)           ## 808D61DC
/* 022D8 808D4948 AE4E0000 */  sw      $t6, 0x0000($s2)           ## FFFFFFD8
/* 022DC 808D494C 8DF80004 */  lw      $t8, 0x0004($t7)           ## 808D61E0
/* 022E0 808D4950 AE580004 */  sw      $t8, 0x0004($s2)           ## FFFFFFDC
/* 022E4 808D4954 8DEE0008 */  lw      $t6, 0x0008($t7)           ## 808D61E4
/* 022E8 808D4958 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 022EC 808D495C AE4E0008 */  sw      $t6, 0x0008($s2)           ## FFFFFFE0
/* 022F0 808D4960 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 022F4 808D4964 44816000 */  mtc1    $at, $f12                  ## $f12 = 5.00
/* 022F8 808D4968 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 022FC 808D496C E7A0008C */  swc1    $f0, 0x008C($sp)           
/* 02300 808D4970 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 02304 808D4974 44812000 */  mtc1    $at, $f4                   ## $f4 = 8.00
/* 02308 808D4978 4600A306 */  mov.s   $f12, $f20                 
/* 0230C 808D497C 46040180 */  add.s   $f6, $f0, $f4              
/* 02310 808D4980 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 02314 808D4984 E7A60090 */  swc1    $f6, 0x0090($sp)           
/* 02318 808D4988 E7A00094 */  swc1    $f0, 0x0094($sp)           
/* 0231C 808D498C C6680038 */  lwc1    $f8, 0x0038($s3)           ## 00000038
/* 02320 808D4990 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 02324 808D4994 44816000 */  mtc1    $at, $f12                  ## $f12 = 10.00
/* 02328 808D4998 E7A80074 */  swc1    $f8, 0x0074($sp)           
/* 0232C 808D499C C66A003C */  lwc1    $f10, 0x003C($s3)          ## 0000003C
/* 02330 808D49A0 E7AA0078 */  swc1    $f10, 0x0078($sp)          
/* 02334 808D49A4 C6700040 */  lwc1    $f16, 0x0040($s3)          ## 00000040
/* 02338 808D49A8 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 0233C 808D49AC E7B0007C */  swc1    $f16, 0x007C($sp)          
/* 02340 808D49B0 4600048D */  trunc.w.s $f18, $f0                  
/* 02344 808D49B4 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 02348 808D49B8 02802825 */  or      $a1, $s4, $zero            ## $a1 = 00001970
/* 0234C 808D49BC 27A60074 */  addiu   $a2, $sp, 0x0074           ## $a2 = FFFFFFCC
/* 02350 808D49C0 44099000 */  mfc1    $t1, $f18                  
/* 02354 808D49C4 02203825 */  or      $a3, $s1, $zero            ## $a3 = FFFFFFE4
/* 02358 808D49C8 AFB20010 */  sw      $s2, 0x0010($sp)           
/* 0235C 808D49CC 00095400 */  sll     $t2, $t1, 16               
/* 02360 808D49D0 000A5C03 */  sra     $t3, $t2, 16               
/* 02364 808D49D4 256C000A */  addiu   $t4, $t3, 0x000A           ## $t4 = 0000000A
/* 02368 808D49D8 448C2000 */  mtc1    $t4, $f4                   ## $f4 = 0.00
/* 0236C 808D49DC 00000000 */  nop
/* 02370 808D49E0 468021A0 */  cvt.s.w $f6, $f4                   
/* 02374 808D49E4 0C23499C */  jal     func_808D2670              
/* 02378 808D49E8 E7A60014 */  swc1    $f6, 0x0014($sp)           
/* 0237C 808D49EC 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 02380 808D49F0 00108400 */  sll     $s0, $s0, 16               
/* 02384 808D49F4 00108403 */  sra     $s0, $s0, 16               
/* 02388 808D49F8 2A01001E */  slti    $at, $s0, 0x001E           
/* 0238C 808D49FC 1420FFC6 */  bne     $at, $zero, .L808D4918     
/* 02390 808D4A00 00000000 */  nop
/* 02394 808D4A04 1000008F */  beq     $zero, $zero, .L808D4C44   
/* 02398 808D4A08 8FBF003C */  lw      $ra, 0x003C($sp)           
.L808D4A0C:
/* 0239C 808D4A0C 0C018D74 */  jal     func_800635D0              
/* 023A0 808D4A10 8E040000 */  lw      $a0, 0x0000($s0)           ## 00000001
/* 023A4 808D4A14 14400009 */  bne     $v0, $zero, .L808D4A3C     
/* 023A8 808D4A18 305100FF */  andi    $s1, $v0, 0x00FF           ## $s1 = 00000000
/* 023AC 808D4A1C 8E020000 */  lw      $v0, 0x0000($s0)           ## 00000001
/* 023B0 808D4A20 304D1000 */  andi    $t5, $v0, 0x1000           ## $t5 = 00000000
/* 023B4 808D4A24 11A00003 */  beq     $t5, $zero, .L808D4A34     
/* 023B8 808D4A28 00000000 */  nop
/* 023BC 808D4A2C 10000005 */  beq     $zero, $zero, .L808D4A44   
/* 023C0 808D4A30 24110004 */  addiu   $s1, $zero, 0x0004         ## $s1 = 00000004
.L808D4A34:
/* 023C4 808D4A34 10000003 */  beq     $zero, $zero, .L808D4A44   
/* 023C8 808D4A38 24110002 */  addiu   $s1, $zero, 0x0002         ## $s1 = 00000002
.L808D4A3C:
/* 023CC 808D4A3C 24120001 */  addiu   $s2, $zero, 0x0001         ## $s2 = 00000001
/* 023D0 808D4A40 8E020000 */  lw      $v0, 0x0000($s0)           ## 00000001
.L808D4A44:
/* 023D4 808D4A44 30480080 */  andi    $t0, $v0, 0x0080           ## $t0 = 00000000
/* 023D8 808D4A48 11000002 */  beq     $t0, $zero, .L808D4A54     
/* 023DC 808D4A4C 8FAF009C */  lw      $t7, 0x009C($sp)           
/* 023E0 808D4A50 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
.L808D4A54:
/* 023E4 808D4A54 91E200AF */  lbu     $v0, 0x00AF($t7)           ## 000000AF
/* 023E8 808D4A58 02208025 */  or      $s0, $s1, $zero            ## $s0 = 00000000
/* 023EC 808D4A5C 8FA9009C */  lw      $t1, 0x009C($sp)           
/* 023F0 808D4A60 0002C600 */  sll     $t8, $v0, 24               
/* 023F4 808D4A64 00187603 */  sra     $t6, $t8, 24               
/* 023F8 808D4A68 29C10003 */  slti    $at, $t6, 0x0003           
/* 023FC 808D4A6C 10200002 */  beq     $at, $zero, .L808D4A78     
/* 02400 808D4A70 0051C823 */  subu    $t9, $v0, $s1              
/* 02404 808D4A74 12400008 */  beq     $s2, $zero, .L808D4A98     
.L808D4A78:
/* 02408 808D4A78 3C04808D */  lui     $a0, %hi(D_808D637C)       ## $a0 = 808D0000
/* 0240C 808D4A7C A13900AF */  sb      $t9, 0x00AF($t1)           ## 000000AF
/* 02410 808D4A80 0C00084C */  jal     osSyncPrintf
              
/* 02414 808D4A84 2484637C */  addiu   $a0, $a0, %lo(D_808D637C)  ## $a0 = 808D637C
/* 02418 808D4A88 3C04808D */  lui     $a0, %hi(D_808D6384)       ## $a0 = 808D0000
/* 0241C 808D4A8C 24846384 */  addiu   $a0, $a0, %lo(D_808D6384)  ## $a0 = 808D6384
/* 02420 808D4A90 0C00084C */  jal     osSyncPrintf
              
/* 02424 808D4A94 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
.L808D4A98:
/* 02428 808D4A98 3C04808D */  lui     $a0, %hi(D_808D6394)       ## $a0 = 808D0000
/* 0242C 808D4A9C 0C00084C */  jal     osSyncPrintf
              
/* 02430 808D4AA0 24846394 */  addiu   $a0, $a0, %lo(D_808D6394)  ## $a0 = 808D6394
/* 02434 808D4AA4 8FAA009C */  lw      $t2, 0x009C($sp)           
/* 02438 808D4AA8 3C04808D */  lui     $a0, %hi(D_808D6398)       ## $a0 = 808D0000
/* 0243C 808D4AAC 24846398 */  addiu   $a0, $a0, %lo(D_808D6398)  ## $a0 = 808D6398
/* 02440 808D4AB0 0C00084C */  jal     osSyncPrintf
              
/* 02444 808D4AB4 914500AF */  lbu     $a1, 0x00AF($t2)           ## 000000AF
/* 02448 808D4AB8 8FAB009C */  lw      $t3, 0x009C($sp)           
/* 0244C 808D4ABC 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 02450 808D4AC0 02A02825 */  or      $a1, $s5, $zero            ## $a1 = 00000000
/* 02454 808D4AC4 816C00AF */  lb      $t4, 0x00AF($t3)           ## 000000AF
/* 02458 808D4AC8 1D800012 */  bgtz    $t4, .L808D4B14            
/* 0245C 808D4ACC 00000000 */  nop
/* 02460 808D4AD0 0C234FB2 */  jal     func_808D3EC8              
/* 02464 808D4AD4 A16000AF */  sb      $zero, 0x00AF($t3)         ## 000000AF
/* 02468 808D4AD8 240D000A */  addiu   $t5, $zero, 0x000A         ## $t5 = 0000000A
/* 0246C 808D4ADC 24087530 */  addiu   $t0, $zero, 0x7530         ## $t0 = 00007530
/* 02470 808D4AE0 3C041001 */  lui     $a0, 0x1001                ## $a0 = 10010000
/* 02474 808D4AE4 A66D01A6 */  sh      $t5, 0x01A6($s3)           ## 000001A6
/* 02478 808D4AE8 A66801AA */  sh      $t0, 0x01AA($s3)           ## 000001AA
/* 0247C 808D4AEC 0C03E803 */  jal     Audio_SetBGM
              
/* 02480 808D4AF0 348400FF */  ori     $a0, $a0, 0x00FF           ## $a0 = 100100FF
/* 02484 808D4AF4 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 02488 808D4AF8 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 0248C 808D4AFC 240538D9 */  addiu   $a1, $zero, 0x38D9         ## $a1 = 000038D9
/* 02490 808D4B00 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 02494 808D4B04 0C00CB1F */  jal     func_80032C7C              
/* 02498 808D4B08 02602825 */  or      $a1, $s3, $zero            ## $a1 = 00000000
/* 0249C 808D4B0C 1000000C */  beq     $zero, $zero, .L808D4B40   
/* 024A0 808D4B10 00000000 */  nop
.L808D4B14:
/* 024A4 808D4B14 1220000A */  beq     $s1, $zero, .L808D4B40     
/* 024A8 808D4B18 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 024AC 808D4B1C 0C234F4E */  jal     func_808D3D38              
/* 024B0 808D4B20 02A02825 */  or      $a1, $s5, $zero            ## $a1 = 00000000
/* 024B4 808D4B24 240F000A */  addiu   $t7, $zero, 0x000A         ## $t7 = 0000000A
/* 024B8 808D4B28 24180064 */  addiu   $t8, $zero, 0x0064         ## $t8 = 00000064
/* 024BC 808D4B2C A66F01A6 */  sh      $t7, 0x01A6($s3)           ## 000001A6
/* 024C0 808D4B30 A67801AA */  sh      $t8, 0x01AA($s3)           ## 000001AA
/* 024C4 808D4B34 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 024C8 808D4B38 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 024CC 808D4B3C 240538D5 */  addiu   $a1, $zero, 0x38D5         ## $a1 = 000038D5
.L808D4B40:
/* 024D0 808D4B40 1220003F */  beq     $s1, $zero, .L808D4C40     
/* 024D4 808D4B44 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 024D8 808D4B48 8FB4009C */  lw      $s4, 0x009C($sp)           
/* 024DC 808D4B4C 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 024E0 808D4B50 4481A000 */  mtc1    $at, $f20                  ## $f20 = 6.00
/* 024E4 808D4B54 27B20058 */  addiu   $s2, $sp, 0x0058           ## $s2 = FFFFFFB0
/* 024E8 808D4B58 27B10064 */  addiu   $s1, $sp, 0x0064           ## $s1 = FFFFFFBC
/* 024EC 808D4B5C 26941970 */  addiu   $s4, $s4, 0x1970           ## $s4 = 000032E0
.L808D4B60:
/* 024F0 808D4B60 3C0E808D */  lui     $t6, %hi(D_808D61E8)       ## $t6 = 808D0000
/* 024F4 808D4B64 25CE61E8 */  addiu   $t6, $t6, %lo(D_808D61E8)  ## $t6 = 808D61E8
/* 024F8 808D4B68 8DC90000 */  lw      $t1, 0x0000($t6)           ## 808D61E8
/* 024FC 808D4B6C 3C0A808D */  lui     $t2, %hi(D_808D61F4)       ## $t2 = 808D0000
/* 02500 808D4B70 254A61F4 */  addiu   $t2, $t2, %lo(D_808D61F4)  ## $t2 = 808D61F4
/* 02504 808D4B74 AE290000 */  sw      $t1, 0x0000($s1)           ## FFFFFFBC
/* 02508 808D4B78 8DD90004 */  lw      $t9, 0x0004($t6)           ## 808D61EC
/* 0250C 808D4B7C 4600A306 */  mov.s   $f12, $f20                 
/* 02510 808D4B80 AE390004 */  sw      $t9, 0x0004($s1)           ## FFFFFFC0
/* 02514 808D4B84 8DC90008 */  lw      $t1, 0x0008($t6)           ## 808D61F0
/* 02518 808D4B88 AE290008 */  sw      $t1, 0x0008($s1)           ## FFFFFFC4
/* 0251C 808D4B8C 8D4B0000 */  lw      $t3, 0x0000($t2)           ## 808D61F4
/* 02520 808D4B90 AE4B0000 */  sw      $t3, 0x0000($s2)           ## FFFFFFB0
/* 02524 808D4B94 8D4C0004 */  lw      $t4, 0x0004($t2)           ## 808D61F8
/* 02528 808D4B98 AE4C0004 */  sw      $t4, 0x0004($s2)           ## FFFFFFB4
/* 0252C 808D4B9C 8D4B0008 */  lw      $t3, 0x0008($t2)           ## 808D61FC
/* 02530 808D4BA0 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 02534 808D4BA4 AE4B0008 */  sw      $t3, 0x0008($s2)           ## FFFFFFB8
/* 02538 808D4BA8 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 0253C 808D4BAC 44816000 */  mtc1    $at, $f12                  ## $f12 = 4.00
/* 02540 808D4BB0 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 02544 808D4BB4 E7A00064 */  swc1    $f0, 0x0064($sp)           
/* 02548 808D4BB8 46140200 */  add.s   $f8, $f0, $f20             
/* 0254C 808D4BBC 4600A306 */  mov.s   $f12, $f20                 
/* 02550 808D4BC0 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 02554 808D4BC4 E7A80068 */  swc1    $f8, 0x0068($sp)           
/* 02558 808D4BC8 E7A0006C */  swc1    $f0, 0x006C($sp)           
/* 0255C 808D4BCC C66A0038 */  lwc1    $f10, 0x0038($s3)          ## 00000038
/* 02560 808D4BD0 4600A306 */  mov.s   $f12, $f20                 
/* 02564 808D4BD4 E7AA004C */  swc1    $f10, 0x004C($sp)          
/* 02568 808D4BD8 C670003C */  lwc1    $f16, 0x003C($s3)          ## 0000003C
/* 0256C 808D4BDC E7B00050 */  swc1    $f16, 0x0050($sp)          
/* 02570 808D4BE0 C6720040 */  lwc1    $f18, 0x0040($s3)          ## 00000040
/* 02574 808D4BE4 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 02578 808D4BE8 E7B20054 */  swc1    $f18, 0x0054($sp)          
/* 0257C 808D4BEC 4600010D */  trunc.w.s $f4, $f0                   
/* 02580 808D4BF0 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 02584 808D4BF4 02802825 */  or      $a1, $s4, $zero            ## $a1 = 000032E0
/* 02588 808D4BF8 27A6004C */  addiu   $a2, $sp, 0x004C           ## $a2 = FFFFFFA4
/* 0258C 808D4BFC 44082000 */  mfc1    $t0, $f4                   
/* 02590 808D4C00 02203825 */  or      $a3, $s1, $zero            ## $a3 = FFFFFFBC
/* 02594 808D4C04 AFB20010 */  sw      $s2, 0x0010($sp)           
/* 02598 808D4C08 00087C00 */  sll     $t7, $t0, 16               
/* 0259C 808D4C0C 000FC403 */  sra     $t8, $t7, 16               
/* 025A0 808D4C10 270E000A */  addiu   $t6, $t8, 0x000A           ## $t6 = 0000000A
/* 025A4 808D4C14 448E3000 */  mtc1    $t6, $f6                   ## $f6 = 0.00
/* 025A8 808D4C18 00000000 */  nop
/* 025AC 808D4C1C 46803220 */  cvt.s.w $f8, $f6                   
/* 025B0 808D4C20 0C234A4C */  jal     func_808D2930              
/* 025B4 808D4C24 E7A80014 */  swc1    $f8, 0x0014($sp)           
/* 025B8 808D4C28 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 025BC 808D4C2C 00108400 */  sll     $s0, $s0, 16               
/* 025C0 808D4C30 00108403 */  sra     $s0, $s0, 16               
/* 025C4 808D4C34 2A01001E */  slti    $at, $s0, 0x001E           
/* 025C8 808D4C38 1420FFC9 */  bne     $at, $zero, .L808D4B60     
/* 025CC 808D4C3C 00000000 */  nop
.L808D4C40:
/* 025D0 808D4C40 8FBF003C */  lw      $ra, 0x003C($sp)           
.L808D4C44:
/* 025D4 808D4C44 D7B40018 */  ldc1    $f20, 0x0018($sp)          
/* 025D8 808D4C48 8FB00024 */  lw      $s0, 0x0024($sp)           
/* 025DC 808D4C4C 8FB10028 */  lw      $s1, 0x0028($sp)           
/* 025E0 808D4C50 8FB2002C */  lw      $s2, 0x002C($sp)           
/* 025E4 808D4C54 8FB30030 */  lw      $s3, 0x0030($sp)           
/* 025E8 808D4C58 8FB40034 */  lw      $s4, 0x0034($sp)           
/* 025EC 808D4C5C 8FB50038 */  lw      $s5, 0x0038($sp)           
/* 025F0 808D4C60 03E00008 */  jr      $ra                        
/* 025F4 808D4C64 27BD00A8 */  addiu   $sp, $sp, 0x00A8           ## $sp = 00000000


