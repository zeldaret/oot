.late_rodata
glabel D_80B37B90
 .word 0x3E333333
glabel D_80B37B94
 .word 0x3E333333
glabel D_80B37B98
    .float -0.85

.text
glabel func_80B35024
/* 01374 80B35024 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 01378 80B35028 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 0137C 80B3502C AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 01380 80B35030 AFB00030 */  sw      $s0, 0x0030($sp)           
/* 01384 80B35034 AFA5005C */  sw      $a1, 0x005C($sp)           
/* 01388 80B35038 E7A4004C */  swc1    $f4, 0x004C($sp)           
/* 0138C 80B3503C 8CAF1C44 */  lw      $t7, 0x1C44($a1)           ## 00001C44
/* 01390 80B35040 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01394 80B35044 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 01398 80B35048 AFAF003C */  sw      $t7, 0x003C($sp)           
/* 0139C 80B3504C 861902FE */  lh      $t9, 0x02FE($s0)           ## 000002FE
/* 013A0 80B35050 8618008A */  lh      $t8, 0x008A($s0)           ## 0000008A
/* 013A4 80B35054 AFA80010 */  sw      $t0, 0x0010($sp)           
/* 013A8 80B35058 248400B6 */  addiu   $a0, $a0, 0x00B6           ## $a0 = 000000B6
/* 013AC 80B3505C 03192821 */  addu    $a1, $t8, $t9              
/* 013B0 80B35060 00052C00 */  sll     $a1, $a1, 16               
/* 013B4 80B35064 00052C03 */  sra     $a1, $a1, 16               
/* 013B8 80B35068 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 013BC 80B3506C 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 013C0 80B35070 24070FA0 */  addiu   $a3, $zero, 0x0FA0         ## $a3 = 00000FA0
/* 013C4 80B35074 8FA4005C */  lw      $a0, 0x005C($sp)           
/* 013C8 80B35078 0C2CDE0C */  jal     func_80B37830              
/* 013CC 80B3507C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 013D0 80B35080 1440012A */  bne     $v0, $zero, .L80B3552C     
/* 013D4 80B35084 8FA4005C */  lw      $a0, 0x005C($sp)           
/* 013D8 80B35088 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 013DC 80B3508C 0C2CCFEC */  jal     func_80B33FB0              
/* 013E0 80B35090 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 013E4 80B35094 54400126 */  bnel    $v0, $zero, .L80B35530     
/* 013E8 80B35098 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 013EC 80B3509C 860700B6 */  lh      $a3, 0x00B6($s0)           ## 000000B6
/* 013F0 80B350A0 860B02FE */  lh      $t3, 0x02FE($s0)           ## 000002FE
/* 013F4 80B350A4 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 013F8 80B350A8 A6070032 */  sh      $a3, 0x0032($s0)           ## 00000032
/* 013FC 80B350AC 8FA9003C */  lw      $t1, 0x003C($sp)           
/* 01400 80B350B0 852A00B6 */  lh      $t2, 0x00B6($t1)           ## 000000B6
/* 01404 80B350B4 014B6021 */  addu    $t4, $t2, $t3              
/* 01408 80B350B8 01816821 */  addu    $t5, $t4, $at              
/* 0140C 80B350BC A7AD0056 */  sh      $t5, 0x0056($sp)           
/* 01410 80B350C0 96020088 */  lhu     $v0, 0x0088($s0)           ## 00000088
/* 01414 80B350C4 30420008 */  andi    $v0, $v0, 0x0008           ## $v0 = 00000000
/* 01418 80B350C8 14400008 */  bne     $v0, $zero, .L80B350EC     
/* 0141C 80B350CC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01420 80B350D0 8FA5005C */  lw      $a1, 0x005C($sp)           
/* 01424 80B350D4 0C00CE6E */  jal     func_800339B8              
/* 01428 80B350D8 8E060068 */  lw      $a2, 0x0068($s0)           ## 00000068
/* 0142C 80B350DC 54400019 */  bnel    $v0, $zero, .L80B35144     
/* 01430 80B350E0 8FA4005C */  lw      $a0, 0x005C($sp)           
/* 01434 80B350E4 96020088 */  lhu     $v0, 0x0088($s0)           ## 00000088
/* 01438 80B350E8 30420008 */  andi    $v0, $v0, 0x0008           ## $v0 = 00000000
.L80B350EC:
/* 0143C 80B350EC 5040000A */  beql    $v0, $zero, .L80B35118     
/* 01440 80B350F0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 01444 80B350F4 860E007E */  lh      $t6, 0x007E($s0)           ## 0000007E
/* 01448 80B350F8 860F008A */  lh      $t7, 0x008A($s0)           ## 0000008A
/* 0144C 80B350FC 861902FE */  lh      $t9, 0x02FE($s0)           ## 000002FE
/* 01450 80B35100 01CFC023 */  subu    $t8, $t6, $t7              
/* 01454 80B35104 03191023 */  subu    $v0, $t8, $t9              
/* 01458 80B35108 00021400 */  sll     $v0, $v0, 16               
/* 0145C 80B3510C 10000002 */  beq     $zero, $zero, .L80B35118   
/* 01460 80B35110 00021403 */  sra     $v0, $v0, 16               
/* 01464 80B35114 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80B35118:
/* 01468 80B35118 04400003 */  bltz    $v0, .L80B35128            
/* 0146C 80B3511C 00021823 */  subu    $v1, $zero, $v0            
/* 01470 80B35120 10000001 */  beq     $zero, $zero, .L80B35128   
/* 01474 80B35124 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
.L80B35128:
/* 01478 80B35128 28612EE1 */  slti    $at, $v1, 0x2EE1           
/* 0147C 80B3512C 54200005 */  bnel    $at, $zero, .L80B35144     
/* 01480 80B35130 8FA4005C */  lw      $a0, 0x005C($sp)           
/* 01484 80B35134 860802FE */  lh      $t0, 0x02FE($s0)           ## 000002FE
/* 01488 80B35138 00084823 */  subu    $t1, $zero, $t0            
/* 0148C 80B3513C A60902FE */  sh      $t1, 0x02FE($s0)           ## 000002FE
/* 01490 80B35140 8FA4005C */  lw      $a0, 0x005C($sp)           
.L80B35144:
/* 01494 80B35144 0C00CEAE */  jal     func_80033AB8              
/* 01498 80B35148 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0149C 80B3514C 10400004 */  beq     $v0, $zero, .L80B35160     
/* 014A0 80B35150 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 014A4 80B35154 44811000 */  mtc1    $at, $f2                   ## $f2 = 150.00
/* 014A8 80B35158 00000000 */  nop
/* 014AC 80B3515C E7A2004C */  swc1    $f2, 0x004C($sp)           
.L80B35160:
/* 014B0 80B35160 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 014B4 80B35164 C7A2004C */  lwc1    $f2, 0x004C($sp)           
/* 014B8 80B35168 44813000 */  mtc1    $at, $f6                   ## $f6 = 60.00
/* 014BC 80B3516C C6000090 */  lwc1    $f0, 0x0090($s0)           ## 00000090
/* 014C0 80B35170 46023200 */  add.s   $f8, $f6, $f2              
/* 014C4 80B35174 4608003E */  c.le.s  $f0, $f8                   
/* 014C8 80B35178 00000000 */  nop
/* 014CC 80B3517C 4502000B */  bc1fl   .L80B351AC                 
/* 014D0 80B35180 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 014D4 80B35184 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 014D8 80B35188 260402EC */  addiu   $a0, $s0, 0x02EC           ## $a0 = 000002EC
/* 014DC 80B3518C 3C05C080 */  lui     $a1, 0xC080                ## $a1 = C0800000
/* 014E0 80B35190 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 014E4 80B35194 3C073FC0 */  lui     $a3, 0x3FC0                ## $a3 = 3FC00000
/* 014E8 80B35198 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 014EC 80B3519C E7AA0010 */  swc1    $f10, 0x0010($sp)          
/* 014F0 80B351A0 1000001A */  beq     $zero, $zero, .L80B3520C   
/* 014F4 80B351A4 C60C02EC */  lwc1    $f12, 0x02EC($s0)          ## 000002EC
/* 014F8 80B351A8 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
.L80B351AC:
/* 014FC 80B351AC 44819000 */  mtc1    $at, $f18                  ## $f18 = 80.00
/* 01500 80B351B0 260402EC */  addiu   $a0, $s0, 0x02EC           ## $a0 = 000002EC
/* 01504 80B351B4 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 01508 80B351B8 46029100 */  add.s   $f4, $f18, $f2             
/* 0150C 80B351BC 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01510 80B351C0 3C0740D4 */  lui     $a3, 0x40D4                ## $a3 = 40D40000
/* 01514 80B351C4 4600203C */  c.lt.s  $f4, $f0                   
/* 01518 80B351C8 00000000 */  nop
/* 0151C 80B351CC 4502000B */  bc1fl   .L80B351FC                 
/* 01520 80B351D0 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 01524 80B351D4 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 01528 80B351D8 260402EC */  addiu   $a0, $s0, 0x02EC           ## $a0 = 000002EC
/* 0152C 80B351DC 3C054080 */  lui     $a1, 0x4080                ## $a1 = 40800000
/* 01530 80B351E0 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01534 80B351E4 3C073FC0 */  lui     $a3, 0x3FC0                ## $a3 = 3FC00000
/* 01538 80B351E8 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 0153C 80B351EC E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 01540 80B351F0 10000006 */  beq     $zero, $zero, .L80B3520C   
/* 01544 80B351F4 C60C02EC */  lwc1    $f12, 0x02EC($s0)          ## 000002EC
/* 01548 80B351F8 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
.L80B351FC:
/* 0154C 80B351FC 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 0000CCCD
/* 01550 80B35200 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 01554 80B35204 E7A80010 */  swc1    $f8, 0x0010($sp)           
/* 01558 80B35208 C60C02EC */  lwc1    $f12, 0x02EC($s0)          ## 000002EC
.L80B3520C:
/* 0155C 80B3520C 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 01560 80B35210 00000000 */  nop
/* 01564 80B35214 460C5032 */  c.eq.s  $f10, $f12                 
/* 01568 80B35218 00000000 */  nop
/* 0156C 80B3521C 45030010 */  bc1tl   .L80B35260                 
/* 01570 80B35220 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 01574 80B35224 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 01578 80B35228 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 0157C 80B3522C C60402EC */  lwc1    $f4, 0x02EC($s0)           ## 000002EC
/* 01580 80B35230 C6120024 */  lwc1    $f18, 0x0024($s0)          ## 00000024
/* 01584 80B35234 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 01588 80B35238 46040182 */  mul.s   $f6, $f0, $f4              
/* 0158C 80B3523C 46069200 */  add.s   $f8, $f18, $f6             
/* 01590 80B35240 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 01594 80B35244 E6080024 */  swc1    $f8, 0x0024($s0)           ## 00000024
/* 01598 80B35248 C60C02EC */  lwc1    $f12, 0x02EC($s0)          ## 000002EC
/* 0159C 80B3524C C60A002C */  lwc1    $f10, 0x002C($s0)          ## 0000002C
/* 015A0 80B35250 460C0102 */  mul.s   $f4, $f0, $f12             
/* 015A4 80B35254 46045480 */  add.s   $f18, $f10, $f4            
/* 015A8 80B35258 E612002C */  swc1    $f18, 0x002C($s0)          ## 0000002C
/* 015AC 80B3525C 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
.L80B35260:
/* 015B0 80B35260 00000000 */  nop
/* 015B4 80B35264 460C803E */  c.le.s  $f16, $f12                 
/* 015B8 80B35268 00000000 */  nop
/* 015BC 80B3526C 45020004 */  bc1fl   .L80B35280                 
/* 015C0 80B35270 46006387 */  neg.s   $f14, $f12                 
/* 015C4 80B35274 10000002 */  beq     $zero, $zero, .L80B35280   
/* 015C8 80B35278 46006386 */  mov.s   $f14, $f12                 
/* 015CC 80B3527C 46006387 */  neg.s   $f14, $f12                 
.L80B35280:
/* 015D0 80B35280 C6000068 */  lwc1    $f0, 0x0068($s0)           ## 00000068
/* 015D4 80B35284 4600803E */  c.le.s  $f16, $f0                  
/* 015D8 80B35288 00000000 */  nop
/* 015DC 80B3528C 45020004 */  bc1fl   .L80B352A0                 
/* 015E0 80B35290 46000087 */  neg.s   $f2, $f0                   
/* 015E4 80B35294 10000002 */  beq     $zero, $zero, .L80B352A0   
/* 015E8 80B35298 46000086 */  mov.s   $f2, $f0                   
/* 015EC 80B3529C 46000087 */  neg.s   $f2, $f0                   
.L80B352A0:
/* 015F0 80B352A0 4602703C */  c.lt.s  $f14, $f2                  
/* 015F4 80B352A4 3C0180B3 */  lui     $at, %hi(D_80B37B94)       ## $at = 80B30000
/* 015F8 80B352A8 45000006 */  bc1f    .L80B352C4                 
/* 015FC 80B352AC 00000000 */  nop
/* 01600 80B352B0 3C0180B3 */  lui     $at, %hi(D_80B37B90)       ## $at = 80B30000
/* 01604 80B352B4 C4267B90 */  lwc1    $f6, %lo(D_80B37B90)($at)  
/* 01608 80B352B8 46060202 */  mul.s   $f8, $f0, $f6              
/* 0160C 80B352BC 10000004 */  beq     $zero, $zero, .L80B352D0   
/* 01610 80B352C0 E60801A4 */  swc1    $f8, 0x01A4($s0)           ## 000001A4
.L80B352C4:
/* 01614 80B352C4 C42A7B94 */  lwc1    $f10, %lo(D_80B37B94)($at) 
/* 01618 80B352C8 460A6102 */  mul.s   $f4, $f12, $f10            
/* 0161C 80B352CC E60401A4 */  swc1    $f4, 0x01A4($s0)           ## 000001A4
.L80B352D0:
/* 01620 80B352D0 3C01C040 */  lui     $at, 0xC040                ## $at = C0400000
/* 01624 80B352D4 44811000 */  mtc1    $at, $f2                   ## $f2 = -3.00
/* 01628 80B352D8 C60001A4 */  lwc1    $f0, 0x01A4($s0)           ## 000001A4
/* 0162C 80B352DC 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 01630 80B352E0 4602003C */  c.lt.s  $f0, $f2                   
/* 01634 80B352E4 00000000 */  nop
/* 01638 80B352E8 45020004 */  bc1fl   .L80B352FC                 
/* 0163C 80B352EC 44819000 */  mtc1    $at, $f18                  ## $f18 = 3.00
/* 01640 80B352F0 1000000C */  beq     $zero, $zero, .L80B35324   
/* 01644 80B352F4 E60201A4 */  swc1    $f2, 0x01A4($s0)           ## 000001A4
/* 01648 80B352F8 44819000 */  mtc1    $at, $f18                  ## $f18 = 3.00
.L80B352FC:
/* 0164C 80B352FC 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 01650 80B35300 4600903C */  c.lt.s  $f18, $f0                  
/* 01654 80B35304 00000000 */  nop
/* 01658 80B35308 45020005 */  bc1fl   .L80B35320                 
/* 0165C 80B3530C 46000086 */  mov.s   $f2, $f0                   
/* 01660 80B35310 44811000 */  mtc1    $at, $f2                   ## $f2 = 3.00
/* 01664 80B35314 10000003 */  beq     $zero, $zero, .L80B35324   
/* 01668 80B35318 E60201A4 */  swc1    $f2, 0x01A4($s0)           ## 000001A4
/* 0166C 80B3531C 46000086 */  mov.s   $f2, $f0                   
.L80B35320:
/* 01670 80B35320 E60201A4 */  swc1    $f2, 0x01A4($s0)           ## 000001A4
.L80B35324:
/* 01674 80B35324 C60601A0 */  lwc1    $f6, 0x01A0($s0)           ## 000001A0
/* 01678 80B35328 26040188 */  addiu   $a0, $s0, 0x0188           ## $a0 = 00000188
/* 0167C 80B3532C 4600320D */  trunc.w.s $f8, $f6                   
/* 01680 80B35330 44034000 */  mfc1    $v1, $f8                   
/* 01684 80B35334 0C02927F */  jal     SkelAnime_Update
              
