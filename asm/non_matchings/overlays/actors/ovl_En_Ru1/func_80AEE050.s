.late_rodata
glabel D_80AF1C2C
    .float 0.2

glabel D_80AF1C30
    .float -0.1
glabel D_80AF1C34
    .float 0.1

glabel D_80AF1C38
    .float 0.95

.text
glabel func_80AEE050
/* 03440 80AEE050 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 03444 80AEE054 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 03448 80AEE058 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0344C 80AEE05C 8C820350 */  lw      $v0, 0x0350($a0)           ## 00000350
/* 03450 80AEE060 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 03454 80AEE064 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 03458 80AEE068 14400049 */  bne     $v0, $zero, .L80AEE190     
/* 0345C 80AEE06C 00000000 */  nop
/* 03460 80AEE070 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 03464 80AEE074 C4820070 */  lwc1    $f2, 0x0070($a0)           ## 00000070
/* 03468 80AEE078 3C0180AF */  lui     $at, %hi(D_80AF1C2C)       ## $at = 80AF0000
/* 0346C 80AEE07C 46020032 */  c.eq.s  $f0, $f2                   
/* 03470 80AEE080 00000000 */  nop
/* 03474 80AEE084 45000017 */  bc1f    .L80AEE0E4                 
/* 03478 80AEE088 00000000 */  nop
/* 0347C 80AEE08C C4840068 */  lwc1    $f4, 0x0068($a0)           ## 00000068
/* 03480 80AEE090 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 03484 80AEE094 46040032 */  c.eq.s  $f0, $f4                   
/* 03488 80AEE098 00000000 */  nop
/* 0348C 80AEE09C 45000011 */  bc1f    .L80AEE0E4                 
/* 03490 80AEE0A0 00000000 */  nop
/* 03494 80AEE0A4 0C2BB80B */  jal     func_80AEE02C              
/* 03498 80AEE0A8 AC8E0350 */  sw      $t6, 0x0350($a0)           ## 00000350
/* 0349C 80AEE0AC 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 034A0 80AEE0B0 44814000 */  mtc1    $at, $f8                   ## $f8 = 10.00
/* 034A4 80AEE0B4 C6060084 */  lwc1    $f6, 0x0084($s0)           ## 00000084
/* 034A8 80AEE0B8 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 034AC 80AEE0BC 44818000 */  mtc1    $at, $f16                  ## $f16 = 0.50
/* 034B0 80AEE0C0 46083281 */  sub.s   $f10, $f6, $f8             
/* 034B4 80AEE0C4 C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 034B8 80AEE0C8 A600035C */  sh      $zero, 0x035C($s0)         ## 0000035C
/* 034BC 80AEE0CC 46105482 */  mul.s   $f18, $f10, $f16           
/* 034C0 80AEE0D0 E6120358 */  swc1    $f18, 0x0358($s0)          ## 00000358
/* 034C4 80AEE0D4 C6060358 */  lwc1    $f6, 0x0358($s0)           ## 00000358
/* 034C8 80AEE0D8 46062200 */  add.s   $f8, $f4, $f6              
/* 034CC 80AEE0DC 1000005C */  beq     $zero, $zero, .L80AEE250   
/* 034D0 80AEE0E0 E6080354 */  swc1    $f8, 0x0354($s0)           ## 00000354
.L80AEE0E4:
/* 034D4 80AEE0E4 C42C1C2C */  lwc1    $f12, %lo(D_80AF1C2C)($at) 
/* 034D8 80AEE0E8 C6100060 */  lwc1    $f16, 0x0060($s0)          ## 00000060
/* 034DC 80AEE0EC E600006C */  swc1    $f0, 0x006C($s0)           ## 0000006C
/* 034E0 80AEE0F0 460C1282 */  mul.s   $f10, $f2, $f12            
/* 034E4 80AEE0F4 3C0180AF */  lui     $at, %hi(D_80AF1C30)       ## $at = 80AF0000
/* 034E8 80AEE0F8 460C8482 */  mul.s   $f18, $f16, $f12           
/* 034EC 80AEE0FC E60A0070 */  swc1    $f10, 0x0070($s0)          ## 00000070
/* 034F0 80AEE100 C6040070 */  lwc1    $f4, 0x0070($s0)           ## 00000070
/* 034F4 80AEE104 E6120060 */  swc1    $f18, 0x0060($s0)          ## 00000060
/* 034F8 80AEE108 C4261C30 */  lwc1    $f6, %lo(D_80AF1C30)($at)  
/* 034FC 80AEE10C 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 03500 80AEE110 44815000 */  mtc1    $at, $f10                  ## $f10 = 0.50
/* 03504 80AEE114 4604303E */  c.le.s  $f6, $f4                   
/* 03508 80AEE118 00000000 */  nop
/* 0350C 80AEE11C 45020004 */  bc1fl   .L80AEE130                 
/* 03510 80AEE120 C6080068 */  lwc1    $f8, 0x0068($s0)           ## 00000068
/* 03514 80AEE124 E6000070 */  swc1    $f0, 0x0070($s0)           ## 00000070
/* 03518 80AEE128 E6000060 */  swc1    $f0, 0x0060($s0)           ## 00000060
/* 0351C 80AEE12C C6080068 */  lwc1    $f8, 0x0068($s0)           ## 00000068
.L80AEE130:
/* 03520 80AEE130 3C0180AF */  lui     $at, %hi(D_80AF1C34)       ## $at = 80AF0000
/* 03524 80AEE134 460A4402 */  mul.s   $f16, $f8, $f10            
/* 03528 80AEE138 E6100068 */  swc1    $f16, 0x0068($s0)          ## 00000068
/* 0352C 80AEE13C C6040068 */  lwc1    $f4, 0x0068($s0)           ## 00000068
/* 03530 80AEE140 C4321C34 */  lwc1    $f18, %lo(D_80AF1C34)($at) 
/* 03534 80AEE144 4612203E */  c.le.s  $f4, $f18                  
/* 03538 80AEE148 00000000 */  nop
/* 0353C 80AEE14C 45000002 */  bc1f    .L80AEE158                 
/* 03540 80AEE150 00000000 */  nop
/* 03544 80AEE154 E6000068 */  swc1    $f0, 0x0068($s0)           ## 00000068
.L80AEE158:
/* 03548 80AEE158 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 0354C 80AEE15C 86040032 */  lh      $a0, 0x0032($s0)           ## 00000032
/* 03550 80AEE160 C6060068 */  lwc1    $f6, 0x0068($s0)           ## 00000068
/* 03554 80AEE164 86040032 */  lh      $a0, 0x0032($s0)           ## 00000032
/* 03558 80AEE168 46060202 */  mul.s   $f8, $f0, $f6              
/* 0355C 80AEE16C 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 03560 80AEE170 E608005C */  swc1    $f8, 0x005C($s0)           ## 0000005C
/* 03564 80AEE174 C60A0068 */  lwc1    $f10, 0x0068($s0)          ## 00000068
/* 03568 80AEE178 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0356C 80AEE17C 460A0402 */  mul.s   $f16, $f0, $f10            
/* 03570 80AEE180 0C00B5FB */  jal     func_8002D7EC              
/* 03574 80AEE184 E6100064 */  swc1    $f16, 0x0064($s0)          ## 00000064
/* 03578 80AEE188 10000032 */  beq     $zero, $zero, .L80AEE254   
/* 0357C 80AEE18C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AEE190:
/* 03580 80AEE190 14410022 */  bne     $v0, $at, .L80AEE21C       
/* 03584 80AEE194 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 03588 80AEE198 44819000 */  mtc1    $at, $f18                  ## $f18 = 1.00
/* 0358C 80AEE19C C6000358 */  lwc1    $f0, 0x0358($s0)           ## 00000358
/* 03590 80AEE1A0 4612003E */  c.le.s  $f0, $f18                  
/* 03594 80AEE1A4 00000000 */  nop
/* 03598 80AEE1A8 45020009 */  bc1fl   .L80AEE1D0                 
/* 0359C 80AEE1AC E7A00028 */  swc1    $f0, 0x0028($sp)           
/* 035A0 80AEE1B0 0C2BB80B */  jal     func_80AEE02C              
/* 035A4 80AEE1B4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 035A8 80AEE1B8 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 035AC 80AEE1BC 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
/* 035B0 80AEE1C0 AE0F0350 */  sw      $t7, 0x0350($s0)           ## 00000350
/* 035B4 80AEE1C4 10000022 */  beq     $zero, $zero, .L80AEE250   
/* 035B8 80AEE1C8 E6000360 */  swc1    $f0, 0x0360($s0)           ## 00000360
/* 035BC 80AEE1CC E7A00028 */  swc1    $f0, 0x0028($sp)           
.L80AEE1D0:
/* 035C0 80AEE1D0 C6040354 */  lwc1    $f4, 0x0354($s0)           ## 00000354
/* 035C4 80AEE1D4 E7A40024 */  swc1    $f4, 0x0024($sp)           
/* 035C8 80AEE1D8 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 035CC 80AEE1DC 8604035C */  lh      $a0, 0x035C($s0)           ## 0000035C
/* 035D0 80AEE1E0 C7A60028 */  lwc1    $f6, 0x0028($sp)           
/* 035D4 80AEE1E4 C7B00024 */  lwc1    $f16, 0x0024($sp)          
/* 035D8 80AEE1E8 8618035C */  lh      $t8, 0x035C($s0)           ## 0000035C
/* 035DC 80AEE1EC 46003207 */  neg.s   $f8, $f6                   
/* 035E0 80AEE1F0 3C0180AF */  lui     $at, %hi(D_80AF1C38)       ## $at = 80AF0000
/* 035E4 80AEE1F4 46080282 */  mul.s   $f10, $f0, $f8             
/* 035E8 80AEE1F8 271903E8 */  addiu   $t9, $t8, 0x03E8           ## $t9 = 000003E8
/* 035EC 80AEE1FC A619035C */  sh      $t9, 0x035C($s0)           ## 0000035C
/* 035F0 80AEE200 C6040358 */  lwc1    $f4, 0x0358($s0)           ## 00000358
/* 035F4 80AEE204 46105480 */  add.s   $f18, $f10, $f16           
/* 035F8 80AEE208 E6120028 */  swc1    $f18, 0x0028($s0)          ## 00000028
/* 035FC 80AEE20C C4261C38 */  lwc1    $f6, %lo(D_80AF1C38)($at)  
/* 03600 80AEE210 46062202 */  mul.s   $f8, $f4, $f6              
/* 03604 80AEE214 1000000E */  beq     $zero, $zero, .L80AEE250   
/* 03608 80AEE218 E6080358 */  swc1    $f8, 0x0358($s0)           ## 00000358
.L80AEE21C:
/* 0360C 80AEE21C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 03610 80AEE220 44818000 */  mtc1    $at, $f16                  ## $f16 = 1.00
/* 03614 80AEE224 C60A0360 */  lwc1    $f10, 0x0360($s0)          ## 00000360
/* 03618 80AEE228 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 0361C 80AEE22C 24080003 */  addiu   $t0, $zero, 0x0003         ## $t0 = 00000003
/* 03620 80AEE230 46105480 */  add.s   $f18, $f10, $f16           
/* 03624 80AEE234 E6120360 */  swc1    $f18, 0x0360($s0)          ## 00000360
/* 03628 80AEE238 C6040360 */  lwc1    $f4, 0x0360($s0)           ## 00000360
/* 0362C 80AEE23C 4604003C */  c.lt.s  $f0, $f4                   
/* 03630 80AEE240 00000000 */  nop
/* 03634 80AEE244 45020003 */  bc1fl   .L80AEE254                 
/* 03638 80AEE248 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0363C 80AEE24C AE080350 */  sw      $t0, 0x0350($s0)           ## 00000350
.L80AEE250:
/* 03640 80AEE250 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AEE254:
/* 03644 80AEE254 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 03648 80AEE258 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 0364C 80AEE25C 03E00008 */  jr      $ra                        
/* 03650 80AEE260 00000000 */  nop
