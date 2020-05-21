.late_rodata
glabel D_80AD7280
 .word 0x3F48C8C9

.text
glabel func_80AD58D4
/* 01DD4 80AD58D4 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 01DD8 80AD58D8 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 01DDC 80AD58DC AFB00028 */  sw      $s0, 0x0028($sp)           
/* 01DE0 80AD58E0 84820196 */  lh      $v0, 0x0196($a0)           ## 00000196
/* 01DE4 80AD58E4 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 01DE8 80AD58E8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01DEC 80AD58EC 10400003 */  beq     $v0, $zero, .L80AD58FC     
/* 01DF0 80AD58F0 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
/* 01DF4 80AD58F4 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 01DF8 80AD58F8 A48E0196 */  sh      $t6, 0x0196($a0)           ## 00000196
.L80AD58FC:
/* 01DFC 80AD58FC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01E00 80AD5900 0C00BC65 */  jal     func_8002F194              
/* 01E04 80AD5904 AFA70034 */  sw      $a3, 0x0034($sp)           
/* 01E08 80AD5908 10400005 */  beq     $v0, $zero, .L80AD5920     
/* 01E0C 80AD590C 8FA70034 */  lw      $a3, 0x0034($sp)           
/* 01E10 80AD5910 0C2B5113 */  jal     func_80AD444C              
/* 01E14 80AD5914 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01E18 80AD5918 1000006B */  beq     $zero, $zero, .L80AD5AC8   
/* 01E1C 80AD591C 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80AD5920:
/* 01E20 80AD5920 860F0196 */  lh      $t7, 0x0196($s0)           ## 00000196
/* 01E24 80AD5924 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01E28 80AD5928 55E0000D */  bnel    $t7, $zero, .L80AD5960     
/* 01E2C 80AD592C 92080256 */  lbu     $t0, 0x0256($s0)           ## 00000256
/* 01E30 80AD5930 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01E34 80AD5934 240538EC */  addiu   $a1, $zero, 0x38EC         ## $a1 = 000038EC
/* 01E38 80AD5938 8E180004 */  lw      $t8, 0x0004($s0)           ## 00000004
/* 01E3C 80AD593C 3C01FFFE */  lui     $at, 0xFFFE                ## $at = FFFE0000
/* 01E40 80AD5940 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = FFFEFFFF
/* 01E44 80AD5944 0301C824 */  and     $t9, $t8, $at              
/* 01E48 80AD5948 AE190004 */  sw      $t9, 0x0004($s0)           ## 00000004
/* 01E4C 80AD594C 0C2B510F */  jal     func_80AD443C              
/* 01E50 80AD5950 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01E54 80AD5954 1000005C */  beq     $zero, $zero, .L80AD5AC8   
/* 01E58 80AD5958 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 01E5C 80AD595C 92080256 */  lbu     $t0, 0x0256($s0)           ## 00000256
.L80AD5960:
/* 01E60 80AD5960 3C01FFFE */  lui     $at, 0xFFFE                ## $at = FFFE0000
/* 01E64 80AD5964 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01E68 80AD5968 31090002 */  andi    $t1, $t0, 0x0002           ## $t1 = 00000000
/* 01E6C 80AD596C 11200009 */  beq     $t1, $zero, .L80AD5994     
/* 01E70 80AD5970 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = FFFEFFFF
/* 01E74 80AD5974 8E0A0004 */  lw      $t2, 0x0004($s0)           ## 00000004
/* 01E78 80AD5978 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01E7C 80AD597C 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
/* 01E80 80AD5980 01415825 */  or      $t3, $t2, $at              ## $t3 = 00010000
/* 01E84 80AD5984 0C00BCBD */  jal     func_8002F2F4              
/* 01E88 80AD5988 AE0B0004 */  sw      $t3, 0x0004($s0)           ## 00000004
/* 01E8C 80AD598C 1000000B */  beq     $zero, $zero, .L80AD59BC   
/* 01E90 80AD5990 92040194 */  lbu     $a0, 0x0194($s0)           ## 00000194
.L80AD5994:
/* 01E94 80AD5994 8E0C0004 */  lw      $t4, 0x0004($s0)           ## 00000004
/* 01E98 80AD5998 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 01E9C 80AD599C 26060244 */  addiu   $a2, $s0, 0x0244           ## $a2 = 00000244
/* 01EA0 80AD59A0 01816824 */  and     $t5, $t4, $at              
/* 01EA4 80AD59A4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01EA8 80AD59A8 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 01EAC 80AD59AC AE0D0004 */  sw      $t5, 0x0004($s0)           ## 00000004
/* 01EB0 80AD59B0 0C017713 */  jal     CollisionCheck_SetOC
              ## CollisionCheck_setOT
