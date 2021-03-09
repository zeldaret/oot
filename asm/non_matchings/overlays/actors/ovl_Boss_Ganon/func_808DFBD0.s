.rdata
glabel D_808F7BA4
    .asciz "../z_boss_ganon.c"
    .balign 4

glabel D_808F7BB8
    .asciz "../z_boss_ganon.c"
    .balign 4

glabel D_808F7BCC
    .asciz "../z_boss_ganon.c"
    .balign 4

.late_rodata
glabel D_808F814C
    .float -0.6

glabel D_808F8150
    .float 1.8

glabel D_808F8154
    .float -1.4

glabel D_808F8158
    .float 1.1

glabel D_808F815C
    .float -0.99999994

.text
glabel func_808DFBD0
/* 09360 808DFBD0 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 09364 808DFBD4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 09368 808DFBD8 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 0936C 808DFBDC AFB00014 */  sw      $s0, 0x0014($sp)           
/* 09370 808DFBE0 AFA5005C */  sw      $a1, 0x005C($sp)           
/* 09374 808DFBE4 C48601D8 */  lwc1    $f6, 0x01D8($a0)           ## 000001D8
/* 09378 808DFBE8 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 0937C 808DFBEC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 09380 808DFBF0 3C06808F */  lui     $a2, %hi(D_808F7BA4)       ## $a2 = 808F0000
/* 09384 808DFBF4 4606203C */  c.lt.s  $f4, $f6                   
/* 09388 808DFBF8 24C67BA4 */  addiu   $a2, $a2, %lo(D_808F7BA4)  ## $a2 = 808F7BA4
/* 0938C 808DFBFC 27A40040 */  addiu   $a0, $sp, 0x0040           ## $a0 = FFFFFFE8
/* 09390 808DFC00 450200ED */  bc1fl   .L808DFFB8                 
/* 09394 808DFC04 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 09398 808DFC08 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 0939C 808DFC0C 24071E34 */  addiu   $a3, $zero, 0x1E34         ## $a3 = 00001E34
/* 093A0 808DFC10 0C031AB1 */  jal     Graph_OpenDisps              
/* 093A4 808DFC14 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 093A8 808DFC18 0C034213 */  jal     Matrix_Push              
/* 093AC 808DFC1C 00000000 */  nop
/* 093B0 808DFC20 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 093B4 808DFC24 3C18E700 */  lui     $t8, 0xE700                ## $t8 = E7000000
/* 093B8 808DFC28 3C08FA00 */  lui     $t0, 0xFA00                ## $t0 = FA000000
/* 093BC 808DFC2C 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 093C0 808DFC30 AE2F02D0 */  sw      $t7, 0x02D0($s1)           ## 000002D0
/* 093C4 808DFC34 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 093C8 808DFC38 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 093CC 808DFC3C 8E2302D0 */  lw      $v1, 0x02D0($s1)           ## 000002D0
/* 093D0 808DFC40 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 093D4 808DFC44 3C01FFFF */  lui     $at, 0xFFFF                ## $at = FFFF0000
/* 093D8 808DFC48 24790008 */  addiu   $t9, $v1, 0x0008           ## $t9 = 00000008
/* 093DC 808DFC4C AE3902D0 */  sw      $t9, 0x02D0($s1)           ## 000002D0
/* 093E0 808DFC50 AC680000 */  sw      $t0, 0x0000($v1)           ## 00000000
/* 093E4 808DFC54 C60801D8 */  lwc1    $f8, 0x01D8($s0)           ## 000001D8
/* 093E8 808DFC58 C61001D4 */  lwc1    $f16, 0x01D4($s0)          ## 000001D4
/* 093EC 808DFC5C 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 093F0 808DFC60 4600428D */  trunc.w.s $f10, $f8                  
/* 093F4 808DFC64 444FF800 */  cfc1    $t7, $31
/* 093F8 808DFC68 44D8F800 */  ctc1    $t8, $31
/* 093FC 808DFC6C 440C5000 */  mfc1    $t4, $f10                  
/* 09400 808DFC70 460084A4 */  cvt.w.s $f18, $f16                 
/* 09404 808DFC74 318D00FF */  andi    $t5, $t4, 0x00FF           ## $t5 = 00000000
/* 09408 808DFC78 01A17025 */  or      $t6, $t5, $at              ## $t6 = FFFF0000
/* 0940C 808DFC7C 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 09410 808DFC80 4458F800 */  cfc1    $t8, $31
/* 09414 808DFC84 3C0CFB00 */  lui     $t4, 0xFB00                ## $t4 = FB000000
/* 09418 808DFC88 33180078 */  andi    $t8, $t8, 0x0078           ## $t8 = 00000000
/* 0941C 808DFC8C 53000013 */  beql    $t8, $zero, .L808DFCDC     
/* 09420 808DFC90 44189000 */  mfc1    $t8, $f18                  
/* 09424 808DFC94 44819000 */  mtc1    $at, $f18                  ## $f18 = 2147483648.00
/* 09428 808DFC98 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 0942C 808DFC9C 46128481 */  sub.s   $f18, $f16, $f18           
/* 09430 808DFCA0 44D8F800 */  ctc1    $t8, $31
/* 09434 808DFCA4 00000000 */  nop
/* 09438 808DFCA8 460094A4 */  cvt.w.s $f18, $f18                 
/* 0943C 808DFCAC 4458F800 */  cfc1    $t8, $31
/* 09440 808DFCB0 00000000 */  nop
/* 09444 808DFCB4 33180078 */  andi    $t8, $t8, 0x0078           ## $t8 = 00000000
/* 09448 808DFCB8 17000005 */  bne     $t8, $zero, .L808DFCD0     
/* 0944C 808DFCBC 00000000 */  nop
/* 09450 808DFCC0 44189000 */  mfc1    $t8, $f18                  
/* 09454 808DFCC4 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 09458 808DFCC8 10000007 */  beq     $zero, $zero, .L808DFCE8   
/* 0945C 808DFCCC 0301C025 */  or      $t8, $t8, $at              ## $t8 = 80000000
.L808DFCD0:
/* 09460 808DFCD0 10000005 */  beq     $zero, $zero, .L808DFCE8   
/* 09464 808DFCD4 2418FFFF */  addiu   $t8, $zero, 0xFFFF         ## $t8 = FFFFFFFF
/* 09468 808DFCD8 44189000 */  mfc1    $t8, $f18                  
.L808DFCDC:
/* 0946C 808DFCDC 00000000 */  nop
/* 09470 808DFCE0 0700FFFB */  bltz    $t8, .L808DFCD0            
/* 09474 808DFCE4 00000000 */  nop
.L808DFCE8:
/* 09478 808DFCE8 330800FF */  andi    $t0, $t8, 0x00FF           ## $t0 = 000000FF
/* 0947C 808DFCEC 00084A00 */  sll     $t1, $t0,  8               
/* 09480 808DFCF0 01C95025 */  or      $t2, $t6, $t1              ## $t2 = FFFF0000
/* 09484 808DFCF4 AC6A0004 */  sw      $t2, 0x0004($v1)           ## 00000004
/* 09488 808DFCF8 8E2302D0 */  lw      $v1, 0x02D0($s1)           ## 000002D0
/* 0948C 808DFCFC 44CFF800 */  ctc1    $t7, $31
/* 09490 808DFD00 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 09494 808DFD04 246B0008 */  addiu   $t3, $v1, 0x0008           ## $t3 = 00000008
/* 09498 808DFD08 AE2B02D0 */  sw      $t3, 0x02D0($s1)           ## 000002D0
/* 0949C 808DFD0C AC6C0000 */  sw      $t4, 0x0000($v1)           ## 00000000
/* 094A0 808DFD10 444DF800 */  cfc1    $t5, $31
/* 094A4 808DFD14 44CFF800 */  ctc1    $t7, $31
/* 094A8 808DFD18 C60401DC */  lwc1    $f4, 0x01DC($s0)           ## 000001DC
/* 094AC 808DFD1C 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 094B0 808DFD20 460021A4 */  cvt.w.s $f6, $f4                   
/* 094B4 808DFD24 444FF800 */  cfc1    $t7, $31
/* 094B8 808DFD28 00000000 */  nop
/* 094BC 808DFD2C 31EF0078 */  andi    $t7, $t7, 0x0078           ## $t7 = 00000000
/* 094C0 808DFD30 51E00013 */  beql    $t7, $zero, .L808DFD80     
/* 094C4 808DFD34 440F3000 */  mfc1    $t7, $f6                   
/* 094C8 808DFD38 44813000 */  mtc1    $at, $f6                   ## $f6 = 2147483648.00
/* 094CC 808DFD3C 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 094D0 808DFD40 46062181 */  sub.s   $f6, $f4, $f6              
/* 094D4 808DFD44 44CFF800 */  ctc1    $t7, $31
/* 094D8 808DFD48 00000000 */  nop
/* 094DC 808DFD4C 460031A4 */  cvt.w.s $f6, $f6                   
/* 094E0 808DFD50 444FF800 */  cfc1    $t7, $31
/* 094E4 808DFD54 00000000 */  nop
/* 094E8 808DFD58 31EF0078 */  andi    $t7, $t7, 0x0078           ## $t7 = 00000000
/* 094EC 808DFD5C 15E00005 */  bne     $t7, $zero, .L808DFD74     
/* 094F0 808DFD60 00000000 */  nop
/* 094F4 808DFD64 440F3000 */  mfc1    $t7, $f6                   
/* 094F8 808DFD68 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 094FC 808DFD6C 10000007 */  beq     $zero, $zero, .L808DFD8C   
/* 09500 808DFD70 01E17825 */  or      $t7, $t7, $at              ## $t7 = 80000000
.L808DFD74:
/* 09504 808DFD74 10000005 */  beq     $zero, $zero, .L808DFD8C   
/* 09508 808DFD78 240FFFFF */  addiu   $t7, $zero, 0xFFFF         ## $t7 = FFFFFFFF
/* 0950C 808DFD7C 440F3000 */  mfc1    $t7, $f6                   
.L808DFD80:
/* 09510 808DFD80 00000000 */  nop
/* 09514 808DFD84 05E0FFFB */  bltz    $t7, .L808DFD74            
/* 09518 808DFD88 00000000 */  nop
.L808DFD8C:
/* 0951C 808DFD8C 31F900FF */  andi    $t9, $t7, 0x00FF           ## $t9 = 000000FF
/* 09520 808DFD90 00194400 */  sll     $t0, $t9, 16               
/* 09524 808DFD94 3C01FF00 */  lui     $at, 0xFF00                ## $at = FF000000
/* 09528 808DFD98 01017025 */  or      $t6, $t0, $at              ## $t6 = FF0000FF
/* 0952C 808DFD9C 35C90080 */  ori     $t1, $t6, 0x0080           ## $t1 = FF0000FF
/* 09530 808DFDA0 AC690004 */  sw      $t1, 0x0004($v1)           ## 00000004
/* 09534 808DFDA4 860201AE */  lh      $v0, 0x01AE($s0)           ## 000001AE
/* 09538 808DFDA8 44CDF800 */  ctc1    $t5, $31
/* 0953C 808DFDAC 8FAA005C */  lw      $t2, 0x005C($sp)           
/* 09540 808DFDB0 14400018 */  bne     $v0, $zero, .L808DFE14     
/* 09544 808DFDB4 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 09548 808DFDB8 8D421C44 */  lw      $v0, 0x1C44($t2)           ## FFFF1C44
/* 0954C 808DFDBC 3C018090 */  lui     $at, %hi(D_808F814C)       ## $at = 80900000
/* 09550 808DFDC0 8C4C0998 */  lw      $t4, 0x0998($v0)           ## 00000998
/* 09554 808DFDC4 AE0C02D8 */  sw      $t4, 0x02D8($s0)           ## 000002D8
/* 09558 808DFDC8 8C4B099C */  lw      $t3, 0x099C($v0)           ## 0000099C
/* 0955C 808DFDCC C60802D8 */  lwc1    $f8, 0x02D8($s0)           ## 000002D8
/* 09560 808DFDD0 AE0B02DC */  sw      $t3, 0x02DC($s0)           ## 000002DC
/* 09564 808DFDD4 8C4C09A0 */  lw      $t4, 0x09A0($v0)           ## 000009A0
/* 09568 808DFDD8 C61202DC */  lwc1    $f18, 0x02DC($s0)          ## 000002DC
/* 0956C 808DFDDC AE0C02E0 */  sw      $t4, 0x02E0($s0)           ## 000002E0
/* 09570 808DFDE0 C42A814C */  lwc1    $f10, %lo(D_808F814C)($at) 
/* 09574 808DFDE4 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 09578 808DFDE8 44812000 */  mtc1    $at, $f4                   ## $f4 = 3.00
/* 0957C 808DFDEC 460A4400 */  add.s   $f16, $f8, $f10            
/* 09580 808DFDF0 3C01C000 */  lui     $at, 0xC000                ## $at = C0000000
/* 09584 808DFDF4 44815000 */  mtc1    $at, $f10                  ## $f10 = -2.00
/* 09588 808DFDF8 C60802E0 */  lwc1    $f8, 0x02E0($s0)           ## 000002E0
/* 0958C 808DFDFC E61002D8 */  swc1    $f16, 0x02D8($s0)          ## 000002D8
/* 09590 808DFE00 46049180 */  add.s   $f6, $f18, $f4             
/* 09594 808DFE04 460A4400 */  add.s   $f16, $f8, $f10            
/* 09598 808DFE08 E60602DC */  swc1    $f6, 0x02DC($s0)           ## 000002DC
/* 0959C 808DFE0C 10000014 */  beq     $zero, $zero, .L808DFE60   
/* 095A0 808DFE10 E61002E0 */  swc1    $f16, 0x02E0($s0)          ## 000002E0
.L808DFE14:
/* 095A4 808DFE14 14410012 */  bne     $v0, $at, .L808DFE60       
/* 095A8 808DFE18 3C0D8090 */  lui     $t5, %hi(D_808F93D4)       ## $t5 = 80900000
/* 095AC 808DFE1C 8DAD93D4 */  lw      $t5, %lo(D_808F93D4)($t5)  
/* 095B0 808DFE20 3C018090 */  lui     $at, %hi(D_808F8150)       ## $at = 80900000
/* 095B4 808DFE24 8DB8031C */  lw      $t8, 0x031C($t5)           ## 8090031C
/* 095B8 808DFE28 AE1802D8 */  sw      $t8, 0x02D8($s0)           ## 000002D8
/* 095BC 808DFE2C 8DAF0320 */  lw      $t7, 0x0320($t5)           ## 80900320
/* 095C0 808DFE30 AE0F02DC */  sw      $t7, 0x02DC($s0)           ## 000002DC
/* 095C4 808DFE34 8DB80324 */  lw      $t8, 0x0324($t5)           ## 80900324
/* 095C8 808DFE38 C61202DC */  lwc1    $f18, 0x02DC($s0)          ## 000002DC
/* 095CC 808DFE3C AE1802E0 */  sw      $t8, 0x02E0($s0)           ## 000002E0
/* 095D0 808DFE40 C4248150 */  lwc1    $f4, %lo(D_808F8150)($at)  
/* 095D4 808DFE44 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 095D8 808DFE48 44815000 */  mtc1    $at, $f10                  ## $f10 = 4.00
/* 095DC 808DFE4C C60802E0 */  lwc1    $f8, 0x02E0($s0)           ## 000002E0
/* 095E0 808DFE50 46049180 */  add.s   $f6, $f18, $f4             
/* 095E4 808DFE54 460A4400 */  add.s   $f16, $f8, $f10            
/* 095E8 808DFE58 E60602DC */  swc1    $f6, 0x02DC($s0)           ## 000002DC
/* 095EC 808DFE5C E61002E0 */  swc1    $f16, 0x02E0($s0)          ## 000002E0
.L808DFE60:
/* 095F0 808DFE60 C60C02D8 */  lwc1    $f12, 0x02D8($s0)          ## 000002D8
/* 095F4 808DFE64 C60E02DC */  lwc1    $f14, 0x02DC($s0)          ## 000002DC
/* 095F8 808DFE68 0C034261 */  jal     Matrix_Translate              
/* 095FC 808DFE6C 8E0602E0 */  lw      $a2, 0x02E0($s0)           ## 000002E0
/* 09600 808DFE70 860201AE */  lh      $v0, 0x01AE($s0)           ## 000001AE
/* 09604 808DFE74 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 09608 808DFE78 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0960C 808DFE7C 1440000A */  bne     $v0, $zero, .L808DFEA8     
/* 09610 808DFE80 00000000 */  nop
/* 09614 808DFE84 3C018090 */  lui     $at, %hi(D_808F8154)       ## $at = 80900000
/* 09618 808DFE88 0C0342DC */  jal     Matrix_RotateX              
/* 0961C 808DFE8C C42C8154 */  lwc1    $f12, %lo(D_808F8154)($at) 
/* 09620 808DFE90 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 09624 808DFE94 44816000 */  mtc1    $at, $f12                  ## $f12 = 4.00
/* 09628 808DFE98 0C0343B5 */  jal     Matrix_RotateZ              
/* 0962C 808DFE9C 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 09630 808DFEA0 10000016 */  beq     $zero, $zero, .L808DFEFC   
/* 09634 808DFEA4 C60C01E0 */  lwc1    $f12, 0x01E0($s0)          ## 000001E0
.L808DFEA8:
/* 09638 808DFEA8 1441000F */  bne     $v0, $at, .L808DFEE8       
/* 0963C 808DFEAC 8FA4005C */  lw      $a0, 0x005C($sp)           
/* 09640 808DFEB0 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 09644 808DFEB4 44816000 */  mtc1    $at, $f12                  ## $f12 = 1.50
/* 09648 808DFEB8 0C034348 */  jal     Matrix_RotateY              
/* 0964C 808DFEBC 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 09650 808DFEC0 3C018090 */  lui     $at, %hi(D_808F8158)       ## $at = 80900000
/* 09654 808DFEC4 C42C8158 */  lwc1    $f12, %lo(D_808F8158)($at) 
/* 09658 808DFEC8 0C0342DC */  jal     Matrix_RotateX              
/* 0965C 808DFECC 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 09660 808DFED0 3C018090 */  lui     $at, %hi(D_808F815C)       ## $at = 80900000
/* 09664 808DFED4 C42C815C */  lwc1    $f12, %lo(D_808F815C)($at) 
/* 09668 808DFED8 0C0343B5 */  jal     Matrix_RotateZ              
/* 0966C 808DFEDC 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 09670 808DFEE0 10000006 */  beq     $zero, $zero, .L808DFEFC   
/* 09674 808DFEE4 C60C01E0 */  lwc1    $f12, 0x01E0($s0)          ## 000001E0
.L808DFEE8:
/* 09678 808DFEE8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0967C 808DFEEC 34211DA0 */  ori     $at, $at, 0x1DA0           ## $at = 00011DA0
/* 09680 808DFEF0 0C0347F5 */  jal     func_800D1FD4              
/* 09684 808DFEF4 00812021 */  addu    $a0, $a0, $at              
/* 09688 808DFEF8 C60C01E0 */  lwc1    $f12, 0x01E0($s0)          ## 000001E0
.L808DFEFC:
/* 0968C 808DFEFC 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 09690 808DFF00 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 09694 808DFF04 0C0342A3 */  jal     Matrix_Scale              
/* 09698 808DFF08 46006386 */  mov.s   $f14, $f12                 
/* 0969C 808DFF0C 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 096A0 808DFF10 3C08DA38 */  lui     $t0, 0xDA38                ## $t0 = DA380000
/* 096A4 808DFF14 35080003 */  ori     $t0, $t0, 0x0003           ## $t0 = DA380003
/* 096A8 808DFF18 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 096AC 808DFF1C AE3902D0 */  sw      $t9, 0x02D0($s1)           ## 000002D0
/* 096B0 808DFF20 AC480000 */  sw      $t0, 0x0000($v0)           ## 00000000
/* 096B4 808DFF24 8FAE005C */  lw      $t6, 0x005C($sp)           
/* 096B8 808DFF28 3C05808F */  lui     $a1, %hi(D_808F7BB8)       ## $a1 = 808F0000
/* 096BC 808DFF2C 24A57BB8 */  addiu   $a1, $a1, %lo(D_808F7BB8)  ## $a1 = 808F7BB8
/* 096C0 808DFF30 24061E63 */  addiu   $a2, $zero, 0x1E63         ## $a2 = 00001E63
/* 096C4 808DFF34 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 096C8 808DFF38 0C0346A2 */  jal     Matrix_NewMtx              
/* 096CC 808DFF3C 8DC40000 */  lw      $a0, 0x0000($t6)           ## 00000000
/* 096D0 808DFF40 AE020004 */  sw      $v0, 0x0004($s0)           ## 00000004
/* 096D4 808DFF44 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 096D8 808DFF48 3C04808E */  lui     $a0, %hi(D_808E5FF8)       ## $a0 = 808E0000
/* 096DC 808DFF4C 24845FF8 */  addiu   $a0, $a0, %lo(D_808E5FF8)  ## $a0 = 808E5FF8
/* 096E0 808DFF50 00045900 */  sll     $t3, $a0,  4               
/* 096E4 808DFF54 000B6702 */  srl     $t4, $t3, 28               
/* 096E8 808DFF58 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 096EC 808DFF5C AE2902D0 */  sw      $t1, 0x02D0($s1)           ## 000002D0
/* 096F0 808DFF60 000C6880 */  sll     $t5, $t4,  2               
/* 096F4 808DFF64 3C0ADE00 */  lui     $t2, 0xDE00                ## $t2 = DE000000
/* 096F8 808DFF68 3C0F8016 */  lui     $t7, %hi(gSegments)
/* 096FC 808DFF6C 01ED7821 */  addu    $t7, $t7, $t5              
/* 09700 808DFF70 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 09704 808DFF74 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 09708 808DFF78 8DEF6FA8 */  lw      $t7, %lo(gSegments)($t7)
/* 0970C 808DFF7C 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 09710 808DFF80 0081C024 */  and     $t8, $a0, $at              
/* 09714 808DFF84 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 09718 808DFF88 01F8C821 */  addu    $t9, $t7, $t8              
/* 0971C 808DFF8C 03214021 */  addu    $t0, $t9, $at              
/* 09720 808DFF90 0C034221 */  jal     Matrix_Pop              
/* 09724 808DFF94 AC480004 */  sw      $t0, 0x0004($v0)           ## 00000004
/* 09728 808DFF98 8FAE005C */  lw      $t6, 0x005C($sp)           
/* 0972C 808DFF9C 3C06808F */  lui     $a2, %hi(D_808F7BCC)       ## $a2 = 808F0000
/* 09730 808DFFA0 24C67BCC */  addiu   $a2, $a2, %lo(D_808F7BCC)  ## $a2 = 808F7BCC
/* 09734 808DFFA4 27A40040 */  addiu   $a0, $sp, 0x0040           ## $a0 = FFFFFFE8
/* 09738 808DFFA8 24071E66 */  addiu   $a3, $zero, 0x1E66         ## $a3 = 00001E66
/* 0973C 808DFFAC 0C031AD5 */  jal     Graph_CloseDisps              
/* 09740 808DFFB0 8DC50000 */  lw      $a1, 0x0000($t6)           ## 00000000
/* 09744 808DFFB4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808DFFB8:
/* 09748 808DFFB8 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 0974C 808DFFBC 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 09750 808DFFC0 03E00008 */  jr      $ra                        
/* 09754 808DFFC4 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
