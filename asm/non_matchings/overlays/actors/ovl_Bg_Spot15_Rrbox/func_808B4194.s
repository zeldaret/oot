glabel func_808B4194
/* 00834 808B4194 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00838 808B4198 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0083C 808B419C AFB10018 */  sw      $s1, 0x0018($sp)           
/* 00840 808B41A0 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 00844 808B41A4 8CAE1C44 */  lw      $t6, 0x1C44($a1)           ## 00001C44
/* 00848 808B41A8 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 0084C 808B41AC 44811000 */  mtc1    $at, $f2                   ## $f2 = 2.00
/* 00850 808B41B0 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00854 808B41B4 AFAE0028 */  sw      $t6, 0x0028($sp)           
/* 00858 808B41B8 C4840174 */  lwc1    $f4, 0x0174($a0)           ## 00000174
/* 0085C 808B41BC 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.50
/* 00860 808B41C0 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00864 808B41C4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00868 808B41C8 46062200 */  add.s   $f8, $f4, $f6              
/* 0086C 808B41CC 3C0541A0 */  lui     $a1, 0x41A0                ## $a1 = 41A00000
/* 00870 808B41D0 E4880174 */  swc1    $f8, 0x0174($a0)           ## 00000174
/* 00874 808B41D4 C4800174 */  lwc1    $f0, 0x0174($a0)           ## 00000174
/* 00878 808B41D8 4600103C */  c.lt.s  $f2, $f0                   
/* 0087C 808B41DC 00000000 */  nop
/* 00880 808B41E0 45020004 */  bc1fl   .L808B41F4                 
/* 00884 808B41E4 E6000174 */  swc1    $f0, 0x0174($s0)           ## 00000174
/* 00888 808B41E8 10000002 */  beq     $zero, $zero, .L808B41F4   
/* 0088C 808B41EC E4820174 */  swc1    $f2, 0x0174($a0)           ## 00000174
/* 00890 808B41F0 E6000174 */  swc1    $f0, 0x0174($s0)           ## 00000174
.L808B41F4:
/* 00894 808B41F4 26040178 */  addiu   $a0, $s0, 0x0178           ## $a0 = 00000178
/* 00898 808B41F8 0C01DE80 */  jal     Math_ApproxF
              
