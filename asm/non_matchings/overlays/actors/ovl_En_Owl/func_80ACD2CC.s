glabel func_80ACD2CC
/* 033AC 80ACD2CC 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 033B0 80ACD2D0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 033B4 80ACD2D4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 033B8 80ACD2D8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 033BC 80ACD2DC 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 033C0 80ACD2E0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 033C4 80ACD2E4 24050007 */  addiu   $a1, $zero, 0x0007         ## $a1 = 00000007
/* 033C8 80ACD2E8 0C2B3471 */  jal     func_80ACD1C4              
/* 033CC 80ACD2EC AFA6004C */  sw      $a2, 0x004C($sp)           
/* 033D0 80ACD2F0 8FA6004C */  lw      $a2, 0x004C($sp)           
/* 033D4 80ACD2F4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 033D8 80ACD2F8 8CCE1DA8 */  lw      $t6, 0x1DA8($a2)           ## 00001DA8
/* 033DC 80ACD2FC 8DCF000C */  lw      $t7, 0x000C($t6)           ## 0000000C
/* 033E0 80ACD300 448F2000 */  mtc1    $t7, $f4                   ## $f4 = 0.00
/* 033E4 80ACD304 00000000 */  nop
/* 033E8 80ACD308 468021A0 */  cvt.s.w $f6, $f4                   
/* 033EC 80ACD30C E7A6003C */  swc1    $f6, 0x003C($sp)           
/* 033F0 80ACD310 8CD81DA8 */  lw      $t8, 0x1DA8($a2)           ## 00001DA8
/* 033F4 80ACD314 8F190010 */  lw      $t9, 0x0010($t8)           ## 00000010
/* 033F8 80ACD318 44994000 */  mtc1    $t9, $f8                   ## $f8 = 0.00
/* 033FC 80ACD31C 00000000 */  nop
/* 03400 80ACD320 468042A0 */  cvt.s.w $f10, $f8                  
/* 03404 80ACD324 E7AA0040 */  swc1    $f10, 0x0040($sp)          
/* 03408 80ACD328 8CC81DA8 */  lw      $t0, 0x1DA8($a2)           ## 00001DA8
/* 0340C 80ACD32C 8D090014 */  lw      $t1, 0x0014($t0)           ## 00000014
/* 03410 80ACD330 44898000 */  mtc1    $t1, $f16                  ## $f16 = 0.00
/* 03414 80ACD334 00000000 */  nop
/* 03418 80ACD338 468084A0 */  cvt.s.w $f18, $f16                 
/* 0341C 80ACD33C E7B20044 */  swc1    $f18, 0x0044($sp)          
/* 03420 80ACD340 8CC31DA8 */  lw      $v1, 0x1DA8($a2)           ## 00001DA8
/* 03424 80ACD344 86040034 */  lh      $a0, 0x0034($s0)           ## 00000034
/* 03428 80ACD348 846A0008 */  lh      $t2, 0x0008($v1)           ## 00000008
/* 0342C 80ACD34C 01441023 */  subu    $v0, $t2, $a0              
/* 03430 80ACD350 04430003 */  bgezl   $v0, .L80ACD360            
/* 03434 80ACD354 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 03438 80ACD358 00411021 */  addu    $v0, $v0, $at              
/* 0343C 80ACD35C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
.L80ACD360:
/* 03440 80ACD360 44845000 */  mtc1    $a0, $f10                  ## $f10 = 0.00
/* 03444 80ACD364 960C03FC */  lhu     $t4, 0x03FC($s0)           ## 000003FC
/* 03448 80ACD368 468021A0 */  cvt.s.w $f6, $f4                   
/* 0344C 80ACD36C 318D0004 */  andi    $t5, $t4, 0x0004           ## $t5 = 00000000
/* 03450 80ACD370 46805420 */  cvt.s.w $f16, $f10                 
/* 03454 80ACD374 46003202 */  mul.s   $f8, $f6, $f0              
/* 03458 80ACD378 46104480 */  add.s   $f18, $f8, $f16            
/* 0345C 80ACD37C 4600910D */  trunc.w.s $f4, $f18                  
/* 03460 80ACD380 44022000 */  mfc1    $v0, $f4                   
/* 03464 80ACD384 00000000 */  nop
/* 03468 80ACD388 00021400 */  sll     $v0, $v0, 16               
/* 0346C 80ACD38C 00021403 */  sra     $v0, $v0, 16               
/* 03470 80ACD390 11A00037 */  beq     $t5, $zero, .L80ACD470     
/* 03474 80ACD394 3042FFFF */  andi    $v0, $v0, 0xFFFF           ## $v0 = 00000000
/* 03478 80ACD398 946E0006 */  lhu     $t6, 0x0006($v1)           ## 00000006
/* 0347C 80ACD39C 00022400 */  sll     $a0, $v0, 16               
/* 03480 80ACD3A0 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 03484 80ACD3A4 448E3000 */  mtc1    $t6, $f6                   ## $f6 = 0.00
/* 03488 80ACD3A8 00042403 */  sra     $a0, $a0, 16               
/* 0348C 80ACD3AC 05C10004 */  bgez    $t6, .L80ACD3C0            
/* 03490 80ACD3B0 468030A0 */  cvt.s.w $f2, $f6                   
/* 03494 80ACD3B4 44815000 */  mtc1    $at, $f10                  ## $f10 = 4294967296.00
/* 03498 80ACD3B8 00000000 */  nop
/* 0349C 80ACD3BC 460A1080 */  add.s   $f2, $f2, $f10             
.L80ACD3C0:
/* 034A0 80ACD3C0 3C013D61 */  lui     $at, 0x3D61                ## $at = 3D610000
/* 034A4 80ACD3C4 44814000 */  mtc1    $at, $f8                   ## $f8 = 0.05
/* 034A8 80ACD3C8 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 034AC 80ACD3CC 3C0143B4 */  lui     $at, 0x43B4                ## $at = 43B40000
/* 034B0 80ACD3D0 46081082 */  mul.s   $f2, $f2, $f8              
/* 034B4 80ACD3D4 4610103C */  c.lt.s  $f2, $f16                  
/* 034B8 80ACD3D8 00000000 */  nop
/* 034BC 80ACD3DC 45020005 */  bc1fl   .L80ACD3F4                 
/* 034C0 80ACD3E0 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 034C4 80ACD3E4 44819000 */  mtc1    $at, $f18                  ## $f18 = 360.00
/* 034C8 80ACD3E8 00000000 */  nop
/* 034CC 80ACD3EC 46121080 */  add.s   $f2, $f2, $f18             
/* 034D0 80ACD3F0 AFA40028 */  sw      $a0, 0x0028($sp)           
.L80ACD3F4:
/* 034D4 80ACD3F4 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 034D8 80ACD3F8 E7A20030 */  swc1    $f2, 0x0030($sp)           
/* 034DC 80ACD3FC C7A20030 */  lwc1    $f2, 0x0030($sp)           
/* 034E0 80ACD400 C7A4003C */  lwc1    $f4, 0x003C($sp)           
/* 034E4 80ACD404 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 034E8 80ACD408 46020182 */  mul.s   $f6, $f0, $f2              
/* 034EC 80ACD40C 46062281 */  sub.s   $f10, $f4, $f6             
/* 034F0 80ACD410 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 034F4 80ACD414 E7AA003C */  swc1    $f10, 0x003C($sp)          
/* 034F8 80ACD418 C7A20030 */  lwc1    $f2, 0x0030($sp)           
/* 034FC 80ACD41C C7A80044 */  lwc1    $f8, 0x0044($sp)           
/* 03500 80ACD420 27AF003C */  addiu   $t7, $sp, 0x003C           ## $t7 = FFFFFFF4
/* 03504 80ACD424 46020402 */  mul.s   $f16, $f0, $f2             
/* 03508 80ACD428 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 0350C 80ACD42C 3C0880AD */  lui     $t0, %hi(EnOwl_Draw)    ## $t0 = 80AD0000
/* 03510 80ACD430 2508CFB8 */  addiu   $t0, $t0, %lo(EnOwl_Draw) ## $t0 = 80ACCFB8
/* 03514 80ACD434 46104480 */  add.s   $f18, $f8, $f16            
/* 03518 80ACD438 E7B20044 */  swc1    $f18, 0x0044($sp)          
/* 0351C 80ACD43C E60203F8 */  swc1    $f2, 0x03F8($s0)           ## 000003F8
/* 03520 80ACD440 8DF90000 */  lw      $t9, 0x0000($t7)           ## FFFFFFF4
/* 03524 80ACD444 960903FC */  lhu     $t1, 0x03FC($s0)           ## 000003FC
/* 03528 80ACD448 AE190024 */  sw      $t9, 0x0024($s0)           ## 00000024
/* 0352C 80ACD44C 8DF80004 */  lw      $t8, 0x0004($t7)           ## FFFFFFF8
/* 03530 80ACD450 312AFFFB */  andi    $t2, $t1, 0xFFFB           ## $t2 = 00000000
/* 03534 80ACD454 AE180028 */  sw      $t8, 0x0028($s0)           ## 00000028
/* 03538 80ACD458 8DF90008 */  lw      $t9, 0x0008($t7)           ## FFFFFFFC
/* 0353C 80ACD45C AE080134 */  sw      $t0, 0x0134($s0)           ## 00000134
/* 03540 80ACD460 A60A03FC */  sh      $t2, 0x03FC($s0)           ## 000003FC
/* 03544 80ACD464 E6040068 */  swc1    $f4, 0x0068($s0)           ## 00000068
/* 03548 80ACD468 10000015 */  beq     $zero, $zero, .L80ACD4C0   
/* 0354C 80ACD46C AE19002C */  sw      $t9, 0x002C($s0)           ## 0000002C
.L80ACD470:
/* 03550 80ACD470 00022400 */  sll     $a0, $v0, 16               
/* 03554 80ACD474 00042403 */  sra     $a0, $a0, 16               
/* 03558 80ACD478 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 0355C 80ACD47C AFA40028 */  sw      $a0, 0x0028($sp)           
/* 03560 80ACD480 C60A03F8 */  lwc1    $f10, 0x03F8($s0)          ## 000003F8
/* 03564 80ACD484 C7A6003C */  lwc1    $f6, 0x003C($sp)           
/* 03568 80ACD488 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 0356C 80ACD48C 460A0202 */  mul.s   $f8, $f0, $f10             
/* 03570 80ACD490 46083401 */  sub.s   $f16, $f6, $f8             
/* 03574 80ACD494 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 03578 80ACD498 E7B0003C */  swc1    $f16, 0x003C($sp)          
/* 0357C 80ACD49C C60403F8 */  lwc1    $f4, 0x03F8($s0)           ## 000003F8
/* 03580 80ACD4A0 C7B20044 */  lwc1    $f18, 0x0044($sp)          
/* 03584 80ACD4A4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03588 80ACD4A8 46040282 */  mul.s   $f10, $f0, $f4             
/* 0358C 80ACD4AC 27A5003C */  addiu   $a1, $sp, 0x003C           ## $a1 = FFFFFFF4
/* 03590 80ACD4B0 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 03594 80ACD4B4 460A9180 */  add.s   $f6, $f18, $f10            
/* 03598 80ACD4B8 0C2B3488 */  jal     func_80ACD220              
/* 0359C 80ACD4BC E7A60044 */  swc1    $f6, 0x0044($sp)           
.L80ACD4C0:
/* 035A0 80ACD4C0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 035A4 80ACD4C4 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 035A8 80ACD4C8 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 035AC 80ACD4CC 03E00008 */  jr      $ra                        
/* 035B0 80ACD4D0 00000000 */  nop