/* 01688 80B35338 AFA30048 */  sw      $v1, 0x0048($sp)           
/* 0168C 80B3533C 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 01690 80B35340 C60001A4 */  lwc1    $f0, 0x01A4($s0)           ## 000001A4
/* 01694 80B35344 8FA30048 */  lw      $v1, 0x0048($sp)           
/* 01698 80B35348 4600803E */  c.le.s  $f16, $f0                  
/* 0169C 80B3534C 00000000 */  nop
/* 016A0 80B35350 45020004 */  bc1fl   .L80B35364                 
/* 016A4 80B35354 46000087 */  neg.s   $f2, $f0                   
/* 016A8 80B35358 10000002 */  beq     $zero, $zero, .L80B35364   
/* 016AC 80B3535C 46000086 */  mov.s   $f2, $f0                   
/* 016B0 80B35360 46000087 */  neg.s   $f2, $f0                   
.L80B35364:
/* 016B4 80B35364 C60C01A0 */  lwc1    $f12, 0x01A0($s0)          ## 000001A0
/* 016B8 80B35368 4600803E */  c.le.s  $f16, $f0                  
/* 016BC 80B3536C 46026281 */  sub.s   $f10, $f12, $f2            
/* 016C0 80B35370 4600648D */  trunc.w.s $f18, $f12                 
/* 016C4 80B35374 4600510D */  trunc.w.s $f4, $f10                  
/* 016C8 80B35378 440D9000 */  mfc1    $t5, $f18                  
/* 016CC 80B3537C 44022000 */  mfc1    $v0, $f4                   
/* 016D0 80B35380 45020004 */  bc1fl   .L80B35394                 
/* 016D4 80B35384 46000087 */  neg.s   $f2, $f0                   
/* 016D8 80B35388 10000002 */  beq     $zero, $zero, .L80B35394   
/* 016DC 80B3538C 46000086 */  mov.s   $f2, $f0                   
/* 016E0 80B35390 46000087 */  neg.s   $f2, $f0                   
.L80B35394:
/* 016E4 80B35394 506D001D */  beql    $v1, $t5, .L80B3540C       
/* 016E8 80B35398 8FAB005C */  lw      $t3, 0x005C($sp)           
/* 016EC 80B3539C 5C40001B */  bgtzl   $v0, .L80B3540C            
/* 016F0 80B353A0 8FAB005C */  lw      $t3, 0x005C($sp)           
/* 016F4 80B353A4 4600118D */  trunc.w.s $f6, $f2                   
/* 016F8 80B353A8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 016FC 80B353AC 440F3000 */  mfc1    $t7, $f6                   
/* 01700 80B353B0 00000000 */  nop
/* 01704 80B353B4 01E3C021 */  addu    $t8, $t7, $v1              
/* 01708 80B353B8 5B000014 */  blezl   $t8, .L80B3540C            
/* 0170C 80B353BC 8FAB005C */  lw      $t3, 0x005C($sp)           
/* 01710 80B353C0 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01714 80B353C4 2405385A */  addiu   $a1, $zero, 0x385A         ## $a1 = 0000385A
/* 01718 80B353C8 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 0171C 80B353CC 44814000 */  mtc1    $at, $f8                   ## $f8 = 3.00
/* 01720 80B353D0 24190003 */  addiu   $t9, $zero, 0x0003         ## $t9 = 00000003
/* 01724 80B353D4 24080032 */  addiu   $t0, $zero, 0x0032         ## $t0 = 00000032
/* 01728 80B353D8 24090032 */  addiu   $t1, $zero, 0x0032         ## $t1 = 00000032
/* 0172C 80B353DC 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 01730 80B353E0 AFAA0020 */  sw      $t2, 0x0020($sp)           
/* 01734 80B353E4 AFA9001C */  sw      $t1, 0x001C($sp)           
/* 01738 80B353E8 AFA80018 */  sw      $t0, 0x0018($sp)           
/* 0173C 80B353EC AFB90010 */  sw      $t9, 0x0010($sp)           
/* 01740 80B353F0 8FA4005C */  lw      $a0, 0x005C($sp)           
/* 01744 80B353F4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01748 80B353F8 26060024 */  addiu   $a2, $s0, 0x0024           ## $a2 = 00000024
/* 0174C 80B353FC 3C0741A0 */  lui     $a3, 0x41A0                ## $a3 = 41A00000
/* 01750 80B35400 0C00CC98 */  jal     func_80033260              
/* 01754 80B35404 E7A80014 */  swc1    $f8, 0x0014($sp)           
/* 01758 80B35408 8FAB005C */  lw      $t3, 0x005C($sp)           
.L80B3540C:
/* 0175C 80B3540C 3C0C0001 */  lui     $t4, 0x0001                ## $t4 = 00010000
/* 01760 80B35410 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01764 80B35414 018B6021 */  addu    $t4, $t4, $t3              
/* 01768 80B35418 8D8C1DE4 */  lw      $t4, 0x1DE4($t4)           ## 00011DE4
/* 0176C 80B3541C 318D005F */  andi    $t5, $t4, 0x005F           ## $t5 = 00000000
/* 01770 80B35420 55A00004 */  bnel    $t5, $zero, .L80B35434     
/* 01774 80B35424 87AE0056 */  lh      $t6, 0x0056($sp)           
/* 01778 80B35428 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 0177C 80B3542C 2405383E */  addiu   $a1, $zero, 0x383E         ## $a1 = 0000383E
/* 01780 80B35430 87AE0056 */  lh      $t6, 0x0056($sp)           
.L80B35434:
/* 01784 80B35434 860F00B6 */  lh      $t7, 0x00B6($s0)           ## 000000B6
/* 01788 80B35438 01CF2023 */  subu    $a0, $t6, $t7              
/* 0178C 80B3543C 00042400 */  sll     $a0, $a0, 16               
/* 01790 80B35440 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 01794 80B35444 00042403 */  sra     $a0, $a0, 16               
/* 01798 80B35448 3C0180B3 */  lui     $at, %hi(D_80B37B98)       ## $at = 80B30000
/* 0179C 80B3544C C42A7B98 */  lwc1    $f10, %lo(D_80B37B98)($at) 
/* 017A0 80B35450 8FA4005C */  lw      $a0, 0x005C($sp)           
/* 017A4 80B35454 460A003C */  c.lt.s  $f0, $f10                  
/* 017A8 80B35458 00000000 */  nop
/* 017AC 80B3545C 45020010 */  bc1fl   .L80B354A0                 
/* 017B0 80B35460 8E1802E8 */  lw      $t8, 0x02E8($s0)           ## 000002E8
/* 017B4 80B35464 0C00CEAE */  jal     func_80033AB8              
/* 017B8 80B35468 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 017BC 80B3546C 1440000B */  bne     $v0, $zero, .L80B3549C     
/* 017C0 80B35470 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 017C4 80B35474 44812000 */  mtc1    $at, $f4                   ## $f4 = 80.00
/* 017C8 80B35478 C6120090 */  lwc1    $f18, 0x0090($s0)          ## 00000090
/* 017CC 80B3547C 4604903E */  c.le.s  $f18, $f4                  
/* 017D0 80B35480 00000000 */  nop
/* 017D4 80B35484 45020006 */  bc1fl   .L80B354A0                 
/* 017D8 80B35488 8E1802E8 */  lw      $t8, 0x02E8($s0)           ## 000002E8
/* 017DC 80B3548C 0C2CD550 */  jal     func_80B35540              
/* 017E0 80B35490 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 017E4 80B35494 10000026 */  beq     $zero, $zero, .L80B35530   
/* 017E8 80B35498 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L80B3549C:
/* 017EC 80B3549C 8E1802E8 */  lw      $t8, 0x02E8($s0)           ## 000002E8
.L80B354A0:
/* 017F0 80B354A0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 017F4 80B354A4 2719FFFF */  addiu   $t9, $t8, 0xFFFF           ## $t9 = FFFFFFFF
/* 017F8 80B354A8 17200020 */  bne     $t9, $zero, .L80B3552C     
/* 017FC 80B354AC AE1902E8 */  sw      $t9, 0x02E8($s0)           ## 000002E8
/* 01800 80B354B0 0C00CEAE */  jal     func_80033AB8              
/* 01804 80B354B4 8FA4005C */  lw      $a0, 0x005C($sp)           
/* 01808 80B354B8 1040000E */  beq     $v0, $zero, .L80B354F4     
/* 0180C 80B354BC 00000000 */  nop
/* 01810 80B354C0 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 01814 80B354C4 00000000 */  nop
/* 01818 80B354C8 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 0181C 80B354CC 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.50
/* 01820 80B354D0 00000000 */  nop
/* 01824 80B354D4 4600303C */  c.lt.s  $f6, $f0                   
/* 01828 80B354D8 00000000 */  nop
/* 0182C 80B354DC 45000005 */  bc1f    .L80B354F4                 
/* 01830 80B354E0 00000000 */  nop
/* 01834 80B354E4 0C2CD6E5 */  jal     func_80B35B94              
/* 01838 80B354E8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0183C 80B354EC 10000010 */  beq     $zero, $zero, .L80B35530   
/* 01840 80B354F0 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L80B354F4:
/* 01844 80B354F4 0C2CD157 */  jal     func_80B3455C              
/* 01848 80B354F8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0184C 80B354FC 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 01850 80B35500 00000000 */  nop
/* 01854 80B35504 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 01858 80B35508 44814000 */  mtc1    $at, $f8                   ## $f8 = 3.00
/* 0185C 80B3550C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01860 80B35510 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 01864 80B35514 46080282 */  mul.s   $f10, $f0, $f8             
/* 01868 80B35518 46045480 */  add.s   $f18, $f10, $f4            
/* 0186C 80B3551C 4600918D */  trunc.w.s $f6, $f18                  
/* 01870 80B35520 440A3000 */  mfc1    $t2, $f6                   
/* 01874 80B35524 00000000 */  nop
/* 01878 80B35528 AE0A02E8 */  sw      $t2, 0x02E8($s0)           ## 000002E8
.L80B3552C:
/* 0187C 80B3552C 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L80B35530:
/* 01880 80B35530 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 01884 80B35534 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
/* 01888 80B35538 03E00008 */  jr      $ra                        
/* 0188C 80B3553C 00000000 */  nop