/* 0089C 808B41FC 8E060174 */  lw      $a2, 0x0174($s0)           ## 00000174
/* 008A0 808B4200 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 008A4 808B4204 C60A017C */  lwc1    $f10, 0x017C($s0)          ## 0000017C
/* 008A8 808B4208 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
/* 008AC 808B420C 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 008B0 808B4210 460A603E */  c.le.s  $f12, $f10                 
/* 008B4 808B4214 00000000 */  nop
/* 008B8 808B4218 45020006 */  bc1fl   .L808B4234                 
/* 008BC 808B421C 44811000 */  mtc1    $at, $f2                   ## $f2 = -1.00
/* 008C0 808B4220 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 008C4 808B4224 44811000 */  mtc1    $at, $f2                   ## $f2 = 1.00
/* 008C8 808B4228 10000004 */  beq     $zero, $zero, .L808B423C   
/* 008CC 808B422C C6100178 */  lwc1    $f16, 0x0178($s0)          ## 00000178
/* 008D0 808B4230 44811000 */  mtc1    $at, $f2                   ## $f2 = 1.00
.L808B4234:
/* 008D4 808B4234 00000000 */  nop
/* 008D8 808B4238 C6100178 */  lwc1    $f16, 0x0178($s0)          ## 00000178
.L808B423C:
/* 008DC 808B423C C604016C */  lwc1    $f4, 0x016C($s0)           ## 0000016C
/* 008E0 808B4240 C6120008 */  lwc1    $f18, 0x0008($s0)          ## 00000008
/* 008E4 808B4244 46101002 */  mul.s   $f0, $f2, $f16             
/* 008E8 808B4248 C6100170 */  lwc1    $f16, 0x0170($s0)          ## 00000170
/* 008EC 808B424C C60A0010 */  lwc1    $f10, 0x0010($s0)          ## 00000010
/* 008F0 808B4250 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 008F4 808B4254 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 008F8 808B4258 46040182 */  mul.s   $f6, $f0, $f4              
/* 008FC 808B425C 00000000 */  nop
/* 00900 808B4260 46100102 */  mul.s   $f4, $f0, $f16             
/* 00904 808B4264 46069200 */  add.s   $f8, $f18, $f6             
/* 00908 808B4268 46045480 */  add.s   $f18, $f10, $f4            
/* 0090C 808B426C E6080024 */  swc1    $f8, 0x0024($s0)           ## 00000024
/* 00910 808B4270 E612002C */  swc1    $f18, 0x002C($s0)          ## 0000002C
/* 00914 808B4274 0C22CFD6 */  jal     func_808B3F58              
/* 00918 808B4278 AFA30020 */  sw      $v1, 0x0020($sp)           
/* 0091C 808B427C 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 00920 808B4280 14400012 */  bne     $v0, $zero, .L808B42CC     
/* 00924 808B4284 8FA30020 */  lw      $v1, 0x0020($sp)           
/* 00928 808B4288 8FA20028 */  lw      $v0, 0x0028($sp)           
/* 0092C 808B428C C6060024 */  lwc1    $f6, 0x0024($s0)           ## 00000024
/* 00930 808B4290 C608002C */  lwc1    $f8, 0x002C($s0)           ## 0000002C
/* 00934 808B4294 2401FFEF */  addiu   $at, $zero, 0xFFEF         ## $at = FFFFFFEF
/* 00938 808B4298 E6060008 */  swc1    $f6, 0x0008($s0)           ## 00000008
/* 0093C 808B429C E6080010 */  swc1    $f8, 0x0010($s0)           ## 00000010
/* 00940 808B42A0 8C4F0680 */  lw      $t7, 0x0680($v0)           ## 00000680
/* 00944 808B42A4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00948 808B42A8 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 0094C 808B42AC 01E1C024 */  and     $t8, $t7, $at              
/* 00950 808B42B0 AC580680 */  sw      $t8, 0x0680($v0)           ## 00000680
/* 00954 808B42B4 E60C0150 */  swc1    $f12, 0x0150($s0)          ## 00000150
/* 00958 808B42B8 E60C0178 */  swc1    $f12, 0x0178($s0)          ## 00000178
/* 0095C 808B42BC 0C22D0E0 */  jal     func_808B4380              
/* 00960 808B42C0 E60C0174 */  swc1    $f12, 0x0174($s0)          ## 00000174
/* 00964 808B42C4 10000027 */  beq     $zero, $zero, .L808B4364   
/* 00968 808B42C8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L808B42CC:
/* 0096C 808B42CC 10600024 */  beq     $v1, $zero, .L808B4360     
/* 00970 808B42D0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00974 808B42D4 8E391C44 */  lw      $t9, 0x1C44($s1)           ## 00001C44
/* 00978 808B42D8 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 0097C 808B42DC 0C22D004 */  jal     func_808B4010              
/* 00980 808B42E0 AFB90028 */  sw      $t9, 0x0028($sp)           
/* 00984 808B42E4 10400003 */  beq     $v0, $zero, .L808B42F4     
/* 00988 808B42E8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0098C 808B42EC 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00990 808B42F0 240528C9 */  addiu   $a1, $zero, 0x28C9         ## $a1 = 000028C9
.L808B42F4:
/* 00994 808B42F4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00998 808B42F8 0C22CE90 */  jal     func_808B3A40              
/* 0099C 808B42FC 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 009A0 808B4300 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 009A4 808B4304 50400006 */  beql    $v0, $zero, .L808B4320     
/* 009A8 808B4308 C6100024 */  lwc1    $f16, 0x0024($s0)          ## 00000024
/* 009AC 808B430C 0C01E221 */  jal     func_80078884              
/* 009B0 808B4310 24044802 */  addiu   $a0, $zero, 0x4802         ## $a0 = 00004802
/* 009B4 808B4314 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 009B8 808B4318 00000000 */  nop
/* 009BC 808B431C C6100024 */  lwc1    $f16, 0x0024($s0)          ## 00000024
.L808B4320:
/* 009C0 808B4320 C60A002C */  lwc1    $f10, 0x002C($s0)          ## 0000002C
/* 009C4 808B4324 2401FFEF */  addiu   $at, $zero, 0xFFEF         ## $at = FFFFFFEF
/* 009C8 808B4328 E6100008 */  swc1    $f16, 0x0008($s0)          ## 00000008
/* 009CC 808B432C E60A0010 */  swc1    $f10, 0x0010($s0)          ## 00000010
/* 009D0 808B4330 8FA80028 */  lw      $t0, 0x0028($sp)           
/* 009D4 808B4334 240B000A */  addiu   $t3, $zero, 0x000A         ## $t3 = 0000000A
/* 009D8 808B4338 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 009DC 808B433C 8D090680 */  lw      $t1, 0x0680($t0)           ## 00000680
/* 009E0 808B4340 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 009E4 808B4344 01215024 */  and     $t2, $t1, $at              
/* 009E8 808B4348 AD0A0680 */  sw      $t2, 0x0680($t0)           ## 00000680
/* 009EC 808B434C E60C0150 */  swc1    $f12, 0x0150($s0)          ## 00000150
/* 009F0 808B4350 E60C0178 */  swc1    $f12, 0x0178($s0)          ## 00000178
/* 009F4 808B4354 E60C0174 */  swc1    $f12, 0x0174($s0)          ## 00000174
/* 009F8 808B4358 0C22D021 */  jal     func_808B4084              
/* 009FC 808B435C A60B0168 */  sh      $t3, 0x0168($s0)           ## 00000168
.L808B4360:
/* 00A00 808B4360 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L808B4364:
/* 00A04 808B4364 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00A08 808B4368 2405200A */  addiu   $a1, $zero, 0x200A         ## $a1 = 0000200A
/* 00A0C 808B436C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00A10 808B4370 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 00A14 808B4374 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 00A18 808B4378 03E00008 */  jr      $ra                        
/* 00A1C 808B437C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
