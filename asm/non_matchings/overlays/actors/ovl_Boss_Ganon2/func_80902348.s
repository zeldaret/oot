glabel func_80902348
/* 05408 80902348 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 0540C 8090234C AFBF002C */  sw      $ra, 0x002C($sp)           
/* 05410 80902350 AFB20028 */  sw      $s2, 0x0028($sp)           
/* 05414 80902354 AFB10024 */  sw      $s1, 0x0024($sp)           
/* 05418 80902358 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 0541C 8090235C AFA50044 */  sw      $a1, 0x0044($sp)           
/* 05420 80902360 848E0316 */  lh      $t6, 0x0316($a0)           ## 00000316
/* 05424 80902364 00809025 */  or      $s2, $a0, $zero            ## $s2 = 00000000
/* 05428 80902368 2405FFFD */  addiu   $a1, $zero, 0xFFFD         ## $a1 = FFFFFFFD
/* 0542C 8090236C 15C0002E */  bne     $t6, $zero, .L80902428     
/* 05430 80902370 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 05434 80902374 8E4F0460 */  lw      $t7, 0x0460($s2)           ## 00000460
.L80902378:
/* 05438 80902378 0002C180 */  sll     $t8, $v0,  6               
/* 0543C 8090237C 24420001 */  addiu   $v0, $v0, 0x0001           ## $v0 = 00000001
/* 05440 80902380 01F81821 */  addu    $v1, $t7, $t8              
/* 05444 80902384 90640016 */  lbu     $a0, 0x0016($v1)           ## 00000016
/* 05448 80902388 00021400 */  sll     $v0, $v0, 16               
/* 0544C 8090238C 00021403 */  sra     $v0, $v0, 16               
/* 05450 80902390 30990002 */  andi    $t9, $a0, 0x0002           ## $t9 = 00000000
/* 05454 80902394 13200004 */  beq     $t9, $zero, .L809023A8     
/* 05458 80902398 28410002 */  slti    $at, $v0, 0x0002           
/* 0545C 8090239C 00854024 */  and     $t0, $a0, $a1              
/* 05460 809023A0 1000001F */  beq     $zero, $zero, .L80902420   
/* 05464 809023A4 A0680016 */  sb      $t0, 0x0016($v1)           ## 00000016
.L809023A8:
/* 05468 809023A8 90640015 */  lbu     $a0, 0x0015($v1)           ## 00000015
/* 0546C 809023AC 30890002 */  andi    $t1, $a0, 0x0002           ## $t1 = 00000000
/* 05470 809023B0 1120001B */  beq     $t1, $zero, .L80902420     
/* 05474 809023B4 00855024 */  and     $t2, $a0, $a1              
/* 05478 809023B8 A06A0015 */  sb      $t2, 0x0015($v1)           ## 00000015
/* 0547C 809023BC 924B0312 */  lbu     $t3, 0x0312($s2)           ## 00000312
/* 05480 809023C0 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 05484 809023C4 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 05488 809023C8 15610003 */  bne     $t3, $at, .L809023D8       
/* 0548C 809023CC 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 05490 809023D0 10000002 */  beq     $zero, $zero, .L809023DC   
/* 05494 809023D4 24021800 */  addiu   $v0, $zero, 0x1800         ## $v0 = 00001800
.L809023D8:
/* 05498 809023D8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L809023DC:
/* 0549C 809023DC 864C008A */  lh      $t4, 0x008A($s2)           ## 0000008A
/* 054A0 809023E0 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 054A4 809023E4 44812000 */  mtc1    $at, $f4                   ## $f4 = 2.00
/* 054A8 809023E8 01823821 */  addu    $a3, $t4, $v0              
/* 054AC 809023EC 00073C00 */  sll     $a3, $a3, 16               
/* 054B0 809023F0 00073C03 */  sra     $a3, $a3, 16               
/* 054B4 809023F4 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 054B8 809023F8 3C064170 */  lui     $a2, 0x4170                ## $a2 = 41700000
/* 054BC 809023FC 0C00BDB5 */  jal     func_8002F6D4              
/* 054C0 80902400 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 054C4 80902404 3C0E8091 */  lui     $t6, %hi(D_8090EB2C)       ## $t6 = 80910000
/* 054C8 80902408 8DCEEB2C */  lw      $t6, %lo(D_8090EB2C)($t6)  
/* 054CC 8090240C 240D0008 */  addiu   $t5, $zero, 0x0008         ## $t5 = 00000008
/* 054D0 80902410 240F000A */  addiu   $t7, $zero, 0x000A         ## $t7 = 0000000A
/* 054D4 80902414 A1CD03C8 */  sb      $t5, 0x03C8($t6)           ## 809103C8
/* 054D8 80902418 10000003 */  beq     $zero, $zero, .L80902428   
/* 054DC 8090241C A64F0316 */  sh      $t7, 0x0316($s2)           ## 00000316
.L80902420:
/* 054E0 80902420 5420FFD5 */  bnel    $at, $zero, .L80902378     
/* 054E4 80902424 8E4F0460 */  lw      $t7, 0x0460($s2)           ## 00000460
.L80902428:
/* 054E8 80902428 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 054EC 8090242C C6480324 */  lwc1    $f8, 0x0324($s2)           ## 00000324
/* 054F0 80902430 8FB80044 */  lw      $t8, 0x0044($sp)           
/* 054F4 80902434 4608303C */  c.lt.s  $f6, $f8                   
/* 054F8 80902438 00000000 */  nop
/* 054FC 8090243C 45020034 */  bc1fl   .L80902510                 
/* 05500 80902440 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 05504 80902444 8F111C44 */  lw      $s1, 0x1C44($t8)           ## 00001C44
/* 05508 80902448 3C01C348 */  lui     $at, 0xC348                ## $at = C3480000
/* 0550C 8090244C 44817000 */  mtc1    $at, $f14                  ## $f14 = -200.00
/* 05510 80902450 C62A0024 */  lwc1    $f10, 0x0024($s1)          ## 00000024
/* 05514 80902454 C630002C */  lwc1    $f16, 0x002C($s1)          ## 0000002C
/* 05518 80902458 3C014444 */  lui     $at, 0x4444                ## $at = 44440000
/* 0551C 8090245C 460A7081 */  sub.s   $f2, $f14, $f10            
/* 05520 80902460 44813000 */  mtc1    $at, $f6                   ## $f6 = 784.00
/* 05524 80902464 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 05528 80902468 46107301 */  sub.s   $f12, $f14, $f16           
/* 0552C 8090246C 46021482 */  mul.s   $f18, $f2, $f2             
/* 05530 80902470 00000000 */  nop
/* 05534 80902474 460C6102 */  mul.s   $f4, $f12, $f12            
/* 05538 80902478 46049000 */  add.s   $f0, $f18, $f4             
/* 0553C 8090247C 46000004 */  sqrt.s  $f0, $f0                   
/* 05540 80902480 4600303C */  c.lt.s  $f6, $f0                   
/* 05544 80902484 00000000 */  nop
/* 05548 80902488 45000020 */  bc1f    .L8090250C                 
/* 0554C 8090248C 00000000 */  nop
/* 05550 80902490 E7A20038 */  swc1    $f2, 0x0038($sp)           
/* 05554 80902494 E7AC0034 */  swc1    $f12, 0x0034($sp)          
.L80902498:
/* 05558 80902498 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 0555C 8090249C 0C01DF64 */  jal     Rand_S16Offset
              