/* 01EB4 80AD59B4 00E12821 */  addu    $a1, $a3, $at              
/* 01EB8 80AD59B8 92040194 */  lbu     $a0, 0x0194($s0)           ## 00000194
.L80AD59BC:
/* 01EBC 80AD59BC 000422C0 */  sll     $a0, $a0, 11               
/* 01EC0 80AD59C0 00042400 */  sll     $a0, $a0, 16               
/* 01EC4 80AD59C4 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 01EC8 80AD59C8 00042403 */  sra     $a0, $a0, 16               
/* 01ECC 80AD59CC 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 01ED0 80AD59D0 44812000 */  mtc1    $at, $f4                   ## $f4 = 5.00
/* 01ED4 80AD59D4 C608000C */  lwc1    $f8, 0x000C($s0)           ## 0000000C
/* 01ED8 80AD59D8 92020194 */  lbu     $v0, 0x0194($s0)           ## 00000194
/* 01EDC 80AD59DC 46040182 */  mul.s   $f6, $f0, $f4              
/* 01EE0 80AD59E0 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 01EE4 80AD59E4 44819000 */  mtc1    $at, $f18                  ## $f18 = 20.00
/* 01EE8 80AD59E8 240F0020 */  addiu   $t7, $zero, 0x0020         ## $t7 = 00000020
/* 01EEC 80AD59EC 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 01EF0 80AD59F0 46083280 */  add.s   $f10, $f6, $f8             
/* 01EF4 80AD59F4 10400003 */  beq     $v0, $zero, .L80AD5A04     
/* 01EF8 80AD59F8 E60A0028 */  swc1    $f10, 0x0028($s0)          ## 00000028
/* 01EFC 80AD59FC A20E0194 */  sb      $t6, 0x0194($s0)           ## 00000194
/* 01F00 80AD5A00 31C200FF */  andi    $v0, $t6, 0x00FF           ## $v0 = 000000FF
.L80AD5A04:
/* 01F04 80AD5A04 54400003 */  bnel    $v0, $zero, .L80AD5A14     
/* 01F08 80AD5A08 C6100028 */  lwc1    $f16, 0x0028($s0)          ## 00000028
/* 01F0C 80AD5A0C A20F0194 */  sb      $t7, 0x0194($s0)           ## 00000194
/* 01F10 80AD5A10 C6100028 */  lwc1    $f16, 0x0028($s0)          ## 00000028
.L80AD5A14:
/* 01F14 80AD5A14 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01F18 80AD5A18 3C05C120 */  lui     $a1, 0xC120                ## $a1 = C1200000
/* 01F1C 80AD5A1C 46128101 */  sub.s   $f4, $f16, $f18            
/* 01F20 80AD5A20 4600218D */  trunc.w.s $f6, $f4                   
/* 01F24 80AD5A24 44193000 */  mfc1    $t9, $f6                   
/* 01F28 80AD5A28 0C00B56E */  jal     Actor_SetHeight
              
