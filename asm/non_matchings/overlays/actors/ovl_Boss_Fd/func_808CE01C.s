.late_rodata
glabel D_808D1F4C
    .float 0.05

glabel D_808D1F50
 .word 0x3F0CCCCD
glabel D_808D1F54
 .word 0x3D8F5C29
glabel D_808D1F58
 .word 0x3E570A3D
glabel D_808D1F5C
    .float 0.01

glabel D_808D1F60
    .float 0.3

glabel D_808D1F64
    .float 6000.0

glabel D_808D1F68
    .float 1300.0

glabel D_808D1F6C
 .word 0xBE99999A
glabel D_808D1F70
 .word 0xBE99999A
glabel D_808D1F74
    .float 0.4

glabel D_808D1F78
    .float 3.14159274101

glabel D_808D1F7C
    .float 0.3

glabel D_808D1F80
    .float 6.28318548203

glabel D_808D1F84
    .float 6.28318548203

.text
glabel func_808CE01C
/* 0325C 808CE01C 27BDFEF8 */  addiu   $sp, $sp, 0xFEF8           ## $sp = FFFFFEF8
/* 03260 808CE020 3C0E808D */  lui     $t6, %hi(D_808D1A34)       ## $t6 = 808D0000
/* 03264 808CE024 AFBF0064 */  sw      $ra, 0x0064($sp)           
/* 03268 808CE028 AFB20060 */  sw      $s2, 0x0060($sp)           
/* 0326C 808CE02C AFB1005C */  sw      $s1, 0x005C($sp)           
/* 03270 808CE030 AFB00058 */  sw      $s0, 0x0058($sp)           
/* 03274 808CE034 F7BC0050 */  sdc1    $f28, 0x0050($sp)          
/* 03278 808CE038 F7BA0048 */  sdc1    $f26, 0x0048($sp)          
/* 0327C 808CE03C F7B80040 */  sdc1    $f24, 0x0040($sp)          
/* 03280 808CE040 F7B60038 */  sdc1    $f22, 0x0038($sp)          
/* 03284 808CE044 F7B40030 */  sdc1    $f20, 0x0030($sp)          
/* 03288 808CE048 A7A00106 */  sh      $zero, 0x0106($sp)         
/* 0328C 808CE04C 25CE1A34 */  addiu   $t6, $t6, %lo(D_808D1A34)  ## $t6 = 808D1A34
/* 03290 808CE050 8DD80000 */  lw      $t8, 0x0000($t6)           ## 808D1A34
/* 03294 808CE054 27B000E8 */  addiu   $s0, $sp, 0x00E8           ## $s0 = FFFFFFE0
/* 03298 808CE058 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 0329C 808CE05C AE180000 */  sw      $t8, 0x0000($s0)           ## FFFFFFE0
/* 032A0 808CE060 8DCF0004 */  lw      $t7, 0x0004($t6)           ## 808D1A38
/* 032A4 808CE064 00A09025 */  or      $s2, $a1, $zero            ## $s2 = 00000000
/* 032A8 808CE068 AE0F0004 */  sw      $t7, 0x0004($s0)           ## FFFFFFE4
/* 032AC 808CE06C 95D80008 */  lhu     $t8, 0x0008($t6)           ## 808D1A3C
/* 032B0 808CE070 A6180008 */  sh      $t8, 0x0008($s0)           ## FFFFFFE8
/* 032B4 808CE074 90830220 */  lbu     $v1, 0x0220($a0)           ## 00000220
/* 032B8 808CE078 14600020 */  bne     $v1, $zero, .L808CE0FC     
/* 032BC 808CE07C 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
/* 032C0 808CE080 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 032C4 808CE084 00250821 */  addu    $at, $at, $a1              
/* 032C8 808CE088 A0200AE3 */  sb      $zero, 0x0AE3($at)         ## 00010AE3
/* 032CC 808CE08C 84840226 */  lh      $a0, 0x0226($a0)           ## 00000226
/* 032D0 808CE090 00800821 */  addu    $at, $a0, $zero            
/* 032D4 808CE094 00042080 */  sll     $a0, $a0,  2               
/* 032D8 808CE098 00812021 */  addu    $a0, $a0, $at              
/* 032DC 808CE09C 00042200 */  sll     $a0, $a0,  8               
/* 032E0 808CE0A0 00042400 */  sll     $a0, $a0, 16               
/* 032E4 808CE0A4 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 032E8 808CE0A8 00042403 */  sra     $a0, $a0, 16               
/* 032EC 808CE0AC 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 032F0 808CE0B0 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
/* 032F4 808CE0B4 44814000 */  mtc1    $at, $f8                   ## $f8 = 0.50
/* 032F8 808CE0B8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 032FC 808CE0BC 46040182 */  mul.s   $f6, $f0, $f4              
/* 03300 808CE0C0 00320821 */  addu    $at, $at, $s2              
/* 03304 808CE0C4 24190002 */  addiu   $t9, $zero, 0x0002         ## $t9 = 00000002
/* 03308 808CE0C8 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 0330C 808CE0CC 46083280 */  add.s   $f10, $f6, $f8             
/* 03310 808CE0D0 E42A0AFC */  swc1    $f10, 0x0AFC($at)          ## 00010AFC
/* 03314 808CE0D4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 03318 808CE0D8 00320821 */  addu    $at, $at, $s2              
/* 0331C 808CE0DC A0390B00 */  sb      $t9, 0x0B00($at)           ## 00010B00
/* 03320 808CE0E0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 03324 808CE0E4 00320821 */  addu    $at, $at, $s2              
/* 03328 808CE0E8 A0280AE1 */  sb      $t0, 0x0AE1($at)           ## 00010AE1
/* 0332C 808CE0EC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 03330 808CE0F0 00320821 */  addu    $at, $at, $s2              
/* 03334 808CE0F4 1000008C */  beq     $zero, $zero, .L808CE328   
/* 03338 808CE0F8 A0200AE2 */  sb      $zero, 0x0AE2($at)         ## 00010AE2
.L808CE0FC:
/* 0333C 808CE0FC 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 03340 808CE100 1441001A */  bne     $v0, $at, .L808CE16C       
/* 03344 808CE104 24090002 */  addiu   $t1, $zero, 0x0002         ## $t1 = 00000002
/* 03348 808CE108 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0334C 808CE10C 4481B000 */  mtc1    $at, $f22                  ## $f22 = 1.00
/* 03350 808CE110 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 03354 808CE114 00320821 */  addu    $at, $at, $s2              
/* 03358 808CE118 A0200AE3 */  sb      $zero, 0x0AE3($at)         ## 00010AE3
/* 0335C 808CE11C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 03360 808CE120 00320821 */  addu    $at, $at, $s2              
/* 03364 808CE124 A0290B00 */  sb      $t1, 0x0B00($at)           ## 00010B00
/* 03368 808CE128 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0336C 808CE12C 00320821 */  addu    $at, $at, $s2              
/* 03370 808CE130 240A0002 */  addiu   $t2, $zero, 0x0002         ## $t2 = 00000002
/* 03374 808CE134 A02A0AE1 */  sb      $t2, 0x0AE1($at)           ## 00010AE1
/* 03378 808CE138 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0337C 808CE13C 00320821 */  addu    $at, $at, $s2              
/* 03380 808CE140 A0200AE2 */  sb      $zero, 0x0AE2($at)         ## 00010AE2
/* 03384 808CE144 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 03388 808CE148 34210AFC */  ori     $at, $at, 0x0AFC           ## $at = 00010AFC
/* 0338C 808CE14C 3C073D4C */  lui     $a3, 0x3D4C                ## $a3 = 3D4C0000
/* 03390 808CE150 4405B000 */  mfc1    $a1, $f22                  
/* 03394 808CE154 4406B000 */  mfc1    $a2, $f22                  
/* 03398 808CE158 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3D4CCCCD
/* 0339C 808CE15C 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 033A0 808CE160 02412021 */  addu    $a0, $s2, $at              
/* 033A4 808CE164 10000071 */  beq     $zero, $zero, .L808CE32C   
/* 033A8 808CE168 86220238 */  lh      $v0, 0x0238($s1)           ## 00000238
.L808CE16C:
/* 033AC 808CE16C 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 033B0 808CE170 1441002A */  bne     $v0, $at, .L808CE21C       
/* 033B4 808CE174 246BFFFF */  addiu   $t3, $v1, 0xFFFF           ## $t3 = FFFFFFFF
/* 033B8 808CE178 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 033BC 808CE17C A22B0220 */  sb      $t3, 0x0220($s1)           ## 00000220
/* 033C0 808CE180 00320821 */  addu    $at, $at, $s2              
/* 033C4 808CE184 A0200AE3 */  sb      $zero, 0x0AE3($at)         ## 00010AE3
/* 033C8 808CE188 86240226 */  lh      $a0, 0x0226($s1)           ## 00000226
/* 033CC 808CE18C 00800821 */  addu    $at, $a0, $zero            
/* 033D0 808CE190 00042140 */  sll     $a0, $a0,  5               
/* 033D4 808CE194 00812023 */  subu    $a0, $a0, $at              
/* 033D8 808CE198 00042240 */  sll     $a0, $a0,  9               
/* 033DC 808CE19C 00042400 */  sll     $a0, $a0, 16               
/* 033E0 808CE1A0 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 033E4 808CE1A4 00042403 */  sra     $a0, $a0, 16               
/* 033E8 808CE1A8 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 033EC 808CE1AC 4481B000 */  mtc1    $at, $f22                  ## $f22 = 1.00
/* 033F0 808CE1B0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 033F4 808CE1B4 34210AFC */  ori     $at, $at, 0x0AFC           ## $at = 00010AFC
/* 033F8 808CE1B8 02412021 */  addu    $a0, $s2, $at              
/* 033FC 808CE1BC 3C01808D */  lui     $at, %hi(D_808D1F4C)       ## $at = 808D0000
/* 03400 808CE1C0 C4301F4C */  lwc1    $f16, %lo(D_808D1F4C)($at) 
/* 03404 808CE1C4 3C01808D */  lui     $at, %hi(D_808D1F50)       ## $at = 808D0000
/* 03408 808CE1C8 C4241F50 */  lwc1    $f4, %lo(D_808D1F50)($at)  
/* 0340C 808CE1CC 46100482 */  mul.s   $f18, $f0, $f16            
/* 03410 808CE1D0 3C073E19 */  lui     $a3, 0x3E19                ## $a3 = 3E190000
/* 03414 808CE1D4 4406B000 */  mfc1    $a2, $f22                  
/* 03418 808CE1D8 34E7999A */  ori     $a3, $a3, 0x999A           ## $a3 = 3E19999A
/* 0341C 808CE1DC 46049180 */  add.s   $f6, $f18, $f4             
/* 03420 808CE1E0 44053000 */  mfc1    $a1, $f6                   
/* 03424 808CE1E4 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 03428 808CE1E8 00000000 */  nop
/* 0342C 808CE1EC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 03430 808CE1F0 00320821 */  addu    $at, $at, $s2              
/* 03434 808CE1F4 240C0002 */  addiu   $t4, $zero, 0x0002         ## $t4 = 00000002
/* 03438 808CE1F8 A02C0B00 */  sb      $t4, 0x0B00($at)           ## 00010B00
/* 0343C 808CE1FC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 03440 808CE200 00320821 */  addu    $at, $at, $s2              
/* 03444 808CE204 240D0003 */  addiu   $t5, $zero, 0x0003         ## $t5 = 00000003
/* 03448 808CE208 A02D0AE1 */  sb      $t5, 0x0AE1($at)           ## 00010AE1
/* 0344C 808CE20C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 03450 808CE210 00320821 */  addu    $at, $at, $s2              
/* 03454 808CE214 10000044 */  beq     $zero, $zero, .L808CE328   
/* 03458 808CE218 A0200AE2 */  sb      $zero, 0x0AE2($at)         ## 00010AE2
.L808CE21C:
/* 0345C 808CE21C 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 03460 808CE220 1441002A */  bne     $v0, $at, .L808CE2CC       
/* 03464 808CE224 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 03468 808CE228 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0346C 808CE22C A22E0220 */  sb      $t6, 0x0220($s1)           ## 00000220
/* 03470 808CE230 00320821 */  addu    $at, $at, $s2              
/* 03474 808CE234 A0200AE3 */  sb      $zero, 0x0AE3($at)         ## 00010AE3
/* 03478 808CE238 86240226 */  lh      $a0, 0x0226($s1)           ## 00000226
/* 0347C 808CE23C 00800821 */  addu    $at, $a0, $zero            
/* 03480 808CE240 00042080 */  sll     $a0, $a0,  2               
/* 03484 808CE244 00812023 */  subu    $a0, $a0, $at              
/* 03488 808CE248 00042280 */  sll     $a0, $a0, 10               
/* 0348C 808CE24C 00042400 */  sll     $a0, $a0, 16               
/* 03490 808CE250 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 03494 808CE254 00042403 */  sra     $a0, $a0, 16               
/* 03498 808CE258 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0349C 808CE25C 4481B000 */  mtc1    $at, $f22                  ## $f22 = 1.00
/* 034A0 808CE260 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 034A4 808CE264 34210AFC */  ori     $at, $at, 0x0AFC           ## $at = 00010AFC
/* 034A8 808CE268 02412021 */  addu    $a0, $s2, $at              
/* 034AC 808CE26C 3C01808D */  lui     $at, %hi(D_808D1F54)       ## $at = 808D0000
/* 034B0 808CE270 C4281F54 */  lwc1    $f8, %lo(D_808D1F54)($at)  
/* 034B4 808CE274 3C01808D */  lui     $at, %hi(D_808D1F58)       ## $at = 808D0000
/* 034B8 808CE278 C4301F58 */  lwc1    $f16, %lo(D_808D1F58)($at) 
/* 034BC 808CE27C 46080282 */  mul.s   $f10, $f0, $f8             
/* 034C0 808CE280 3C073D4C */  lui     $a3, 0x3D4C                ## $a3 = 3D4C0000
/* 034C4 808CE284 4406B000 */  mfc1    $a2, $f22                  
/* 034C8 808CE288 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3D4CCCCD
/* 034CC 808CE28C 46105480 */  add.s   $f18, $f10, $f16           
/* 034D0 808CE290 44059000 */  mfc1    $a1, $f18                  
/* 034D4 808CE294 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 034D8 808CE298 00000000 */  nop
/* 034DC 808CE29C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 034E0 808CE2A0 00320821 */  addu    $at, $at, $s2              
/* 034E4 808CE2A4 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
/* 034E8 808CE2A8 A02F0B00 */  sb      $t7, 0x0B00($at)           ## 00010B00
/* 034EC 808CE2AC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 034F0 808CE2B0 00320821 */  addu    $at, $at, $s2              
/* 034F4 808CE2B4 24180003 */  addiu   $t8, $zero, 0x0003         ## $t8 = 00000003
/* 034F8 808CE2B8 A0380AE1 */  sb      $t8, 0x0AE1($at)           ## 00010AE1
/* 034FC 808CE2BC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 03500 808CE2C0 00320821 */  addu    $at, $at, $s2              
/* 03504 808CE2C4 10000018 */  beq     $zero, $zero, .L808CE328   
/* 03508 808CE2C8 A0200AE2 */  sb      $zero, 0x0AE2($at)         ## 00010AE2
.L808CE2CC:
/* 0350C 808CE2CC 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 03510 808CE2D0 14410015 */  bne     $v0, $at, .L808CE328       
/* 03514 808CE2D4 3C073CF5 */  lui     $a3, 0x3CF5                ## $a3 = 3CF50000
/* 03518 808CE2D8 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0351C 808CE2DC 4481B000 */  mtc1    $at, $f22                  ## $f22 = 1.00
/* 03520 808CE2E0 4480E000 */  mtc1    $zero, $f28                ## $f28 = 0.00
/* 03524 808CE2E4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 03528 808CE2E8 34210AFC */  ori     $at, $at, 0x0AFC           ## $at = 00010AFC
/* 0352C 808CE2EC 4406B000 */  mfc1    $a2, $f22                  
/* 03530 808CE2F0 4405E000 */  mfc1    $a1, $f28                  
/* 03534 808CE2F4 02412021 */  addu    $a0, $s2, $at              
/* 03538 808CE2F8 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 0353C 808CE2FC 34E7C28F */  ori     $a3, $a3, 0xC28F           ## $a3 = 3CF5C28F
/* 03540 808CE300 3C01808D */  lui     $at, %hi(D_808D1F5C)       ## $at = 808D0000
/* 03544 808CE304 C4241F5C */  lwc1    $f4, %lo(D_808D1F5C)($at)  
/* 03548 808CE308 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0354C 808CE30C 00320821 */  addu    $at, $at, $s2              
/* 03550 808CE310 C4260AFC */  lwc1    $f6, 0x0AFC($at)           ## 00010AFC
/* 03554 808CE314 4604303E */  c.le.s  $f6, $f4                   
/* 03558 808CE318 00000000 */  nop
/* 0355C 808CE31C 45020003 */  bc1fl   .L808CE32C                 
/* 03560 808CE320 86220238 */  lh      $v0, 0x0238($s1)           ## 00000238
/* 03564 808CE324 A2200220 */  sb      $zero, 0x0220($s1)         ## 00000220
.L808CE328:
/* 03568 808CE328 86220238 */  lh      $v0, 0x0238($s1)           ## 00000238
.L808CE32C:
/* 0356C 808CE32C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 03570 808CE330 4481B000 */  mtc1    $at, $f22                  ## $f22 = 1.00
/* 03574 808CE334 4480E000 */  mtc1    $zero, $f28                ## $f28 = 0.00
/* 03578 808CE338 10400008 */  beq     $v0, $zero, .L808CE35C     
/* 0357C 808CE33C 26240294 */  addiu   $a0, $s1, 0x0294           ## $a0 = 00000294
/* 03580 808CE340 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 03584 808CE344 4481D000 */  mtc1    $at, $f26                  ## $f26 = 20.00
/* 03588 808CE348 2459FFFF */  addiu   $t9, $v0, 0xFFFF           ## $t9 = FFFFFFFF
/* 0358C 808CE34C A6390238 */  sh      $t9, 0x0238($s1)           ## 00000238
/* 03590 808CE350 4600D006 */  mov.s   $f0, $f26                  
/* 03594 808CE354 10000008 */  beq     $zero, $zero, .L808CE378   
/* 03598 808CE358 4600D506 */  mov.s   $f20, $f26                 
.L808CE35C:
/* 0359C 808CE35C 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 035A0 808CE360 44810000 */  mtc1    $at, $f0                   ## $f0 = 3.00
/* 035A4 808CE364 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 035A8 808CE368 4481A000 */  mtc1    $at, $f20                  ## $f20 = 5.00
/* 035AC 808CE36C 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 035B0 808CE370 4481D000 */  mtc1    $at, $f26                  ## $f26 = 20.00
/* 035B4 808CE374 00000000 */  nop
.L808CE378:
/* 035B8 808CE378 44050000 */  mfc1    $a1, $f0                   
/* 035BC 808CE37C 4406B000 */  mfc1    $a2, $f22                  
/* 035C0 808CE380 3C073DCC */  lui     $a3, 0x3DCC                ## $a3 = 3DCC0000
/* 035C4 808CE384 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 035C8 808CE388 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3DCCCCCD
/* 035CC 808CE38C 4405A000 */  mfc1    $a1, $f20                  
/* 035D0 808CE390 4406B000 */  mfc1    $a2, $f22                  
/* 035D4 808CE394 26240290 */  addiu   $a0, $s1, 0x0290           ## $a0 = 00000290
/* 035D8 808CE398 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 035DC 808CE39C 3C073F00 */  lui     $a3, 0x3F00                ## $a3 = 3F000000
/* 035E0 808CE3A0 86280226 */  lh      $t0, 0x0226($s1)           ## 00000226
/* 035E4 808CE3A4 31090007 */  andi    $t1, $t0, 0x0007           ## $t1 = 00000000
/* 035E8 808CE3A8 5520000C */  bnel    $t1, $zero, .L808CE3DC     
/* 035EC 808CE3AC 8622022C */  lh      $v0, 0x022C($s1)           ## 0000022C
/* 035F0 808CE3B0 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 035F4 808CE3B4 00000000 */  nop
/* 035F8 808CE3B8 3C01808D */  lui     $at, %hi(D_808D1F60)       ## $at = 808D0000
/* 035FC 808CE3BC C4281F60 */  lwc1    $f8, %lo(D_808D1F60)($at)  
/* 03600 808CE3C0 240A0004 */  addiu   $t2, $zero, 0x0004         ## $t2 = 00000004
/* 03604 808CE3C4 4608003C */  c.lt.s  $f0, $f8                   
/* 03608 808CE3C8 00000000 */  nop
/* 0360C 808CE3CC 45020003 */  bc1fl   .L808CE3DC                 
/* 03610 808CE3D0 8622022C */  lh      $v0, 0x022C($s1)           ## 0000022C
/* 03614 808CE3D4 A62A022C */  sh      $t2, 0x022C($s1)           ## 0000022C
/* 03618 808CE3D8 8622022C */  lh      $v0, 0x022C($s1)           ## 0000022C
.L808CE3DC:
/* 0361C 808CE3DC 00025840 */  sll     $t3, $v0,  1               
/* 03620 808CE3E0 020B6021 */  addu    $t4, $s0, $t3              
/* 03624 808CE3E4 858D0000 */  lh      $t5, 0x0000($t4)           ## 00000000
/* 03628 808CE3E8 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 0362C 808CE3EC 10400002 */  beq     $v0, $zero, .L808CE3F8     
/* 03630 808CE3F0 A22D02D5 */  sb      $t5, 0x02D5($s1)           ## 000002D5
/* 03634 808CE3F4 A62E022C */  sh      $t6, 0x022C($s1)           ## 0000022C
.L808CE3F8:
/* 03638 808CE3F8 8622022E */  lh      $v0, 0x022E($s1)           ## 0000022E
/* 0363C 808CE3FC 24010025 */  addiu   $at, $zero, 0x0025         ## $at = 00000025
/* 03640 808CE400 50400012 */  beql    $v0, $zero, .L808CE44C     
/* 03644 808CE404 86380226 */  lh      $t8, 0x0226($s1)           ## 00000226
/* 03648 808CE408 1441000A */  bne     $v0, $at, .L808CE434       
/* 0364C 808CE40C 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 03650 808CE410 3C0F8013 */  lui     $t7, %hi(D_801333E8)
/* 03654 808CE414 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 03658 808CE418 25EF33E8 */  addiu   $t7, %lo(D_801333E8)
/* 0365C 808CE41C AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 03660 808CE420 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 03664 808CE424 240438D1 */  addiu   $a0, $zero, 0x38D1         ## $a0 = 000038D1
/* 03668 808CE428 262500E4 */  addiu   $a1, $s1, 0x00E4           ## $a1 = 000000E4
/* 0366C 808CE42C 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 03670 808CE430 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
.L808CE434:
/* 03674 808CE434 3C01808D */  lui     $at, %hi(D_808D1F64)       ## $at = 808D0000
/* 03678 808CE438 C4201F64 */  lwc1    $f0, %lo(D_808D1F64)($at)  
/* 0367C 808CE43C 3C01808D */  lui     $at, %hi(D_808D1F68)       ## $at = 808D0000
/* 03680 808CE440 1000000D */  beq     $zero, $zero, .L808CE478   
/* 03684 808CE444 C4221F68 */  lwc1    $f2, %lo(D_808D1F68)($at)  
/* 03688 808CE448 86380226 */  lh      $t8, 0x0226($s1)           ## 00000226
.L808CE44C:
/* 0368C 808CE44C 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 03690 808CE450 33190010 */  andi    $t9, $t8, 0x0010           ## $t9 = 00000000
/* 03694 808CE454 53200004 */  beql    $t9, $zero, .L808CE468     
/* 03698 808CE458 44810000 */  mtc1    $at, $f0                   ## $f0 = 1000.00
/* 0369C 808CE45C 10000003 */  beq     $zero, $zero, .L808CE46C   
/* 036A0 808CE460 4600E006 */  mov.s   $f0, $f28                  
/* 036A4 808CE464 44810000 */  mtc1    $at, $f0                   ## $f0 = 1000.00
.L808CE468:
/* 036A8 808CE468 00000000 */  nop
.L808CE46C:
/* 036AC 808CE46C 3C0143FA */  lui     $at, 0x43FA                ## $at = 43FA0000
/* 036B0 808CE470 44811000 */  mtc1    $at, $f2                   ## $f2 = 500.00
/* 036B4 808CE474 00000000 */  nop
.L808CE478:
/* 036B8 808CE478 44050000 */  mfc1    $a1, $f0                   
/* 036BC 808CE47C 3C063E99 */  lui     $a2, 0x3E99                ## $a2 = 3E990000
/* 036C0 808CE480 44071000 */  mfc1    $a3, $f2                   
/* 036C4 808CE484 34C6999A */  ori     $a2, $a2, 0x999A           ## $a2 = 3E99999A
/* 036C8 808CE488 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 036CC 808CE48C 262413CC */  addiu   $a0, $s1, 0x13CC           ## $a0 = 000013CC
/* 036D0 808CE490 8622022E */  lh      $v0, 0x022E($s1)           ## 0000022E
/* 036D4 808CE494 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 036D8 808CE498 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 036DC 808CE49C 10400002 */  beq     $v0, $zero, .L808CE4A8     
/* 036E0 808CE4A0 2448FFFF */  addiu   $t0, $v0, 0xFFFF           ## $t0 = FFFFFFFF
/* 036E4 808CE4A4 A628022E */  sh      $t0, 0x022E($s1)           ## 0000022E
.L808CE4A8:
/* 036E8 808CE4A8 86290250 */  lh      $t1, 0x0250($s1)           ## 00000250
/* 036EC 808CE4AC 240430D0 */  addiu   $a0, $zero, 0x30D0         ## $a0 = 000030D0
/* 036F0 808CE4B0 262500E4 */  addiu   $a1, $s1, 0x00E4           ## $a1 = 000000E4
/* 036F4 808CE4B4 112000E6 */  beq     $t1, $zero, .L808CE850     
/* 036F8 808CE4B8 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 036FC 808CE4BC 3C0A8013 */  lui     $t2, %hi(D_801333E8)
/* 03700 808CE4C0 254A33E8 */  addiu   $t2, %lo(D_801333E8)
/* 03704 808CE4C4 AFAA0014 */  sw      $t2, 0x0014($sp)           
/* 03708 808CE4C8 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 0370C 808CE4CC AFA70010 */  sw      $a3, 0x0010($sp)           
/* 03710 808CE4D0 86220240 */  lh      $v0, 0x0240($s1)           ## 00000240
/* 03714 808CE4D4 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 03718 808CE4D8 50400064 */  beql    $v0, $zero, .L808CE66C     
/* 0371C 808CE4DC 4481C000 */  mtc1    $at, $f24                  ## $f24 = 100.00
/* 03720 808CE4E0 922C00AF */  lbu     $t4, 0x00AF($s1)           ## 000000AF
/* 03724 808CE4E4 244BFFFF */  addiu   $t3, $v0, 0xFFFF           ## $t3 = FFFFFFFF
/* 03728 808CE4E8 A62B0240 */  sh      $t3, 0x0240($s1)           ## 00000240
/* 0372C 808CE4EC 11800009 */  beq     $t4, $zero, .L808CE514     
/* 03730 808CE4F0 24180002 */  addiu   $t8, $zero, 0x0002         ## $t8 = 00000002
/* 03734 808CE4F4 862D1402 */  lh      $t5, 0x1402($s1)           ## 00001402
/* 03738 808CE4F8 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 0373C 808CE4FC 55A1000D */  bnel    $t5, $at, .L808CE534       
/* 03740 808CE500 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 03744 808CE504 862E0030 */  lh      $t6, 0x0030($s1)           ## 00000030
/* 03748 808CE508 29C13001 */  slti    $at, $t6, 0x3001           
/* 0374C 808CE50C 54200009 */  bnel    $at, $zero, .L808CE534     
/* 03750 808CE510 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
.L808CE514:
/* 03754 808CE514 922F0220 */  lbu     $t7, 0x0220($s1)           ## 00000220
/* 03758 808CE518 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0375C 808CE51C 00320821 */  addu    $at, $at, $s2              
/* 03760 808CE520 55E00003 */  bnel    $t7, $zero, .L808CE530     
/* 03764 808CE524 A2380220 */  sb      $t8, 0x0220($s1)           ## 00000220
/* 03768 808CE528 E43C0AFC */  swc1    $f28, 0x0AFC($at)          ## 00010AFC
/* 0376C 808CE52C A2380220 */  sb      $t8, 0x0220($s1)           ## 00000220
.L808CE530:
/* 03770 808CE530 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
.L808CE534:
/* 03774 808CE534 4481C000 */  mtc1    $at, $f24                  ## $f24 = 100.00
/* 03778 808CE538 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 0377C 808CE53C 4481B000 */  mtc1    $at, $f22                  ## $f22 = 10.00
/* 03780 808CE540 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 03784 808CE544 4481A000 */  mtc1    $at, $f20                  ## $f20 = 20.00
/* 03788 808CE548 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
.L808CE54C:
/* 0378C 808CE54C 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 03790 808CE550 4600D306 */  mov.s   $f12, $f26                 
/* 03794 808CE554 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 03798 808CE558 44816000 */  mtc1    $at, $f12                  ## $f12 = 5.00
/* 0379C 808CE55C 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 037A0 808CE560 E7A000D0 */  swc1    $f0, 0x00D0($sp)           
/* 037A4 808CE564 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 037A8 808CE568 44815000 */  mtc1    $at, $f10                  ## $f10 = 4.00
/* 037AC 808CE56C 4600D306 */  mov.s   $f12, $f26                 
/* 037B0 808CE570 460A0400 */  add.s   $f16, $f0, $f10            
/* 037B4 808CE574 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 037B8 808CE578 E7B000D4 */  swc1    $f16, 0x00D4($sp)          
/* 037BC 808CE57C C7A600D0 */  lwc1    $f6, 0x00D0($sp)           
/* 037C0 808CE580 3C01808D */  lui     $at, %hi(D_808D1F6C)       ## $at = 808D0000
/* 037C4 808CE584 C4321F6C */  lwc1    $f18, %lo(D_808D1F6C)($at) 
/* 037C8 808CE588 46143202 */  mul.s   $f8, $f6, $f20             
/* 037CC 808CE58C E7A000D8 */  swc1    $f0, 0x00D8($sp)           
/* 037D0 808CE590 E7BC00CC */  swc1    $f28, 0x00CC($sp)          
/* 037D4 808CE594 46140182 */  mul.s   $f6, $f0, $f20             
/* 037D8 808CE598 E7BC00C4 */  swc1    $f28, 0x00C4($sp)          
/* 037DC 808CE59C E7B200C8 */  swc1    $f18, 0x00C8($sp)          
/* 037E0 808CE5A0 C62402C8 */  lwc1    $f4, 0x02C8($s1)           ## 000002C8
/* 037E4 808CE5A4 E7B800BC */  swc1    $f24, 0x00BC($sp)          
/* 037E8 808CE5A8 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 037EC 808CE5AC 46164283 */  div.s   $f10, $f8, $f22            
/* 037F0 808CE5B0 44816000 */  mtc1    $at, $f12                  ## $f12 = 150.00
/* 037F4 808CE5B4 46163203 */  div.s   $f8, $f6, $f22             
/* 037F8 808CE5B8 460A2400 */  add.s   $f16, $f4, $f10            
/* 037FC 808CE5BC E7B000B8 */  swc1    $f16, 0x00B8($sp)          
/* 03800 808CE5C0 C63202D0 */  lwc1    $f18, 0x02D0($s1)          ## 000002D0
/* 03804 808CE5C4 46089100 */  add.s   $f4, $f18, $f8             
/* 03808 808CE5C8 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 0380C 808CE5CC E7A400C0 */  swc1    $f4, 0x00C0($sp)           
/* 03810 808CE5D0 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 03814 808CE5D4 44816000 */  mtc1    $at, $f12                  ## $f12 = 5.00
/* 03818 808CE5D8 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 0381C 808CE5DC E7A00074 */  swc1    $f0, 0x0074($sp)           
/* 03820 808CE5E0 C7AA0074 */  lwc1    $f10, 0x0074($sp)          
/* 03824 808CE5E4 4600018D */  trunc.w.s $f6, $f0                   
/* 03828 808CE5E8 3C19808D */  lui     $t9, %hi(D_808D1A58)       ## $t9 = 808D0000
/* 0382C 808CE5EC 27391A58 */  addiu   $t9, $t9, %lo(D_808D1A58)  ## $t9 = 808D1A58
/* 03830 808CE5F0 4600540D */  trunc.w.s $f16, $f10                 
/* 03834 808CE5F4 44183000 */  mfc1    $t8, $f6                   
/* 03838 808CE5F8 3C08808D */  lui     $t0, %hi(D_808D1A5C)       ## $t0 = 808D0000
/* 0383C 808CE5FC 25081A5C */  addiu   $t0, $t0, %lo(D_808D1A5C)  ## $t0 = 808D1A5C
/* 03840 808CE600 440A8000 */  mfc1    $t2, $f16                  
/* 03844 808CE604 AFB90010 */  sw      $t9, 0x0010($sp)           
/* 03848 808CE608 AFA80014 */  sw      $t0, 0x0014($sp)           
/* 0384C 808CE60C 0018CC00 */  sll     $t9, $t8, 16               
/* 03850 808CE610 000A5C00 */  sll     $t3, $t2, 16               
/* 03854 808CE614 000B6403 */  sra     $t4, $t3, 16               
/* 03858 808CE618 00194403 */  sra     $t0, $t9, 16               
/* 0385C 808CE61C 25090011 */  addiu   $t1, $t0, 0x0011           ## $t1 = 808D1A6D
/* 03860 808CE620 258D0320 */  addiu   $t5, $t4, 0x0320           ## $t5 = 00000320
/* 03864 808CE624 240E000A */  addiu   $t6, $zero, 0x000A         ## $t6 = 0000000A
/* 03868 808CE628 AFAE001C */  sw      $t6, 0x001C($sp)           
/* 0386C 808CE62C AFAD0018 */  sw      $t5, 0x0018($sp)           
/* 03870 808CE630 AFA90020 */  sw      $t1, 0x0020($sp)           
/* 03874 808CE634 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 03878 808CE638 27A500B8 */  addiu   $a1, $sp, 0x00B8           ## $a1 = FFFFFFB0
/* 0387C 808CE63C 27A600D0 */  addiu   $a2, $sp, 0x00D0           ## $a2 = FFFFFFC8
/* 03880 808CE640 0C00A0DB */  jal     func_8002836C              
/* 03884 808CE644 27A700C4 */  addiu   $a3, $sp, 0x00C4           ## $a3 = FFFFFFBC
/* 03888 808CE648 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 0388C 808CE64C 00108400 */  sll     $s0, $s0, 16               
/* 03890 808CE650 00108403 */  sra     $s0, $s0, 16               
/* 03894 808CE654 2A010005 */  slti    $at, $s0, 0x0005           
/* 03898 808CE658 1420FFBC */  bne     $at, $zero, .L808CE54C     
/* 0389C 808CE65C 00000000 */  nop
/* 038A0 808CE660 1000003D */  beq     $zero, $zero, .L808CE758   
/* 038A4 808CE664 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 038A8 808CE668 4481C000 */  mtc1    $at, $f24                  ## $f24 = 60.00
.L808CE66C:
/* 038AC 808CE66C 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 038B0 808CE670 4481B000 */  mtc1    $at, $f22                  ## $f22 = 10.00
/* 038B4 808CE674 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 038B8 808CE678 4481A000 */  mtc1    $at, $f20                  ## $f20 = 50.00
/* 038BC 808CE67C 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
.L808CE680:
/* 038C0 808CE680 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 038C4 808CE684 4600B306 */  mov.s   $f12, $f22                 
/* 038C8 808CE688 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 038CC 808CE68C 44816000 */  mtc1    $at, $f12                  ## $f12 = 3.00
/* 038D0 808CE690 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 038D4 808CE694 E7A000D0 */  swc1    $f0, 0x00D0($sp)           
/* 038D8 808CE698 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 038DC 808CE69C 44819000 */  mtc1    $at, $f18                  ## $f18 = 3.00
/* 038E0 808CE6A0 4600B306 */  mov.s   $f12, $f22                 
/* 038E4 808CE6A4 46120200 */  add.s   $f8, $f0, $f18             
/* 038E8 808CE6A8 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 038EC 808CE6AC E7A800D4 */  swc1    $f8, 0x00D4($sp)           
/* 038F0 808CE6B0 C7B000D0 */  lwc1    $f16, 0x00D0($sp)          
/* 038F4 808CE6B4 3C01808D */  lui     $at, %hi(D_808D1F70)       ## $at = 808D0000
/* 038F8 808CE6B8 C4241F70 */  lwc1    $f4, %lo(D_808D1F70)($at)  
/* 038FC 808CE6BC 46148182 */  mul.s   $f6, $f16, $f20            
/* 03900 808CE6C0 E7A000D8 */  swc1    $f0, 0x00D8($sp)           
/* 03904 808CE6C4 E7BC00CC */  swc1    $f28, 0x00CC($sp)          
/* 03908 808CE6C8 46140402 */  mul.s   $f16, $f0, $f20            
/* 0390C 808CE6CC E7BC00C4 */  swc1    $f28, 0x00C4($sp)          
/* 03910 808CE6D0 E7A400C8 */  swc1    $f4, 0x00C8($sp)           
/* 03914 808CE6D4 C62A02C8 */  lwc1    $f10, 0x02C8($s1)          ## 000002C8
/* 03918 808CE6D8 E7B800BC */  swc1    $f24, 0x00BC($sp)          
/* 0391C 808CE6DC 3C0A808D */  lui     $t2, %hi(D_808D1A58)       ## $t2 = 808D0000
/* 03920 808CE6E0 46163483 */  div.s   $f18, $f6, $f22            
/* 03924 808CE6E4 3C0B808D */  lui     $t3, %hi(D_808D1A5C)       ## $t3 = 808D0000
/* 03928 808CE6E8 256B1A5C */  addiu   $t3, $t3, %lo(D_808D1A5C)  ## $t3 = 808D1A5C
/* 0392C 808CE6EC 254A1A58 */  addiu   $t2, $t2, %lo(D_808D1A58)  ## $t2 = 808D1A58
/* 03930 808CE6F0 240C01F4 */  addiu   $t4, $zero, 0x01F4         ## $t4 = 000001F4
/* 03934 808CE6F4 240D000A */  addiu   $t5, $zero, 0x000A         ## $t5 = 0000000A
/* 03938 808CE6F8 240E0014 */  addiu   $t6, $zero, 0x0014         ## $t6 = 00000014
/* 0393C 808CE6FC 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 03940 808CE700 27A500B8 */  addiu   $a1, $sp, 0x00B8           ## $a1 = FFFFFFB0
/* 03944 808CE704 27A600D0 */  addiu   $a2, $sp, 0x00D0           ## $a2 = FFFFFFC8
/* 03948 808CE708 27A700C4 */  addiu   $a3, $sp, 0x00C4           ## $a3 = FFFFFFBC
/* 0394C 808CE70C 46168183 */  div.s   $f6, $f16, $f22            
/* 03950 808CE710 46125200 */  add.s   $f8, $f10, $f18            
/* 03954 808CE714 E7A800B8 */  swc1    $f8, 0x00B8($sp)           
/* 03958 808CE718 C62402D0 */  lwc1    $f4, 0x02D0($s1)           ## 000002D0
/* 0395C 808CE71C AFAE0020 */  sw      $t6, 0x0020($sp)           
/* 03960 808CE720 AFAD001C */  sw      $t5, 0x001C($sp)           
/* 03964 808CE724 AFAC0018 */  sw      $t4, 0x0018($sp)           
/* 03968 808CE728 AFAB0014 */  sw      $t3, 0x0014($sp)           
/* 0396C 808CE72C AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 03970 808CE730 46062280 */  add.s   $f10, $f4, $f6             
/* 03974 808CE734 0C00A0DB */  jal     func_8002836C              
/* 03978 808CE738 E7AA00C0 */  swc1    $f10, 0x00C0($sp)          
/* 0397C 808CE73C 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 03980 808CE740 00108400 */  sll     $s0, $s0, 16               
/* 03984 808CE744 00108403 */  sra     $s0, $s0, 16               
/* 03988 808CE748 2A010002 */  slti    $at, $s0, 0x0002           
/* 0398C 808CE74C 1420FFCC */  bne     $at, $zero, .L808CE680     
/* 03990 808CE750 00000000 */  nop
/* 03994 808CE754 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
.L808CE758:
/* 03998 808CE758 262F1970 */  addiu   $t7, $s1, 0x1970           ## $t7 = 00001970
/* 0399C 808CE75C 4481A000 */  mtc1    $at, $f20                  ## $f20 = 60.00
/* 039A0 808CE760 AFAF0070 */  sw      $t7, 0x0070($sp)           
/* 039A4 808CE764 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
.L808CE768:
/* 039A8 808CE768 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 039AC 808CE76C 4600D306 */  mov.s   $f12, $f26                 
/* 039B0 808CE770 E7A000D0 */  swc1    $f0, 0x00D0($sp)           
/* 039B4 808CE774 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 039B8 808CE778 4600B306 */  mov.s   $f12, $f22                 
/* 039BC 808CE77C E7A000D4 */  swc1    $f0, 0x00D4($sp)           
/* 039C0 808CE780 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 039C4 808CE784 4600D306 */  mov.s   $f12, $f26                 
/* 039C8 808CE788 3C01808D */  lui     $at, %hi(D_808D1F74)       ## $at = 808D0000
/* 039CC 808CE78C C4321F74 */  lwc1    $f18, %lo(D_808D1F74)($at) 
/* 039D0 808CE790 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 039D4 808CE794 44816000 */  mtc1    $at, $f12                  ## $f12 = 0.50
/* 039D8 808CE798 E7A000D8 */  swc1    $f0, 0x00D8($sp)           
/* 039DC 808CE79C 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 039E0 808CE7A0 E7B200C8 */  swc1    $f18, 0x00C8($sp)          
/* 039E4 808CE7A4 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 039E8 808CE7A8 44816000 */  mtc1    $at, $f12                  ## $f12 = 0.50
/* 039EC 808CE7AC 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 039F0 808CE7B0 E7A000C4 */  swc1    $f0, 0x00C4($sp)           
/* 039F4 808CE7B4 E7A000CC */  swc1    $f0, 0x00CC($sp)           
/* 039F8 808CE7B8 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 039FC 808CE7BC 4600A306 */  mov.s   $f12, $f20                 
/* 03A00 808CE7C0 C62802C8 */  lwc1    $f8, 0x02C8($s1)           ## 000002C8
/* 03A04 808CE7C4 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 03A08 808CE7C8 44816000 */  mtc1    $at, $f12                  ## $f12 = 40.00
/* 03A0C 808CE7CC 46080400 */  add.s   $f16, $f0, $f8             
/* 03A10 808CE7D0 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 03A14 808CE7D4 E7B000B8 */  swc1    $f16, 0x00B8($sp)          
/* 03A18 808CE7D8 46180100 */  add.s   $f4, $f0, $f24             
/* 03A1C 808CE7DC 4600A306 */  mov.s   $f12, $f20                 
/* 03A20 808CE7E0 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 03A24 808CE7E4 E7A400BC */  swc1    $f4, 0x00BC($sp)           
/* 03A28 808CE7E8 C62602D0 */  lwc1    $f6, 0x02D0($s1)           ## 000002D0
/* 03A2C 808CE7EC 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 03A30 808CE7F0 44816000 */  mtc1    $at, $f12                  ## $f12 = 1.50
/* 03A34 808CE7F4 46060280 */  add.s   $f10, $f0, $f6             
/* 03A38 808CE7F8 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 03A3C 808CE7FC E7AA00C0 */  swc1    $f10, 0x00C0($sp)          
/* 03A40 808CE800 4600048D */  trunc.w.s $f18, $f0                  
/* 03A44 808CE804 8FA40070 */  lw      $a0, 0x0070($sp)           
/* 03A48 808CE808 27A500B8 */  addiu   $a1, $sp, 0x00B8           ## $a1 = FFFFFFB0
/* 03A4C 808CE80C 27A600D0 */  addiu   $a2, $sp, 0x00D0           ## $a2 = FFFFFFC8
/* 03A50 808CE810 44199000 */  mfc1    $t9, $f18                  
/* 03A54 808CE814 27A700C4 */  addiu   $a3, $sp, 0x00C4           ## $a3 = FFFFFFBC
/* 03A58 808CE818 00194400 */  sll     $t0, $t9, 16               
/* 03A5C 808CE81C 00084C03 */  sra     $t1, $t0, 16               
/* 03A60 808CE820 252A0006 */  addiu   $t2, $t1, 0x0006           ## $t2 = 00000006
/* 03A64 808CE824 448A4000 */  mtc1    $t2, $f8                   ## $f8 = 0.00
/* 03A68 808CE828 00000000 */  nop
/* 03A6C 808CE82C 46804420 */  cvt.s.w $f16, $f8                  
/* 03A70 808CE830 0C232B70 */  jal     func_808CADC0              
/* 03A74 808CE834 E7B00010 */  swc1    $f16, 0x0010($sp)          
/* 03A78 808CE838 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 03A7C 808CE83C 00108400 */  sll     $s0, $s0, 16               
/* 03A80 808CE840 00108403 */  sra     $s0, $s0, 16               
/* 03A84 808CE844 2A010008 */  slti    $at, $s0, 0x0008           
/* 03A88 808CE848 1420FFC7 */  bne     $at, $zero, .L808CE768     
/* 03A8C 808CE84C 00000000 */  nop
.L808CE850:
/* 03A90 808CE850 8622021C */  lh      $v0, 0x021C($s1)           ## 0000021C
/* 03A94 808CE854 27B200A0 */  addiu   $s2, $sp, 0x00A0           ## $s2 = FFFFFF98
/* 03A98 808CE858 3C0E808D */  lui     $t6, %hi(D_808D1A40)       ## $t6 = 808D0000
/* 03A9C 808CE85C 1040000D */  beq     $v0, $zero, .L808CE894     
/* 03AA0 808CE860 28410011 */  slti    $at, $v0, 0x0011           
/* 03AA4 808CE864 1020000B */  beq     $at, $zero, .L808CE894     
/* 03AA8 808CE868 28410006 */  slti    $at, $v0, 0x0006           
/* 03AAC 808CE86C 14200004 */  bne     $at, $zero, .L808CE880     
/* 03AB0 808CE870 00026080 */  sll     $t4, $v0,  2               
/* 03AB4 808CE874 240B00FF */  addiu   $t3, $zero, 0x00FF         ## $t3 = 000000FF
/* 03AB8 808CE878 10000006 */  beq     $zero, $zero, .L808CE894   
/* 03ABC 808CE87C A7AB0106 */  sh      $t3, 0x0106($sp)           
.L808CE880:
/* 03AC0 808CE880 01826023 */  subu    $t4, $t4, $v0              
/* 03AC4 808CE884 000C60C0 */  sll     $t4, $t4,  3               
/* 03AC8 808CE888 01826021 */  addu    $t4, $t4, $v0              
/* 03ACC 808CE88C 000C6040 */  sll     $t4, $t4,  1               
/* 03AD0 808CE890 A7AC0106 */  sh      $t4, 0x0106($sp)           
.L808CE894:
/* 03AD4 808CE894 87AD0106 */  lh      $t5, 0x0106($sp)           
/* 03AD8 808CE898 25CE1A40 */  addiu   $t6, $t6, %lo(D_808D1A40)  ## $t6 = 808D1A40
/* 03ADC 808CE89C 27B90088 */  addiu   $t9, $sp, 0x0088           ## $t9 = FFFFFF80
/* 03AE0 808CE8A0 11A000BE */  beq     $t5, $zero, .L808CEB9C     
/* 03AE4 808CE8A4 3C08808D */  lui     $t0, %hi(D_808D1A4C)       ## $t0 = 808D0000
/* 03AE8 808CE8A8 8DD80000 */  lw      $t8, 0x0000($t6)           ## 808D1A40
/* 03AEC 808CE8AC 25081A4C */  addiu   $t0, $t0, %lo(D_808D1A4C)  ## $t0 = 808D1A4C
/* 03AF0 808CE8B0 240B0002 */  addiu   $t3, $zero, 0x0002         ## $t3 = 00000002
/* 03AF4 808CE8B4 AE580000 */  sw      $t8, 0x0000($s2)           ## FFFFFF98
/* 03AF8 808CE8B8 8DCF0004 */  lw      $t7, 0x0004($t6)           ## 808D1A44
/* 03AFC 808CE8BC 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 03B00 808CE8C0 44812000 */  mtc1    $at, $f4                   ## $f4 = 30.00
/* 03B04 808CE8C4 AE4F0004 */  sw      $t7, 0x0004($s2)           ## FFFFFF9C
/* 03B08 808CE8C8 8DD80008 */  lw      $t8, 0x0008($t6)           ## 808D1A48
/* 03B0C 808CE8CC 3C0C8013 */  lui     $t4, %hi(D_801333E0)
/* 03B10 808CE8D0 3C0D8013 */  lui     $t5, %hi(D_801333E8)
/* 03B14 808CE8D4 AE580008 */  sw      $t8, 0x0008($s2)           ## FFFFFFA0
/* 03B18 808CE8D8 8D0A0000 */  lw      $t2, 0x0000($t0)           ## 808D1A4C
/* 03B1C 808CE8DC 8D090004 */  lw      $t1, 0x0004($t0)           ## 808D1A50
/* 03B20 808CE8E0 25AD33E8 */  addiu   $t5, %lo(D_801333E8)
/* 03B24 808CE8E4 AF2A0000 */  sw      $t2, 0x0000($t9)           ## FFFFFF80
/* 03B28 808CE8E8 8D0A0008 */  lw      $t2, 0x0008($t0)           ## 808D1A54
/* 03B2C 808CE8EC AF290004 */  sw      $t1, 0x0004($t9)           ## FFFFFF84
/* 03B30 808CE8F0 258733E0 */  addiu   $a3, $t4, %lo(D_801333E0)
/* 03B34 808CE8F4 AF2A0008 */  sw      $t2, 0x0008($t9)           ## FFFFFF88
/* 03B38 808CE8F8 A22B0220 */  sb      $t3, 0x0220($s1)           ## 00000220
/* 03B3C 808CE8FC 262E1970 */  addiu   $t6, $s1, 0x1970           ## $t6 = 00001970
/* 03B40 808CE900 3C05808D */  lui     $a1, %hi(D_808D1A28)       ## $a1 = 808D0000
/* 03B44 808CE904 24A51A28 */  addiu   $a1, $a1, %lo(D_808D1A28)  ## $a1 = 808D1A28
/* 03B48 808CE908 AFAE0070 */  sw      $t6, 0x0070($sp)           
/* 03B4C 808CE90C AFAD0014 */  sw      $t5, 0x0014($sp)           
/* 03B50 808CE910 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 03B54 808CE914 240430DB */  addiu   $a0, $zero, 0x30DB         ## $a0 = 000030DB
/* 03B58 808CE918 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 03B5C 808CE91C 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 03B60 808CE920 E7A400A8 */  swc1    $f4, 0x00A8($sp)           
/* 03B64 808CE924 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 03B68 808CE928 262213F4 */  addiu   $v0, $s1, 0x13F4           ## $v0 = 000013F4
/* 03B6C 808CE92C 44810000 */  mtc1    $at, $f0                   ## $f0 = 32768.00
/* 03B70 808CE930 8C580000 */  lw      $t8, 0x0000($v0)           ## 000013F4
/* 03B74 808CE934 3C01808D */  lui     $at, %hi(D_808D1F78)       ## $at = 808D0000
/* 03B78 808CE938 C4221F78 */  lwc1    $f2, %lo(D_808D1F78)($at)  
/* 03B7C 808CE93C 27B0007C */  addiu   $s0, $sp, 0x007C           ## $s0 = FFFFFF74
/* 03B80 808CE940 AE180000 */  sw      $t8, 0x0000($s0)           ## FFFFFF74
/* 03B84 808CE944 8C4F0004 */  lw      $t7, 0x0004($v0)           ## 000013F8
/* 03B88 808CE948 3C01808D */  lui     $at, %hi(D_808D1F7C)       ## $at = 808D0000
/* 03B8C 808CE94C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 03B90 808CE950 AE0F0004 */  sw      $t7, 0x0004($s0)           ## FFFFFF78
/* 03B94 808CE954 8C580008 */  lw      $t8, 0x0008($v0)           ## 000013FC
/* 03B98 808CE958 AE180008 */  sw      $t8, 0x0008($s0)           ## FFFFFF7C
/* 03B9C 808CE95C 86390032 */  lh      $t9, 0x0032($s1)           ## 00000032
/* 03BA0 808CE960 86280030 */  lh      $t0, 0x0030($s1)           ## 00000030
/* 03BA4 808CE964 AFA2006C */  sw      $v0, 0x006C($sp)           
/* 03BA8 808CE968 44993000 */  mtc1    $t9, $f6                   ## $f6 = 0.00
/* 03BAC 808CE96C 00084823 */  subu    $t1, $zero, $t0            
/* 03BB0 808CE970 44894000 */  mtc1    $t1, $f8                   ## $f8 = 0.00
/* 03BB4 808CE974 468032A0 */  cvt.s.w $f10, $f6                  
/* 03BB8 808CE978 46804420 */  cvt.s.w $f16, $f8                  
/* 03BBC 808CE97C 46005483 */  div.s   $f18, $f10, $f0            
/* 03BC0 808CE980 C42A1F7C */  lwc1    $f10, %lo(D_808D1F7C)($at) 
/* 03BC4 808CE984 46008103 */  div.s   $f4, $f16, $f0             
/* 03BC8 808CE988 46029302 */  mul.s   $f12, $f18, $f2            
/* 03BCC 808CE98C 00000000 */  nop
/* 03BD0 808CE990 46022182 */  mul.s   $f6, $f4, $f2              
/* 03BD4 808CE994 460A3480 */  add.s   $f18, $f6, $f10            
/* 03BD8 808CE998 0C034348 */  jal     Matrix_RotateY              
/* 03BDC 808CE99C E7B200B0 */  swc1    $f18, 0x00B0($sp)          
/* 03BE0 808CE9A0 C7AC00B0 */  lwc1    $f12, 0x00B0($sp)          
/* 03BE4 808CE9A4 0C0342DC */  jal     Matrix_RotateX              
/* 03BE8 808CE9A8 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 03BEC 808CE9AC 02402025 */  or      $a0, $s2, $zero            ## $a0 = FFFFFF98
/* 03BF0 808CE9B0 0C0346BD */  jal     Matrix_MultVec3f              
/* 03BF4 808CE9B4 27A50094 */  addiu   $a1, $sp, 0x0094           ## $a1 = FFFFFF8C
/* 03BF8 808CE9B8 86240226 */  lh      $a0, 0x0226($s1)           ## 00000226
/* 03BFC 808CE9BC 00042340 */  sll     $a0, $a0, 13               
/* 03C00 808CE9C0 00042400 */  sll     $a0, $a0, 16               
/* 03C04 808CE9C4 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 03C08 808CE9C8 00042403 */  sra     $a0, $a0, 16               
/* 03C0C 808CE9CC 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 03C10 808CE9D0 4481A000 */  mtc1    $at, $f20                  ## $f20 = 50.00
/* 03C14 808CE9D4 3C014396 */  lui     $at, 0x4396                ## $at = 43960000
/* 03C18 808CE9D8 4481B000 */  mtc1    $at, $f22                  ## $f22 = 300.00
/* 03C1C 808CE9DC 46140202 */  mul.s   $f8, $f0, $f20             
/* 03C20 808CE9E0 87AA0106 */  lh      $t2, 0x0106($sp)           
/* 03C24 808CE9E4 8FA40070 */  lw      $a0, 0x0070($sp)           
/* 03C28 808CE9E8 02002825 */  or      $a1, $s0, $zero            ## $a1 = FFFFFF74
/* 03C2C 808CE9EC AFAA0014 */  sw      $t2, 0x0014($sp)           
/* 03C30 808CE9F0 27A60094 */  addiu   $a2, $sp, 0x0094           ## $a2 = FFFFFF8C
/* 03C34 808CE9F4 27A70088 */  addiu   $a3, $sp, 0x0088           ## $a3 = FFFFFF80
/* 03C38 808CE9F8 46164400 */  add.s   $f16, $f8, $f22            
/* 03C3C 808CE9FC E7B00010 */  swc1    $f16, 0x0010($sp)          
/* 03C40 808CEA00 862B0032 */  lh      $t3, 0x0032($s1)           ## 00000032
/* 03C44 808CEA04 0C232BFD */  jal     func_808CAFF4              
/* 03C48 808CEA08 AFAB0018 */  sw      $t3, 0x0018($sp)           
/* 03C4C 808CEA0C 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 03C50 808CEA10 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.50
/* 03C54 808CEA14 C7A40094 */  lwc1    $f4, 0x0094($sp)           
/* 03C58 808CEA18 C7B2007C */  lwc1    $f18, 0x007C($sp)          
/* 03C5C 808CEA1C C7B00098 */  lwc1    $f16, 0x0098($sp)          
/* 03C60 808CEA20 46062282 */  mul.s   $f10, $f4, $f6             
/* 03C64 808CEA24 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
/* 03C68 808CEA28 00000000 */  nop
/* 03C6C 808CEA2C 46048182 */  mul.s   $f6, $f16, $f4             
/* 03C70 808CEA30 44818000 */  mtc1    $at, $f16                  ## $f16 = 0.50
/* 03C74 808CEA34 460A9200 */  add.s   $f8, $f18, $f10            
/* 03C78 808CEA38 C7B20080 */  lwc1    $f18, 0x0080($sp)          
/* 03C7C 808CEA3C E7A8007C */  swc1    $f8, 0x007C($sp)           
/* 03C80 808CEA40 C7A8009C */  lwc1    $f8, 0x009C($sp)           
/* 03C84 808CEA44 46069280 */  add.s   $f10, $f18, $f6            
/* 03C88 808CEA48 C7B20084 */  lwc1    $f18, 0x0084($sp)          
/* 03C8C 808CEA4C 46104102 */  mul.s   $f4, $f8, $f16             
/* 03C90 808CEA50 E7AA0080 */  swc1    $f10, 0x0080($sp)          
/* 03C94 808CEA54 46049180 */  add.s   $f6, $f18, $f4             
/* 03C98 808CEA58 E7A60084 */  swc1    $f6, 0x0084($sp)           
/* 03C9C 808CEA5C 86240226 */  lh      $a0, 0x0226($s1)           ## 00000226
/* 03CA0 808CEA60 00042340 */  sll     $a0, $a0, 13               
/* 03CA4 808CEA64 00042400 */  sll     $a0, $a0, 16               
/* 03CA8 808CEA68 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 03CAC 808CEA6C 00042403 */  sra     $a0, $a0, 16               
/* 03CB0 808CEA70 46140282 */  mul.s   $f10, $f0, $f20            
/* 03CB4 808CEA74 87AC0106 */  lh      $t4, 0x0106($sp)           
/* 03CB8 808CEA78 8FA40070 */  lw      $a0, 0x0070($sp)           
/* 03CBC 808CEA7C 02002825 */  or      $a1, $s0, $zero            ## $a1 = FFFFFF74
/* 03CC0 808CEA80 AFAC0014 */  sw      $t4, 0x0014($sp)           
/* 03CC4 808CEA84 27A60094 */  addiu   $a2, $sp, 0x0094           ## $a2 = FFFFFF8C
/* 03CC8 808CEA88 27A70088 */  addiu   $a3, $sp, 0x0088           ## $a3 = FFFFFF80
/* 03CCC 808CEA8C 46165200 */  add.s   $f8, $f10, $f22            
/* 03CD0 808CEA90 E7A80010 */  swc1    $f8, 0x0010($sp)           
/* 03CD4 808CEA94 862D0032 */  lh      $t5, 0x0032($s1)           ## 00000032
/* 03CD8 808CEA98 0C232BFD */  jal     func_808CAFF4              
/* 03CDC 808CEA9C AFAD0018 */  sw      $t5, 0x0018($sp)           
/* 03CE0 808CEAA0 3C014188 */  lui     $at, 0x4188                ## $at = 41880000
/* 03CE4 808CEAA4 44818000 */  mtc1    $at, $f16                  ## $f16 = 17.00
/* 03CE8 808CEAA8 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 03CEC 808CEAAC 4481C000 */  mtc1    $at, $f24                  ## $f24 = 2.00
/* 03CF0 808CEAB0 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 03CF4 808CEAB4 4481B000 */  mtc1    $at, $f22                  ## $f22 = 100.00
/* 03CF8 808CEAB8 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 03CFC 808CEABC 4481A000 */  mtc1    $at, $f20                  ## $f20 = -10.00
/* 03D00 808CEAC0 E7BC00A0 */  swc1    $f28, 0x00A0($sp)          
/* 03D04 808CEAC4 E7BC00A8 */  swc1    $f28, 0x00A8($sp)          
/* 03D08 808CEAC8 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 03D0C 808CEACC E7B000A4 */  swc1    $f16, 0x00A4($sp)          
.L808CEAD0:
/* 03D10 808CEAD0 3C01808D */  lui     $at, %hi(D_808D1F80)       ## $at = 808D0000
/* 03D14 808CEAD4 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 03D18 808CEAD8 C42C1F80 */  lwc1    $f12, %lo(D_808D1F80)($at) 
/* 03D1C 808CEADC 3C01808D */  lui     $at, %hi(D_808D1F84)       ## $at = 808D0000
/* 03D20 808CEAE0 C42C1F84 */  lwc1    $f12, %lo(D_808D1F84)($at) 
/* 03D24 808CEAE4 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 03D28 808CEAE8 E7A000AC */  swc1    $f0, 0x00AC($sp)           
/* 03D2C 808CEAEC C7AC00AC */  lwc1    $f12, 0x00AC($sp)          
/* 03D30 808CEAF0 E7A000B0 */  swc1    $f0, 0x00B0($sp)           
/* 03D34 808CEAF4 0C034348 */  jal     Matrix_RotateY              
/* 03D38 808CEAF8 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 03D3C 808CEAFC C7AC00B0 */  lwc1    $f12, 0x00B0($sp)          
/* 03D40 808CEB00 0C0342DC */  jal     Matrix_RotateX              
/* 03D44 808CEB04 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 03D48 808CEB08 02402025 */  or      $a0, $s2, $zero            ## $a0 = FFFFFF98
/* 03D4C 808CEB0C 0C0346BD */  jal     Matrix_MultVec3f              
/* 03D50 808CEB10 27A50094 */  addiu   $a1, $sp, 0x0094           ## $a1 = FFFFFF8C
/* 03D54 808CEB14 C7B20094 */  lwc1    $f18, 0x0094($sp)          
/* 03D58 808CEB18 C7AA0098 */  lwc1    $f10, 0x0098($sp)          
/* 03D5C 808CEB1C 4600C306 */  mov.s   $f12, $f24                 
/* 03D60 808CEB20 46149102 */  mul.s   $f4, $f18, $f20            
/* 03D64 808CEB24 C7B2009C */  lwc1    $f18, 0x009C($sp)          
/* 03D68 808CEB28 46145202 */  mul.s   $f8, $f10, $f20            
/* 03D6C 808CEB2C 46162183 */  div.s   $f6, $f4, $f22             
/* 03D70 808CEB30 46149102 */  mul.s   $f4, $f18, $f20            
/* 03D74 808CEB34 46164403 */  div.s   $f16, $f8, $f22            
/* 03D78 808CEB38 E7A60088 */  swc1    $f6, 0x0088($sp)           
/* 03D7C 808CEB3C 46162183 */  div.s   $f6, $f4, $f22             
/* 03D80 808CEB40 E7B0008C */  swc1    $f16, 0x008C($sp)          
/* 03D84 808CEB44 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 03D88 808CEB48 E7A60090 */  swc1    $f6, 0x0090($sp)           
/* 03D8C 808CEB4C 4600028D */  trunc.w.s $f10, $f0                  
/* 03D90 808CEB50 8FA40070 */  lw      $a0, 0x0070($sp)           
/* 03D94 808CEB54 8FA5006C */  lw      $a1, 0x006C($sp)           
/* 03D98 808CEB58 27A60094 */  addiu   $a2, $sp, 0x0094           ## $a2 = FFFFFF8C
/* 03D9C 808CEB5C 440F5000 */  mfc1    $t7, $f10                  
/* 03DA0 808CEB60 27A70088 */  addiu   $a3, $sp, 0x0088           ## $a3 = FFFFFF80
/* 03DA4 808CEB64 000FC400 */  sll     $t8, $t7, 16               
/* 03DA8 808CEB68 0018CC03 */  sra     $t9, $t8, 16               
/* 03DAC 808CEB6C 27280008 */  addiu   $t0, $t9, 0x0008           ## $t0 = 00000008
/* 03DB0 808CEB70 44884000 */  mtc1    $t0, $f8                   ## $f8 = 0.00
/* 03DB4 808CEB74 00000000 */  nop
/* 03DB8 808CEB78 46804420 */  cvt.s.w $f16, $f8                  
/* 03DBC 808CEB7C 0C232B70 */  jal     func_808CADC0              
/* 03DC0 808CEB80 E7B00010 */  swc1    $f16, 0x0010($sp)          
/* 03DC4 808CEB84 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 03DC8 808CEB88 00108400 */  sll     $s0, $s0, 16               
/* 03DCC 808CEB8C 00108403 */  sra     $s0, $s0, 16               
/* 03DD0 808CEB90 2A010006 */  slti    $at, $s0, 0x0006           
/* 03DD4 808CEB94 1420FFCE */  bne     $at, $zero, .L808CEAD0     
/* 03DD8 808CEB98 00000000 */  nop
.L808CEB9C:
/* 03DDC 808CEB9C 3C0142B4 */  lui     $at, 0x42B4                ## $at = 42B40000
/* 03DE0 808CEBA0 44819000 */  mtc1    $at, $f18                  ## $f18 = 90.00
/* 03DE4 808CEBA4 C6200028 */  lwc1    $f0, 0x0028($s1)           ## 00000028
/* 03DE8 808CEBA8 3C01442F */  lui     $at, 0x442F                ## $at = 442F0000
/* 03DEC 808CEBAC 4612003C */  c.lt.s  $f0, $f18                  
/* 03DF0 808CEBB0 00000000 */  nop
/* 03DF4 808CEBB4 4503000D */  bc1tl   .L808CEBEC                 
/* 03DF8 808CEBB8 8E2B0004 */  lw      $t3, 0x0004($s1)           ## 00000004
/* 03DFC 808CEBBC 44812000 */  mtc1    $at, $f4                   ## $f4 = 700.00
/* 03E00 808CEBC0 00000000 */  nop
/* 03E04 808CEBC4 4600203C */  c.lt.s  $f4, $f0                   
/* 03E08 808CEBC8 00000000 */  nop
/* 03E0C 808CEBCC 45030007 */  bc1tl   .L808CEBEC                 
/* 03E10 808CEBD0 8E2B0004 */  lw      $t3, 0x0004($s1)           ## 00000004
/* 03E14 808CEBD4 8E2A0218 */  lw      $t2, 0x0218($s1)           ## 00000218
/* 03E18 808CEBD8 3C09808D */  lui     $t1, %hi(func_808CDE30)    ## $t1 = 808D0000
/* 03E1C 808CEBDC 2529DE30 */  addiu   $t1, $t1, %lo(func_808CDE30) ## $t1 = 808CDE30
/* 03E20 808CEBE0 552A0007 */  bnel    $t1, $t2, .L808CEC00       
/* 03E24 808CEBE4 8E2D0004 */  lw      $t5, 0x0004($s1)           ## 00000004
/* 03E28 808CEBE8 8E2B0004 */  lw      $t3, 0x0004($s1)           ## 00000004
.L808CEBEC:
/* 03E2C 808CEBEC 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 03E30 808CEBF0 01616024 */  and     $t4, $t3, $at              
/* 03E34 808CEBF4 10000004 */  beq     $zero, $zero, .L808CEC08   
/* 03E38 808CEBF8 AE2C0004 */  sw      $t4, 0x0004($s1)           ## 00000004
/* 03E3C 808CEBFC 8E2D0004 */  lw      $t5, 0x0004($s1)           ## 00000004
.L808CEC00:
/* 03E40 808CEC00 35AE0001 */  ori     $t6, $t5, 0x0001           ## $t6 = 00000001
/* 03E44 808CEC04 AE2E0004 */  sw      $t6, 0x0004($s1)           ## 00000004
.L808CEC08:
/* 03E48 808CEC08 8FBF0064 */  lw      $ra, 0x0064($sp)           
/* 03E4C 808CEC0C D7B40030 */  ldc1    $f20, 0x0030($sp)          
/* 03E50 808CEC10 D7B60038 */  ldc1    $f22, 0x0038($sp)          
/* 03E54 808CEC14 D7B80040 */  ldc1    $f24, 0x0040($sp)          
/* 03E58 808CEC18 D7BA0048 */  ldc1    $f26, 0x0048($sp)          
/* 03E5C 808CEC1C D7BC0050 */  ldc1    $f28, 0x0050($sp)          
/* 03E60 808CEC20 8FB00058 */  lw      $s0, 0x0058($sp)           
/* 03E64 808CEC24 8FB1005C */  lw      $s1, 0x005C($sp)           
/* 03E68 808CEC28 8FB20060 */  lw      $s2, 0x0060($sp)           
/* 03E6C 808CEC2C 03E00008 */  jr      $ra                        
/* 03E70 808CEC30 27BD0108 */  addiu   $sp, $sp, 0x0108           ## $sp = 00000000
