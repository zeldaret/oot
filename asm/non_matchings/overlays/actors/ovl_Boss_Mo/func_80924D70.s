.late_rodata
glabel D_80926EBC
    .float 0.15

.text
glabel func_80924D70
/* 09270 80924D70 27BDFF40 */  addiu   $sp, $sp, 0xFF40           ## $sp = FFFFFF40
/* 09274 80924D74 AFB2004C */  sw      $s2, 0x004C($sp)           
/* 09278 80924D78 F7BA0038 */  sdc1    $f26, 0x0038($sp)          
/* 0927C 80924D7C F7B80030 */  sdc1    $f24, 0x0030($sp)          
/* 09280 80924D80 3C0F8092 */  lui     $t7, %hi(D_809264F4)       ## $t7 = 80920000
/* 09284 80924D84 AFBF005C */  sw      $ra, 0x005C($sp)           
/* 09288 80924D88 AFB50058 */  sw      $s5, 0x0058($sp)           
/* 0928C 80924D8C AFB40054 */  sw      $s4, 0x0054($sp)           
/* 09290 80924D90 AFB30050 */  sw      $s3, 0x0050($sp)           
/* 09294 80924D94 AFB10048 */  sw      $s1, 0x0048($sp)           
/* 09298 80924D98 AFB00044 */  sw      $s0, 0x0044($sp)           
/* 0929C 80924D9C F7B60028 */  sdc1    $f22, 0x0028($sp)          
/* 092A0 80924DA0 F7B40020 */  sdc1    $f20, 0x0020($sp)          
/* 092A4 80924DA4 AFA400C0 */  sw      $a0, 0x00C0($sp)           
/* 092A8 80924DA8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 092AC 80924DAC 25EF64F4 */  addiu   $t7, $t7, %lo(D_809264F4)  ## $t7 = 809264F4
/* 092B0 80924DB0 8DF90000 */  lw      $t9, 0x0000($t7)           ## 809264F4
/* 092B4 80924DB4 00A19021 */  addu    $s2, $a1, $at              
/* 092B8 80924DB8 3C01C38C */  lui     $at, 0xC38C                ## $at = C38C0000
/* 092BC 80924DBC 8E501E10 */  lw      $s0, 0x1E10($s2)           ## 00001E10
/* 092C0 80924DC0 27AE00A0 */  addiu   $t6, $sp, 0x00A0           ## $t6 = FFFFFFE0
/* 092C4 80924DC4 4481D000 */  mtc1    $at, $f26                  ## $f26 = -280.00
/* 092C8 80924DC8 3C01C1A0 */  lui     $at, 0xC1A0                ## $at = C1A00000
/* 092CC 80924DCC ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFE0
/* 092D0 80924DD0 8DF90008 */  lw      $t9, 0x0008($t7)           ## 809264FC
/* 092D4 80924DD4 8DF80004 */  lw      $t8, 0x0004($t7)           ## 809264F8
/* 092D8 80924DD8 4481C000 */  mtc1    $at, $f24                  ## $f24 = -20.00
/* 092DC 80924DDC 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 092E0 80924DE0 4481B000 */  mtc1    $at, $f22                  ## $f22 = 1.00
/* 092E4 80924DE4 4480A000 */  mtc1    $zero, $f20                ## $f20 = 0.00
/* 092E8 80924DE8 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 092EC 80924DEC 00009825 */  or      $s3, $zero, $zero          ## $s3 = 00000000
/* 092F0 80924DF0 24140004 */  addiu   $s4, $zero, 0x0004         ## $s4 = 00000004
/* 092F4 80924DF4 27B50078 */  addiu   $s5, $sp, 0x0078           ## $s5 = FFFFFFB8
/* 092F8 80924DF8 ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFE8
/* 092FC 80924DFC ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFE4
.L80924E00:
/* 09300 80924E00 92080024 */  lbu     $t0, 0x0024($s0)           ## 00000024
/* 09304 80924E04 5100018C */  beql    $t0, $zero, .L80925438     
/* 09308 80924E08 26730001 */  addiu   $s3, $s3, 0x0001           ## $s3 = 00000001
/* 0930C 80924E0C 92090025 */  lbu     $t1, 0x0025($s0)           ## 00000025
/* 09310 80924E10 92020026 */  lbu     $v0, 0x0026($s0)           ## 00000026
/* 09314 80924E14 26040030 */  addiu   $a0, $s0, 0x0030           ## $a0 = 00000030
/* 09318 80924E18 252A0001 */  addiu   $t2, $t1, 0x0001           ## $t2 = 00000001
/* 0931C 80924E1C 14400017 */  bne     $v0, $zero, .L80924E7C     
/* 09320 80924E20 A20A0025 */  sb      $t2, 0x0025($s0)           ## 00000025
/* 09324 80924E24 C600000C */  lwc1    $f0, 0x000C($s0)           ## 0000000C
/* 09328 80924E28 C6040000 */  lwc1    $f4, 0x0000($s0)           ## 00000000
/* 0932C 80924E2C C6020010 */  lwc1    $f2, 0x0010($s0)           ## 00000010
/* 09330 80924E30 C6080004 */  lwc1    $f8, 0x0004($s0)           ## 00000004
/* 09334 80924E34 C60C0014 */  lwc1    $f12, 0x0014($s0)          ## 00000014
/* 09338 80924E38 C6100008 */  lwc1    $f16, 0x0008($s0)          ## 00000008
/* 0933C 80924E3C 46002180 */  add.s   $f6, $f4, $f0              
/* 09340 80924E40 C6040018 */  lwc1    $f4, 0x0018($s0)           ## 00000018
/* 09344 80924E44 46024280 */  add.s   $f10, $f8, $f2             
/* 09348 80924E48 C608001C */  lwc1    $f8, 0x001C($s0)           ## 0000001C
/* 0934C 80924E4C E6060000 */  swc1    $f6, 0x0000($s0)           ## 00000000
/* 09350 80924E50 460C8480 */  add.s   $f18, $f16, $f12           
/* 09354 80924E54 C6100020 */  lwc1    $f16, 0x0020($s0)          ## 00000020
/* 09358 80924E58 E60A0004 */  swc1    $f10, 0x0004($s0)          ## 00000004
/* 0935C 80924E5C 46040180 */  add.s   $f6, $f0, $f4              
/* 09360 80924E60 E6120008 */  swc1    $f18, 0x0008($s0)          ## 00000008
/* 09364 80924E64 46081280 */  add.s   $f10, $f2, $f8             
/* 09368 80924E68 E606000C */  swc1    $f6, 0x000C($s0)           ## 0000000C
/* 0936C 80924E6C 46106480 */  add.s   $f18, $f12, $f16           
/* 09370 80924E70 E60A0010 */  swc1    $f10, 0x0010($s0)          ## 00000010
/* 09374 80924E74 10000003 */  beq     $zero, $zero, .L80924E84   
/* 09378 80924E78 E6120014 */  swc1    $f18, 0x0014($s0)          ## 00000014
.L80924E7C:
/* 0937C 80924E7C 244BFFFF */  addiu   $t3, $v0, 0xFFFF           ## $t3 = FFFFFFFF
/* 09380 80924E80 A20B0026 */  sb      $t3, 0x0026($s0)           ## 00000026
.L80924E84:
/* 09384 80924E84 92020024 */  lbu     $v0, 0x0024($s0)           ## 00000024
/* 09388 80924E88 3C063E4C */  lui     $a2, 0x3E4C                ## $a2 = 3E4C0000
/* 0938C 80924E8C 8FAC00C0 */  lw      $t4, 0x00C0($sp)           
/* 09390 80924E90 28410003 */  slti    $at, $v0, 0x0003           
/* 09394 80924E94 10200028 */  beq     $at, $zero, .L80924F38     
/* 09398 80924E98 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3E4CCCCD
/* 0939C 80924E9C 858D0F60 */  lh      $t5, 0x0F60($t4)           ## 00000F60
/* 093A0 80924EA0 29A10064 */  slti    $at, $t5, 0x0064           
/* 093A4 80924EA4 54200009 */  bnel    $at, $zero, .L80924ECC     
/* 093A8 80924EA8 8E050034 */  lw      $a1, 0x0034($s0)           ## 00000034
/* 093AC 80924EAC 8E2E07C0 */  lw      $t6, 0x07C0($s1)           ## 000007C0
/* 093B0 80924EB0 8DCF0028 */  lw      $t7, 0x0028($t6)           ## 00000008
/* 093B4 80924EB4 85F80002 */  lh      $t8, 0x0002($t7)           ## 809264F6
/* 093B8 80924EB8 44982000 */  mtc1    $t8, $f4                   ## $f4 = 0.00
/* 093BC 80924EBC 00000000 */  nop
/* 093C0 80924EC0 468021A0 */  cvt.s.w $f6, $f4                   
/* 093C4 80924EC4 E6060004 */  swc1    $f6, 0x0004($s0)           ## 00000004
/* 093C8 80924EC8 8E050034 */  lw      $a1, 0x0034($s0)           ## 00000034
.L80924ECC:
/* 093CC 80924ECC 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 093D0 80924ED0 8E070038 */  lw      $a3, 0x0038($s0)           ## 00000038
/* 093D4 80924ED4 8619002C */  lh      $t9, 0x002C($s0)           ## 0000002C
/* 093D8 80924ED8 5720000F */  bnel    $t9, $zero, .L80924F18     
/* 093DC 80924EDC 860D002A */  lh      $t5, 0x002A($s0)           ## 0000002A
/* 093E0 80924EE0 8608002A */  lh      $t0, 0x002A($s0)           ## 0000002A
/* 093E4 80924EE4 8602002E */  lh      $v0, 0x002E($s0)           ## 0000002E
/* 093E8 80924EE8 2509000F */  addiu   $t1, $t0, 0x000F           ## $t1 = 0000000F
/* 093EC 80924EEC A609002A */  sh      $t1, 0x002A($s0)           ## 0000002A
/* 093F0 80924EF0 860A002A */  lh      $t2, 0x002A($s0)           ## 0000002A
/* 093F4 80924EF4 0142082A */  slt     $at, $t2, $v0              
/* 093F8 80924EF8 5420014F */  bnel    $at, $zero, .L80925438     
/* 093FC 80924EFC 26730001 */  addiu   $s3, $s3, 0x0001           ## $s3 = 00000002
/* 09400 80924F00 860B002C */  lh      $t3, 0x002C($s0)           ## 0000002C
/* 09404 80924F04 A602002A */  sh      $v0, 0x002A($s0)           ## 0000002A
/* 09408 80924F08 256C0001 */  addiu   $t4, $t3, 0x0001           ## $t4 = 00000001
/* 0940C 80924F0C 10000149 */  beq     $zero, $zero, .L80925434   
/* 09410 80924F10 A60C002C */  sh      $t4, 0x002C($s0)           ## 0000002C
/* 09414 80924F14 860D002A */  lh      $t5, 0x002A($s0)           ## 0000002A
.L80924F18:
/* 09418 80924F18 25AEFFFB */  addiu   $t6, $t5, 0xFFFB           ## $t6 = FFFFFFFB
/* 0941C 80924F1C A60E002A */  sh      $t6, 0x002A($s0)           ## 0000002A
/* 09420 80924F20 860F002A */  lh      $t7, 0x002A($s0)           ## 0000002A
/* 09424 80924F24 5DE00144 */  bgtzl   $t7, .L80925438            
/* 09428 80924F28 26730001 */  addiu   $s3, $s3, 0x0001           ## $s3 = 00000003
/* 0942C 80924F2C A600002A */  sh      $zero, 0x002A($s0)         ## 0000002A
/* 09430 80924F30 10000140 */  beq     $zero, $zero, .L80925434   
/* 09434 80924F34 A2000024 */  sb      $zero, 0x0024($s0)         ## 00000024
.L80924F38:
/* 09438 80924F38 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 0943C 80924F3C 5441006C */  bnel    $v0, $at, .L809250F0       
/* 09440 80924F40 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 09444 80924F44 8E03003C */  lw      $v1, 0x003C($s0)           ## 0000003C
/* 09448 80924F48 54600028 */  bnel    $v1, $zero, .L80924FEC     
/* 0944C 80924F4C 920C0025 */  lbu     $t4, 0x0025($s0)           ## 00000025
/* 09450 80924F50 C608001C */  lwc1    $f8, 0x001C($s0)           ## 0000001C
/* 09454 80924F54 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 09458 80924F58 4608A03C */  c.lt.s  $f20, $f8                  
/* 0945C 80924F5C 00000000 */  nop
/* 09460 80924F60 4502000F */  bc1fl   .L80924FA0                 
/* 09464 80924F64 44812000 */  mtc1    $at, $f4                   ## $f4 = 2.00
/* 09468 80924F68 8E3807C0 */  lw      $t8, 0x07C0($s1)           ## 000007C0
/* 0946C 80924F6C C60A0004 */  lwc1    $f10, 0x0004($s0)          ## 00000004
/* 09470 80924F70 8F190028 */  lw      $t9, 0x0028($t8)           ## 00000028
/* 09474 80924F74 87280002 */  lh      $t0, 0x0002($t9)           ## 00000002
/* 09478 80924F78 44888000 */  mtc1    $t0, $f16                  ## $f16 = 0.00
/* 0947C 80924F7C 00000000 */  nop
/* 09480 80924F80 468084A0 */  cvt.s.w $f18, $f16                 
/* 09484 80924F84 460A903E */  c.le.s  $f18, $f10                 
/* 09488 80924F88 00000000 */  nop
/* 0948C 80924F8C 45020004 */  bc1fl   .L80924FA0                 
/* 09490 80924F90 44812000 */  mtc1    $at, $f4                   ## $f4 = 2.00
/* 09494 80924F94 10000127 */  beq     $zero, $zero, .L80925434   
/* 09498 80924F98 A2000024 */  sb      $zero, 0x0024($s0)         ## 00000024
/* 0949C 80924F9C 44812000 */  mtc1    $at, $f4                   ## $f4 = 2.00
.L80924FA0:
/* 094A0 80924FA0 C6060010 */  lwc1    $f6, 0x0010($s0)           ## 00000010
/* 094A4 80924FA4 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 094A8 80924FA8 4606203C */  c.lt.s  $f4, $f6                   
/* 094AC 80924FAC 00000000 */  nop
/* 094B0 80924FB0 45020005 */  bc1fl   .L80924FC8                 
/* 094B4 80924FB4 8609002A */  lh      $t1, 0x002A($s0)           ## 0000002A
/* 094B8 80924FB8 44814000 */  mtc1    $at, $f8                   ## $f8 = 2.00
/* 094BC 80924FBC 00000000 */  nop
/* 094C0 80924FC0 E6080010 */  swc1    $f8, 0x0010($s0)           ## 00000010
/* 094C4 80924FC4 8609002A */  lh      $t1, 0x002A($s0)           ## 0000002A
.L80924FC8:
/* 094C8 80924FC8 252AFFEC */  addiu   $t2, $t1, 0xFFEC           ## $t2 = FFFFFFFB
/* 094CC 80924FCC A60A002A */  sh      $t2, 0x002A($s0)           ## 0000002A
/* 094D0 80924FD0 860B002A */  lh      $t3, 0x002A($s0)           ## 0000002A
/* 094D4 80924FD4 5D600118 */  bgtzl   $t3, .L80925438            
/* 094D8 80924FD8 26730001 */  addiu   $s3, $s3, 0x0001           ## $s3 = 00000004
/* 094DC 80924FDC A600002A */  sh      $zero, 0x002A($s0)         ## 0000002A
/* 094E0 80924FE0 10000114 */  beq     $zero, $zero, .L80925434   
/* 094E4 80924FE4 A2000024 */  sb      $zero, 0x0024($s0)         ## 00000024
/* 094E8 80924FE8 920C0025 */  lbu     $t4, 0x0025($s0)           ## 00000025
.L80924FEC:
/* 094EC 80924FEC 318D0003 */  andi    $t5, $t4, 0x0003           ## $t5 = 00000001
/* 094F0 80924FF0 55A00015 */  bnel    $t5, $zero, .L80925048     
/* 094F4 80924FF4 4406B000 */  mfc1    $a2, $f22                  
/* 094F8 80924FF8 C4700000 */  lwc1    $f16, 0x0000($v1)          ## 00000000
/* 094FC 80924FFC C60A0000 */  lwc1    $f10, 0x0000($s0)          ## 00000000
/* 09500 80925000 C4720008 */  lwc1    $f18, 0x0008($v1)          ## 00000008
/* 09504 80925004 C6040008 */  lwc1    $f4, 0x0008($s0)           ## 00000008
/* 09508 80925008 C6060034 */  lwc1    $f6, 0x0034($s0)           ## 00000034
/* 0950C 8092500C 460A8301 */  sub.s   $f12, $f16, $f10           
/* 09510 80925010 E7A600A8 */  swc1    $f6, 0x00A8($sp)           
/* 09514 80925014 0C03F494 */  jal     MathF_Atan2              
/* 09518 80925018 46049381 */  sub.s   $f14, $f18, $f4            
/* 0951C 8092501C 46000306 */  mov.s   $f12, $f0                  
/* 09520 80925020 0C034348 */  jal     Matrix_RotateY              
/* 09524 80925024 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 09528 80925028 27A400A0 */  addiu   $a0, $sp, 0x00A0           ## $a0 = FFFFFFE0
/* 0952C 8092502C 0C0346BD */  jal     Matrix_MultVec3f              
/* 09530 80925030 27A50094 */  addiu   $a1, $sp, 0x0094           ## $a1 = FFFFFFD4
/* 09534 80925034 C7A80094 */  lwc1    $f8, 0x0094($sp)           
/* 09538 80925038 E608000C */  swc1    $f8, 0x000C($s0)           ## 0000000C
/* 0953C 8092503C C7B0009C */  lwc1    $f16, 0x009C($sp)          
/* 09540 80925040 E6100014 */  swc1    $f16, 0x0014($s0)          ## 00000014
/* 09544 80925044 4406B000 */  mfc1    $a2, $f22                  
.L80925048:
/* 09548 80925048 26040034 */  addiu   $a0, $s0, 0x0034           ## $a0 = 00000034
/* 0954C 8092504C 3C0540A0 */  lui     $a1, 0x40A0                ## $a1 = 40A00000
/* 09550 80925050 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 09554 80925054 3C073F00 */  lui     $a3, 0x3F00                ## $a3 = 3F000000
/* 09558 80925058 920E0025 */  lbu     $t6, 0x0025($s0)           ## 00000025
/* 0955C 8092505C 29C10015 */  slti    $at, $t6, 0x0015           
/* 09560 80925060 54200019 */  bnel    $at, $zero, .L809250C8     
/* 09564 80925064 860B002A */  lh      $t3, 0x002A($s0)           ## 0000002A
/* 09568 80925068 860F002A */  lh      $t7, 0x002A($s0)           ## 0000002A
/* 0956C 8092506C 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 09570 80925070 44815000 */  mtc1    $at, $f10                  ## $f10 = 1.50
/* 09574 80925074 25F8FFE2 */  addiu   $t8, $t7, 0xFFE2           ## $t8 = FFFFFFE2
/* 09578 80925078 A618002A */  sh      $t8, 0x002A($s0)           ## 0000002A
/* 0957C 8092507C 8619002A */  lh      $t9, 0x002A($s0)           ## 0000002A
/* 09580 80925080 E60A001C */  swc1    $f10, 0x001C($s0)          ## 0000001C
/* 09584 80925084 5B20000D */  blezl   $t9, .L809250BC            
/* 09588 80925088 A600002A */  sh      $zero, 0x002A($s0)         ## 0000002A
/* 0958C 8092508C 8E2807C0 */  lw      $t0, 0x07C0($s1)           ## 000007C0
/* 09590 80925090 C6120004 */  lwc1    $f18, 0x0004($s0)          ## 00000004
/* 09594 80925094 8D090028 */  lw      $t1, 0x0028($t0)           ## 00000028
/* 09598 80925098 852A0002 */  lh      $t2, 0x0002($t1)           ## 00000002
/* 0959C 8092509C 448A2000 */  mtc1    $t2, $f4                   ## $f4 = 0.00
/* 095A0 809250A0 00000000 */  nop
/* 095A4 809250A4 468021A0 */  cvt.s.w $f6, $f4                   
/* 095A8 809250A8 4612303E */  c.le.s  $f6, $f18                  
/* 095AC 809250AC 00000000 */  nop
/* 095B0 809250B0 450200E1 */  bc1fl   .L80925438                 
/* 095B4 809250B4 26730001 */  addiu   $s3, $s3, 0x0001           ## $s3 = 00000005
/* 095B8 809250B8 A600002A */  sh      $zero, 0x002A($s0)         ## 0000002A
.L809250BC:
/* 095BC 809250BC 100000DD */  beq     $zero, $zero, .L80925434   
/* 095C0 809250C0 A2000024 */  sb      $zero, 0x0024($s0)         ## 00000024
/* 095C4 809250C4 860B002A */  lh      $t3, 0x002A($s0)           ## 0000002A
.L809250C8:
/* 095C8 809250C8 240E00FF */  addiu   $t6, $zero, 0x00FF         ## $t6 = 000000FF
/* 095CC 809250CC 256C001E */  addiu   $t4, $t3, 0x001E           ## $t4 = 0000001E
/* 095D0 809250D0 A60C002A */  sh      $t4, 0x002A($s0)           ## 0000002A
/* 095D4 809250D4 860D002A */  lh      $t5, 0x002A($s0)           ## 0000002A
/* 095D8 809250D8 29A100FF */  slti    $at, $t5, 0x00FF           
/* 095DC 809250DC 542000D6 */  bnel    $at, $zero, .L80925438     
/* 095E0 809250E0 26730001 */  addiu   $s3, $s3, 0x0001           ## $s3 = 00000006
/* 095E4 809250E4 100000D3 */  beq     $zero, $zero, .L80925434   
/* 095E8 809250E8 A60E002A */  sh      $t6, 0x002A($s0)           ## 0000002A
/* 095EC 809250EC 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
.L809250F0:
/* 095F0 809250F0 10410007 */  beq     $v0, $at, .L80925110       
/* 095F4 809250F4 26040034 */  addiu   $a0, $s0, 0x0034           ## $a0 = 00000034
/* 095F8 809250F8 12820005 */  beq     $s4, $v0, .L80925110       
/* 095FC 809250FC 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 09600 80925100 10410003 */  beq     $v0, $at, .L80925110       
/* 09604 80925104 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 09608 80925108 544100CB */  bnel    $v0, $at, .L80925438       
/* 0960C 8092510C 26730001 */  addiu   $s3, $s3, 0x0001           ## $s3 = 00000007
.L80925110:
/* 09610 80925110 920F0025 */  lbu     $t7, 0x0025($s0)           ## 00000025
/* 09614 80925114 4406B000 */  mfc1    $a2, $f22                  
/* 09618 80925118 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 0961C 8092511C 31F80006 */  andi    $t8, $t7, 0x0006           ## $t8 = 00000000
/* 09620 80925120 53000006 */  beql    $t8, $zero, .L8092513C     
/* 09624 80925124 44810000 */  mtc1    $at, $f0                   ## $f0 = 200.00
/* 09628 80925128 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 0962C 8092512C 44810000 */  mtc1    $at, $f0                   ## $f0 = 80.00
/* 09630 80925130 10000004 */  beq     $zero, $zero, .L80925144   
/* 09634 80925134 44050000 */  mfc1    $a1, $f0                   
/* 09638 80925138 44810000 */  mtc1    $at, $f0                   ## $f0 = 80.00
.L8092513C:
/* 0963C 8092513C 00000000 */  nop
/* 09640 80925140 44050000 */  mfc1    $a1, $f0                   
.L80925144:
/* 09644 80925144 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 09648 80925148 3C0742A0 */  lui     $a3, 0x42A0                ## $a3 = 42A00000
/* 0964C 8092514C 92020024 */  lbu     $v0, 0x0024($s0)           ## 00000024
/* 09650 80925150 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 09654 80925154 26040030 */  addiu   $a0, $s0, 0x0030           ## $a0 = 00000030
/* 09658 80925158 1441000F */  bne     $v0, $at, .L80925198       
/* 0965C 8092515C 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 09660 80925160 3C073F19 */  lui     $a3, 0x3F19                ## $a3 = 3F190000
/* 09664 80925164 34E7999A */  ori     $a3, $a3, 0x999A           ## $a3 = 3F19999A
/* 09668 80925168 8E050038 */  lw      $a1, 0x0038($s0)           ## 00000038
/* 0966C 8092516C 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 09670 80925170 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 09674 80925174 8619002A */  lh      $t9, 0x002A($s0)           ## 0000002A
/* 09678 80925178 2728FFF1 */  addiu   $t0, $t9, 0xFFF1           ## $t0 = FFFFFFF1
/* 0967C 8092517C A608002A */  sh      $t0, 0x002A($s0)           ## 0000002A
/* 09680 80925180 8609002A */  lh      $t1, 0x002A($s0)           ## 0000002A
/* 09684 80925184 5D2000AC */  bgtzl   $t1, .L80925438            
/* 09688 80925188 26730001 */  addiu   $s3, $s3, 0x0001           ## $s3 = 00000008
/* 0968C 8092518C A600002A */  sh      $zero, 0x002A($s0)         ## 0000002A
/* 09690 80925190 100000A8 */  beq     $zero, $zero, .L80925434   
/* 09694 80925194 A2000024 */  sb      $zero, 0x0024($s0)         ## 00000024
.L80925198:
/* 09698 80925198 C6080034 */  lwc1    $f8, 0x0034($s0)           ## 00000034
/* 0969C 8092519C 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 096A0 809251A0 26040030 */  addiu   $a0, $s0, 0x0030           ## $a0 = 00000030
/* 096A4 809251A4 4600440D */  trunc.w.s $f16, $f8                  
/* 096A8 809251A8 3C073CA3 */  lui     $a3, 0x3CA3                ## $a3 = 3CA30000
/* 096AC 809251AC 440B8000 */  mfc1    $t3, $f16                  
/* 096B0 809251B0 1441000C */  bne     $v0, $at, .L809251E4       
/* 096B4 809251B4 A60B002A */  sh      $t3, 0x002A($s0)           ## 0000002A
/* 096B8 809251B8 4405A000 */  mfc1    $a1, $f20                  
/* 096BC 809251BC 4406B000 */  mfc1    $a2, $f22                  
/* 096C0 809251C0 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 096C4 809251C4 34E7D70A */  ori     $a3, $a3, 0xD70A           ## $a3 = 3CA3D70A
/* 096C8 809251C8 C60A0030 */  lwc1    $f10, 0x0030($s0)          ## 00000030
/* 096CC 809251CC 4614503E */  c.le.s  $f10, $f20                 
/* 096D0 809251D0 00000000 */  nop
/* 096D4 809251D4 45020098 */  bc1fl   .L80925438                 
/* 096D8 809251D8 26730001 */  addiu   $s3, $s3, 0x0001           ## $s3 = 00000009
/* 096DC 809251DC 10000095 */  beq     $zero, $zero, .L80925434   
/* 096E0 809251E0 A2000024 */  sb      $zero, 0x0024($s0)         ## 00000024
.L809251E4:
/* 096E4 809251E4 1682000F */  bne     $s4, $v0, .L80925224       
/* 096E8 809251E8 3C0C8092 */  lui     $t4, %hi(D_80926500)       ## $t4 = 80920000
/* 096EC 809251EC 258C6500 */  addiu   $t4, $t4, %lo(D_80926500)  ## $t4 = 80926500
/* 096F0 809251F0 8D8E0000 */  lw      $t6, 0x0000($t4)           ## 80926500
/* 096F4 809251F4 27A70084 */  addiu   $a3, $sp, 0x0084           ## $a3 = FFFFFFC4
/* 096F8 809251F8 24040005 */  addiu   $a0, $zero, 0x0005         ## $a0 = 00000005
/* 096FC 809251FC ACEE0000 */  sw      $t6, 0x0000($a3)           ## FFFFFFC4
/* 09700 80925200 8D8D0004 */  lw      $t5, 0x0004($t4)           ## 80926504
/* 09704 80925204 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 09708 80925208 ACED0004 */  sw      $t5, 0x0004($a3)           ## FFFFFFC8
/* 0970C 8092520C 8D8E0008 */  lw      $t6, 0x0008($t4)           ## 80926508
/* 09710 80925210 ACEE0008 */  sw      $t6, 0x0008($a3)           ## FFFFFFCC
/* 09714 80925214 C6040030 */  lwc1    $f4, 0x0030($s0)           ## 00000030
/* 09718 80925218 8E451E10 */  lw      $a1, 0x1E10($s2)           ## 00001E10
/* 0971C 8092521C 0C246F97 */  jal     func_8091BE5C              
/* 09720 80925220 E7A40010 */  swc1    $f4, 0x0010($sp)           
.L80925224:
/* 09724 80925224 C6120010 */  lwc1    $f18, 0x0010($s0)          ## 00000010
/* 09728 80925228 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0972C 8092522C 4618903C */  c.lt.s  $f18, $f24                 
/* 09730 80925230 00000000 */  nop
/* 09734 80925234 45020004 */  bc1fl   .L80925248                 
/* 09738 80925238 92020026 */  lbu     $v0, 0x0026($s0)           ## 00000026
/* 0973C 8092523C E6180010 */  swc1    $f24, 0x0010($s0)          ## 00000010
/* 09740 80925240 E614001C */  swc1    $f20, 0x001C($s0)          ## 0000001C
/* 09744 80925244 92020026 */  lbu     $v0, 0x0026($s0)           ## 00000026
.L80925248:
/* 09748 80925248 14400010 */  bne     $v0, $zero, .L8092528C     
/* 0974C 8092524C 00000000 */  nop
/* 09750 80925250 3C01C0A0 */  lui     $at, 0xC0A0                ## $at = C0A00000
/* 09754 80925254 44814000 */  mtc1    $at, $f8                   ## $f8 = -5.00
/* 09758 80925258 C6060010 */  lwc1    $f6, 0x0010($s0)           ## 00000010
/* 0975C 8092525C 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 09760 80925260 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 09764 80925264 4608303C */  c.lt.s  $f6, $f8                   
/* 09768 80925268 26040038 */  addiu   $a0, $s0, 0x0038           ## $a0 = 00000038
/* 0976C 8092526C 3C0540A0 */  lui     $a1, 0x40A0                ## $a1 = 40A00000
/* 09770 80925270 3C073E19 */  lui     $a3, 0x3E19                ## $a3 = 3E190000
/* 09774 80925274 45020013 */  bc1fl   .L809252C4                 
/* 09778 80925278 C6000004 */  lwc1    $f0, 0x0004($s0)           ## 00000004
/* 0977C 8092527C 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 09780 80925280 34E7999A */  ori     $a3, $a3, 0x999A           ## $a3 = 3E19999A
/* 09784 80925284 1000000F */  beq     $zero, $zero, .L809252C4   
/* 09788 80925288 C6000004 */  lwc1    $f0, 0x0004($s0)           ## 00000004
.L8092528C:
/* 0978C 8092528C 1441000C */  bne     $v0, $at, .L809252C0       
/* 09790 80925290 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 09794 80925294 44816000 */  mtc1    $at, $f12                  ## $f12 = 3.00
/* 09798 80925298 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 0979C 8092529C 00000000 */  nop
/* 097A0 809252A0 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 097A4 809252A4 44816000 */  mtc1    $at, $f12                  ## $f12 = 3.00
/* 097A8 809252A8 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 097AC 809252AC E600000C */  swc1    $f0, 0x000C($s0)           ## 0000000C
/* 097B0 809252B0 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 097B4 809252B4 44818000 */  mtc1    $at, $f16                  ## $f16 = -1.00
/* 097B8 809252B8 E6000014 */  swc1    $f0, 0x0014($s0)           ## 00000014
/* 097BC 809252BC E610001C */  swc1    $f16, 0x001C($s0)          ## 0000001C
.L809252C0:
/* 097C0 809252C0 C6000004 */  lwc1    $f0, 0x0004($s0)           ## 00000004
.L809252C4:
/* 097C4 809252C4 461A003E */  c.le.s  $f0, $f26                  
/* 097C8 809252C8 00000000 */  nop
/* 097CC 809252CC 45030010 */  bc1tl   .L80925310                 
/* 097D0 809252D0 461A003E */  c.le.s  $f0, $f26                  
/* 097D4 809252D4 4616003E */  c.le.s  $f0, $f22                  
/* 097D8 809252D8 00000000 */  nop
/* 097DC 809252DC 45020022 */  bc1fl   .L80925368                 
/* 097E0 809252E0 8E3907C0 */  lw      $t9, 0x07C0($s1)           ## 000007C0
/* 097E4 809252E4 4600C03E */  c.le.s  $f24, $f0                  
/* 097E8 809252E8 00000000 */  nop
/* 097EC 809252EC 4502001E */  bc1fl   .L80925368                 
/* 097F0 809252F0 8E3907C0 */  lw      $t9, 0x07C0($s1)           ## 000007C0
/* 097F4 809252F4 4405A000 */  mfc1    $a1, $f20                  
/* 097F8 809252F8 0C246F10 */  jal     func_8091BC40              
/* 097FC 809252FC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 09800 80925300 50400019 */  beql    $v0, $zero, .L80925368     
/* 09804 80925304 8E3907C0 */  lw      $t9, 0x07C0($s1)           ## 000007C0
/* 09808 80925308 C6000004 */  lwc1    $f0, 0x0004($s0)           ## 00000004
/* 0980C 8092530C 461A003E */  c.le.s  $f0, $f26                  
.L80925310:
/* 09810 80925310 E614001C */  swc1    $f20, 0x001C($s0)          ## 0000001C
/* 09814 80925314 E6140014 */  swc1    $f20, 0x0014($s0)          ## 00000014
/* 09818 80925318 E6140010 */  swc1    $f20, 0x0010($s0)          ## 00000010
/* 0981C 8092531C 45000003 */  bc1f    .L8092532C                 
/* 09820 80925320 E614000C */  swc1    $f20, 0x000C($s0)          ## 0000000C
/* 09824 80925324 10000002 */  beq     $zero, $zero, .L80925330   
/* 09828 80925328 E61A0004 */  swc1    $f26, 0x0004($s0)          ## 00000004
.L8092532C:
/* 0982C 8092532C E6140004 */  swc1    $f20, 0x0004($s0)          ## 00000004
.L80925330:
/* 09830 80925330 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 09834 80925334 44812000 */  mtc1    $at, $f4                   ## $f4 = 15.00
/* 09838 80925338 C60A0030 */  lwc1    $f10, 0x0030($s0)          ## 00000030
/* 0983C 8092533C 240F0006 */  addiu   $t7, $zero, 0x0006         ## $t7 = 00000006
/* 09840 80925340 24180096 */  addiu   $t8, $zero, 0x0096         ## $t8 = 00000096
/* 09844 80925344 46045482 */  mul.s   $f18, $f10, $f4            
/* 09848 80925348 A20F0024 */  sb      $t7, 0x0024($s0)           ## 00000024
/* 0984C 8092534C A618002A */  sh      $t8, 0x002A($s0)           ## 0000002A
/* 09850 80925350 3C018092 */  lui     $at, %hi(D_80926EBC)       ## $at = 80920000
/* 09854 80925354 C4266EBC */  lwc1    $f6, %lo(D_80926EBC)($at)  
/* 09858 80925358 46069202 */  mul.s   $f8, $f18, $f6             
/* 0985C 8092535C 10000035 */  beq     $zero, $zero, .L80925434   
/* 09860 80925360 E6080038 */  swc1    $f8, 0x0038($s0)           ## 00000038
/* 09864 80925364 8E3907C0 */  lw      $t9, 0x07C0($s1)           ## 000007C0
.L80925368:
/* 09868 80925368 C6040004 */  lwc1    $f4, 0x0004($s0)           ## 00000004
/* 0986C 8092536C 8F280028 */  lw      $t0, 0x0028($t9)           ## 00000028
/* 09870 80925370 85090002 */  lh      $t1, 0x0002($t0)           ## 00000002
/* 09874 80925374 44898000 */  mtc1    $t1, $f16                  ## $f16 = 0.00
/* 09878 80925378 00000000 */  nop
/* 0987C 8092537C 468082A0 */  cvt.s.w $f10, $f16                 
/* 09880 80925380 460A203E */  c.le.s  $f4, $f10                  
/* 09884 80925384 00000000 */  nop
/* 09888 80925388 4502002B */  bc1fl   .L80925438                 
/* 0988C 8092538C 26730001 */  addiu   $s3, $s3, 0x0001           ## $s3 = 0000000A
/* 09890 80925390 8E0B0000 */  lw      $t3, 0x0000($s0)           ## 00000000
/* 09894 80925394 24180050 */  addiu   $t8, $zero, 0x0050         ## $t8 = 00000050
/* 09898 80925398 24190122 */  addiu   $t9, $zero, 0x0122         ## $t9 = 00000122
/* 0989C 8092539C AEAB0000 */  sw      $t3, 0x0000($s5)           ## FFFFFFB8
/* 098A0 809253A0 8E0A0004 */  lw      $t2, 0x0004($s0)           ## 00000004
/* 098A4 809253A4 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 098A8 809253A8 02A02825 */  or      $a1, $s5, $zero            ## $a1 = FFFFFFB8
/* 098AC 809253AC AEAA0004 */  sw      $t2, 0x0004($s5)           ## FFFFFFBC
/* 098B0 809253B0 8E0B0008 */  lw      $t3, 0x0008($s0)           ## 00000008
/* 098B4 809253B4 240A0122 */  addiu   $t2, $zero, 0x0122         ## $t2 = 00000122
/* 098B8 809253B8 3C064220 */  lui     $a2, 0x4220                ## $a2 = 42200000
/* 098BC 809253BC AEAB0008 */  sw      $t3, 0x0008($s5)           ## FFFFFFC0
/* 098C0 809253C0 8E2C07C0 */  lw      $t4, 0x07C0($s1)           ## 000007C0
/* 098C4 809253C4 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 098C8 809253C8 3C0742DC */  lui     $a3, 0x42DC                ## $a3 = 42DC0000
/* 098CC 809253CC 8D8D0028 */  lw      $t5, 0x0028($t4)           ## 00000028
/* 098D0 809253D0 24090050 */  addiu   $t1, $zero, 0x0050         ## $t1 = 00000050
/* 098D4 809253D4 85AE0002 */  lh      $t6, 0x0002($t5)           ## 00000002
/* 098D8 809253D8 448E9000 */  mtc1    $t6, $f18                  ## $f18 = 0.00
/* 098DC 809253DC 00000000 */  nop
/* 098E0 809253E0 468091A0 */  cvt.s.w $f6, $f18                  
/* 098E4 809253E4 E7A6007C */  swc1    $f6, 0x007C($sp)           
/* 098E8 809253E8 920F0024 */  lbu     $t7, 0x0024($s0)           ## 00000024
/* 098EC 809253EC 568F000C */  bnel    $s4, $t7, .L80925420       
/* 098F0 809253F0 8E441E10 */  lw      $a0, 0x1E10($s2)           ## 00001E10
/* 098F4 809253F4 8E441E10 */  lw      $a0, 0x1E10($s2)           ## 00001E10
/* 098F8 809253F8 AFA80018 */  sw      $t0, 0x0018($sp)           
/* 098FC 809253FC AFB90014 */  sw      $t9, 0x0014($sp)           
/* 09900 80925400 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 09904 80925404 02A02825 */  or      $a1, $s5, $zero            ## $a1 = FFFFFFB8
/* 09908 80925408 3C064270 */  lui     $a2, 0x4270                ## $a2 = 42700000
/* 0990C 8092540C 0C246F4E */  jal     func_8091BD38              
/* 09910 80925410 3C074320 */  lui     $a3, 0x4320                ## $a3 = 43200000
/* 09914 80925414 10000007 */  beq     $zero, $zero, .L80925434   
/* 09918 80925418 A2000024 */  sb      $zero, 0x0024($s0)         ## 00000024
/* 0991C 8092541C 8E441E10 */  lw      $a0, 0x1E10($s2)           ## 00001E10
.L80925420:
/* 09920 80925420 AFAB0018 */  sw      $t3, 0x0018($sp)           
/* 09924 80925424 AFAA0014 */  sw      $t2, 0x0014($sp)           
/* 09928 80925428 0C246F4E */  jal     func_8091BD38              
/* 0992C 8092542C AFA90010 */  sw      $t1, 0x0010($sp)           
/* 09930 80925430 A2000024 */  sb      $zero, 0x0024($s0)         ## 00000024
.L80925434:
/* 09934 80925434 26730001 */  addiu   $s3, $s3, 0x0001           ## $s3 = 0000000B
.L80925438:
/* 09938 80925438 00139C00 */  sll     $s3, $s3, 16               
/* 0993C 8092543C 00139C03 */  sra     $s3, $s3, 16               
/* 09940 80925440 2A61012C */  slti    $at, $s3, 0x012C           
/* 09944 80925444 1420FE6E */  bne     $at, $zero, .L80924E00     
/* 09948 80925448 26100040 */  addiu   $s0, $s0, 0x0040           ## $s0 = 00000040
/* 0994C 8092544C 8FBF005C */  lw      $ra, 0x005C($sp)           
/* 09950 80925450 D7B40020 */  ldc1    $f20, 0x0020($sp)          
/* 09954 80925454 D7B60028 */  ldc1    $f22, 0x0028($sp)          
/* 09958 80925458 D7B80030 */  ldc1    $f24, 0x0030($sp)          
/* 0995C 8092545C D7BA0038 */  ldc1    $f26, 0x0038($sp)          
/* 09960 80925460 8FB00044 */  lw      $s0, 0x0044($sp)           
/* 09964 80925464 8FB10048 */  lw      $s1, 0x0048($sp)           
/* 09968 80925468 8FB2004C */  lw      $s2, 0x004C($sp)           
/* 0996C 8092546C 8FB30050 */  lw      $s3, 0x0050($sp)           
/* 09970 80925470 8FB40054 */  lw      $s4, 0x0054($sp)           
/* 09974 80925474 8FB50058 */  lw      $s5, 0x0058($sp)           
/* 09978 80925478 03E00008 */  jr      $ra                        
/* 0997C 8092547C 27BD00C0 */  addiu   $sp, $sp, 0x00C0           ## $sp = 00000000