/* 01F2C 80AD5A2C A619028C */  sh      $t9, 0x028C($s0)           ## 0000028C
/* 01F30 80AD5A30 920B023C */  lbu     $t3, 0x023C($s0)           ## 0000023C
/* 01F34 80AD5A34 C6080024 */  lwc1    $f8, 0x0024($s0)           ## 00000024
/* 01F38 80AD5A38 C6100028 */  lwc1    $f16, 0x0028($s0)          ## 00000028
/* 01F3C 80AD5A3C C604002C */  lwc1    $f4, 0x002C($s0)           ## 0000002C
/* 01F40 80AD5A40 AFAB0010 */  sw      $t3, 0x0010($sp)           
/* 01F44 80AD5A44 920C023D */  lbu     $t4, 0x023D($s0)           ## 0000023D
/* 01F48 80AD5A48 4600428D */  trunc.w.s $f10, $f8                  
/* 01F4C 80AD5A4C 26040234 */  addiu   $a0, $s0, 0x0234           ## $a0 = 00000234
/* 01F50 80AD5A50 AFAC0014 */  sw      $t4, 0x0014($sp)           
/* 01F54 80AD5A54 920D023E */  lbu     $t5, 0x023E($s0)           ## 0000023E
/* 01F58 80AD5A58 4600848D */  trunc.w.s $f18, $f16                 
/* 01F5C 80AD5A5C 44055000 */  mfc1    $a1, $f10                  
/* 01F60 80AD5A60 AFAD0018 */  sw      $t5, 0x0018($sp)           
/* 01F64 80AD5A64 4600218D */  trunc.w.s $f6, $f4                   
/* 01F68 80AD5A68 920E0217 */  lbu     $t6, 0x0217($s0)           ## 00000217
/* 01F6C 80AD5A6C 44069000 */  mfc1    $a2, $f18                  
/* 01F70 80AD5A70 00052C00 */  sll     $a1, $a1, 16               
/* 01F74 80AD5A74 44073000 */  mfc1    $a3, $f6                   
/* 01F78 80AD5A78 448E4000 */  mtc1    $t6, $f8                   ## $f8 = 0.00
/* 01F7C 80AD5A7C 00063400 */  sll     $a2, $a2, 16               
/* 01F80 80AD5A80 00073C00 */  sll     $a3, $a3, 16               
/* 01F84 80AD5A84 00073C03 */  sra     $a3, $a3, 16               
/* 01F88 80AD5A88 00063403 */  sra     $a2, $a2, 16               
/* 01F8C 80AD5A8C 00052C03 */  sra     $a1, $a1, 16               
/* 01F90 80AD5A90 05C10005 */  bgez    $t6, .L80AD5AA8            
/* 01F94 80AD5A94 468042A0 */  cvt.s.w $f10, $f8                  
/* 01F98 80AD5A98 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 01F9C 80AD5A9C 44818000 */  mtc1    $at, $f16                  ## $f16 = 4294967296.00
/* 01FA0 80AD5AA0 00000000 */  nop
/* 01FA4 80AD5AA4 46105280 */  add.s   $f10, $f10, $f16           
.L80AD5AA8:
/* 01FA8 80AD5AA8 3C0180AD */  lui     $at, %hi(D_80AD7280)       ## $at = 80AD0000
/* 01FAC 80AD5AAC C4327280 */  lwc1    $f18, %lo(D_80AD7280)($at) 
/* 01FB0 80AD5AB0 46125102 */  mul.s   $f4, $f10, $f18            
/* 01FB4 80AD5AB4 4600218D */  trunc.w.s $f6, $f4                   
/* 01FB8 80AD5AB8 44183000 */  mfc1    $t8, $f6                   
/* 01FBC 80AD5ABC 0C01E763 */  jal     Lights_InitType0PositionalLight
              
/* 01FC0 80AD5AC0 AFB8001C */  sw      $t8, 0x001C($sp)           
/* 01FC4 80AD5AC4 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80AD5AC8:
/* 01FC8 80AD5AC8 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 01FCC 80AD5ACC 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 01FD0 80AD5AD0 03E00008 */  jr      $ra                        
/* 01FD4 80AD5AD4 00000000 */  nop