/* 05560 809024A0 240500C8 */  addiu   $a1, $zero, 0x00C8         ## $a1 = 000000C8
/* 05564 809024A4 0230C821 */  addu    $t9, $s1, $s0              
/* 05568 809024A8 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 0556C 809024AC 00108400 */  sll     $s0, $s0, 16               
/* 05570 809024B0 00108403 */  sra     $s0, $s0, 16               
/* 05574 809024B4 2A010012 */  slti    $at, $s0, 0x0012           
/* 05578 809024B8 1420FFF7 */  bne     $at, $zero, .L80902498     
/* 0557C 809024BC A3220A61 */  sb      $v0, 0x0A61($t9)           ## 00000A61
/* 05580 809024C0 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 05584 809024C4 A2280A60 */  sb      $t0, 0x0A60($s1)           ## 00000A60
/* 05588 809024C8 C7AE0038 */  lwc1    $f14, 0x0038($sp)          
/* 0558C 809024CC 0C034199 */  jal     Math_Atan2S
              
/* 05590 809024D0 C7AC0034 */  lwc1    $f12, 0x0034($sp)          
/* 05594 809024D4 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 05598 809024D8 00023C00 */  sll     $a3, $v0, 16               
/* 0559C 809024DC 24090010 */  addiu   $t1, $zero, 0x0010         ## $t1 = 00000010
/* 055A0 809024E0 AFA90014 */  sw      $t1, 0x0014($sp)           
/* 055A4 809024E4 00073C03 */  sra     $a3, $a3, 16               
/* 055A8 809024E8 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 055AC 809024EC 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 055B0 809024F0 3C064120 */  lui     $a2, 0x4120                ## $a2 = 41200000
/* 055B4 809024F4 0C00BDB5 */  jal     func_8002F6D4              
/* 055B8 809024F8 E7A80010 */  swc1    $f8, 0x0010($sp)           
/* 055BC 809024FC 3C0B8091 */  lui     $t3, %hi(D_8090EB2C)       ## $t3 = 80910000
/* 055C0 80902500 8D6BEB2C */  lw      $t3, %lo(D_8090EB2C)($t3)  
/* 055C4 80902504 240A0008 */  addiu   $t2, $zero, 0x0008         ## $t2 = 00000008
/* 055C8 80902508 A16A03C8 */  sb      $t2, 0x03C8($t3)           ## 809103C8
.L8090250C:
/* 055CC 8090250C 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80902510:
/* 055D0 80902510 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 055D4 80902514 8FB10024 */  lw      $s1, 0x0024($sp)           
/* 055D8 80902518 8FB20028 */  lw      $s2, 0x0028($sp)           
/* 055DC 8090251C 03E00008 */  jr      $ra                        
/* 055E0 80902520 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
