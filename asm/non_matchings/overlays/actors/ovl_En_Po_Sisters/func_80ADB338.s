glabel func_80ADB338
/* 023A8 80ADB338 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 023AC 80ADB33C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 023B0 80ADB340 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 023B4 80ADB344 8CAF1C44 */  lw      $t7, 0x1C44($a1)           ## 00001C44
/* 023B8 80ADB348 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 023BC 80ADB34C 24C50008 */  addiu   $a1, $a2, 0x0008           ## $a1 = 00000008
/* 023C0 80ADB350 AFAF001C */  sw      $t7, 0x001C($sp)           
/* 023C4 80ADB354 90870195 */  lbu     $a3, 0x0195($a0)           ## 00000195
/* 023C8 80ADB358 8C830118 */  lw      $v1, 0x0118($a0)           ## 00000118
/* 023CC 80ADB35C 01E02025 */  or      $a0, $t7, $zero            ## $a0 = 00000000
/* 023D0 80ADB360 14E0002C */  bne     $a3, $zero, .L80ADB414     
/* 023D4 80ADB364 00604025 */  or      $t0, $v1, $zero            ## $t0 = 00000000
/* 023D8 80ADB368 0C00B6EC */  jal     func_8002DBB0              
/* 023DC 80ADB36C AFA60020 */  sw      $a2, 0x0020($sp)           
/* 023E0 80ADB370 3C014416 */  lui     $at, 0x4416                ## $at = 44160000
/* 023E4 80ADB374 44812000 */  mtc1    $at, $f4                   ## $f4 = 600.00
/* 023E8 80ADB378 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 023EC 80ADB37C 24190064 */  addiu   $t9, $zero, 0x0064         ## $t9 = 00000064
/* 023F0 80ADB380 4604003C */  c.lt.s  $f0, $f4                   
/* 023F4 80ADB384 00000000 */  nop
/* 023F8 80ADB388 45020008 */  bc1fl   .L80ADB3AC                 
/* 023FC 80ADB38C A4D9019C */  sh      $t9, 0x019C($a2)           ## 0000019C
/* 02400 80ADB390 84C2019C */  lh      $v0, 0x019C($a2)           ## 0000019C
/* 02404 80ADB394 10400006 */  beq     $v0, $zero, .L80ADB3B0     
/* 02408 80ADB398 2458FFFF */  addiu   $t8, $v0, 0xFFFF           ## $t8 = FFFFFFFF
/* 0240C 80ADB39C A4D8019C */  sh      $t8, 0x019C($a2)           ## 0000019C
/* 02410 80ADB3A0 10000003 */  beq     $zero, $zero, .L80ADB3B0   
/* 02414 80ADB3A4 84C2019C */  lh      $v0, 0x019C($a2)           ## 0000019C
/* 02418 80ADB3A8 A4D9019C */  sh      $t9, 0x019C($a2)           ## 0000019C
.L80ADB3AC:
/* 0241C 80ADB3AC 84C2019C */  lh      $v0, 0x019C($a2)           ## 0000019C
.L80ADB3B0:
/* 02420 80ADB3B0 5440003C */  bnel    $v0, $zero, .L80ADB4A4     
/* 02424 80ADB3B4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02428 80ADB3B8 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 0242C 80ADB3BC AFA60020 */  sw      $a2, 0x0020($sp)           
/* 02430 80ADB3C0 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 02434 80ADB3C4 44813000 */  mtc1    $at, $f6                   ## $f6 = 4.00
/* 02438 80ADB3C8 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 0243C 80ADB3CC 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 02440 80ADB3D0 46060202 */  mul.s   $f8, $f0, $f6              
/* 02444 80ADB3D4 848C008A */  lh      $t4, 0x008A($a0)           ## 0000008A
/* 02448 80ADB3D8 44819000 */  mtc1    $at, $f18                  ## $f18 = 5.00
/* 0244C 80ADB3DC 4600428D */  trunc.w.s $f10, $f8                  
/* 02450 80ADB3E0 440A5000 */  mfc1    $t2, $f10                  
/* 02454 80ADB3E4 00000000 */  nop
/* 02458 80ADB3E8 000A5B80 */  sll     $t3, $t2, 14               
/* 0245C 80ADB3EC 016C6821 */  addu    $t5, $t3, $t4              
/* 02460 80ADB3F0 A48D00B6 */  sh      $t5, 0x00B6($a0)           ## 000000B6
/* 02464 80ADB3F4 8FAE001C */  lw      $t6, 0x001C($sp)           
/* 02468 80ADB3F8 C5D00028 */  lwc1    $f16, 0x0028($t6)          ## 00000028
/* 0246C 80ADB3FC 46128100 */  add.s   $f4, $f16, $f18            
/* 02470 80ADB400 E4840028 */  swc1    $f4, 0x0028($a0)           ## 00000028
/* 02474 80ADB404 0C2B663D */  jal     func_80AD98F4              
/* 02478 80ADB408 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 0247C 80ADB40C 10000025 */  beq     $zero, $zero, .L80ADB4A4   
/* 02480 80ADB410 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80ADB414:
/* 02484 80ADB414 8D020190 */  lw      $v0, 0x0190($t0)           ## 00000190
/* 02488 80ADB418 3C0F80AE */  lui     $t7, %hi(func_80ADB51C)    ## $t7 = 80AE0000
/* 0248C 80ADB41C 25EFB51C */  addiu   $t7, $t7, %lo(func_80ADB51C) ## $t7 = 80ADB51C
/* 02490 80ADB420 15E20008 */  bne     $t7, $v0, .L80ADB444       
/* 02494 80ADB424 3C1980AE */  lui     $t9, %hi(func_80ADAE6C)    ## $t9 = 80AE0000
/* 02498 80ADB428 3C1880AE */  lui     $t8, %hi(EnPoSisters_Draw)    ## $t8 = 80AE0000
/* 0249C 80ADB42C 2718D044 */  addiu   $t8, $t8, %lo(EnPoSisters_Draw) ## $t8 = 80ADD044
/* 024A0 80ADB430 ACD80134 */  sw      $t8, 0x0134($a2)           ## 00000134
/* 024A4 80ADB434 0C2B6798 */  jal     func_80AD9E60              
/* 024A8 80ADB438 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 024AC 80ADB43C 10000019 */  beq     $zero, $zero, .L80ADB4A4   
/* 024B0 80ADB440 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80ADB444:
/* 024B4 80ADB444 2739AE6C */  addiu   $t9, $t9, %lo(func_80ADAE6C) ## $t9 = FFFFAE6C
/* 024B8 80ADB448 17220010 */  bne     $t9, $v0, .L80ADB48C       
/* 024BC 80ADB44C 3C0D80AE */  lui     $t5, %hi(func_80ADAFC0)    ## $t5 = 80AE0000
/* 024C0 80ADB450 846900B6 */  lh      $t1, 0x00B6($v1)           ## 000000B6
/* 024C4 80ADB454 00075380 */  sll     $t2, $a3, 14               
/* 024C8 80ADB458 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 024CC 80ADB45C 012A5821 */  addu    $t3, $t1, $t2              
/* 024D0 80ADB460 A4CB00B6 */  sh      $t3, 0x00B6($a2)           ## 000000B6
/* 024D4 80ADB464 8FAC001C */  lw      $t4, 0x001C($sp)           
/* 024D8 80ADB468 44814000 */  mtc1    $at, $f8                   ## $f8 = 5.00
/* 024DC 80ADB46C 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 024E0 80ADB470 C5860028 */  lwc1    $f6, 0x0028($t4)           ## 00000028
/* 024E4 80ADB474 46083280 */  add.s   $f10, $f6, $f8             
/* 024E8 80ADB478 E4CA0028 */  swc1    $f10, 0x0028($a2)          ## 00000028
/* 024EC 80ADB47C 0C2B663D */  jal     func_80AD98F4              
/* 024F0 80ADB480 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 024F4 80ADB484 10000007 */  beq     $zero, $zero, .L80ADB4A4   
/* 024F8 80ADB488 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80ADB48C:
/* 024FC 80ADB48C 25ADAFC0 */  addiu   $t5, $t5, %lo(func_80ADAFC0) ## $t5 = FFFFAFC0
/* 02500 80ADB490 55A20004 */  bnel    $t5, $v0, .L80ADB4A4       
/* 02504 80ADB494 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02508 80ADB498 0C00B55C */  jal     Actor_Kill
              
/* 0250C 80ADB49C 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 02510 80ADB4A0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80ADB4A4:
/* 02514 80ADB4A4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02518 80ADB4A8 03E00008 */  jr      $ra                        
/* 0251C 80ADB4AC 00000000 */  nop


