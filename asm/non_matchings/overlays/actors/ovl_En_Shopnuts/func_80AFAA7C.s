glabel func_80AFAA7C
/* 0035C 80AFAA7C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00360 80AFAA80 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00364 80AFAA84 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00368 80AFAA88 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 0036C 80AFAA8C 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00370 80AFAA90 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.50
/* 00374 80AFAA94 C4840168 */  lwc1    $f4, 0x0168($a0)           ## 00000168
/* 00378 80AFAA98 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0037C 80AFAA9C 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
/* 00380 80AFAAA0 4606203C */  c.lt.s  $f4, $f6                   
/* 00384 80AFAAA4 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00388 80AFAAA8 3C054110 */  lui     $a1, 0x4110                ## $a1 = 41100000
/* 0038C 80AFAAAC 45000002 */  bc1f    .L80AFAAB8                 
/* 00390 80AFAAB0 00000000 */  nop
/* 00394 80AFAAB4 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
.L80AFAAB8:
/* 00398 80AFAAB8 50600006 */  beql    $v1, $zero, .L80AFAAD4     
/* 0039C 80AFAABC AFA3002C */  sw      $v1, 0x002C($sp)           
/* 003A0 80AFAAC0 86020194 */  lh      $v0, 0x0194($s0)           ## 00000194
/* 003A4 80AFAAC4 10400002 */  beq     $v0, $zero, .L80AFAAD0     
/* 003A8 80AFAAC8 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 003AC 80AFAACC A60E0194 */  sh      $t6, 0x0194($s0)           ## 00000194
.L80AFAAD0:
/* 003B0 80AFAAD0 AFA3002C */  sw      $v1, 0x002C($sp)           
.L80AFAAD4:
/* 003B4 80AFAAD4 0C0295B2 */  jal     Animation_OnFrame              
/* 003B8 80AFAAD8 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 003BC 80AFAADC 3C014110 */  lui     $at, 0x4110                ## $at = 41100000
/* 003C0 80AFAAE0 44816000 */  mtc1    $at, $f12                  ## $f12 = 9.00
/* 003C4 80AFAAE4 10400005 */  beq     $v0, $zero, .L80AFAAFC     
/* 003C8 80AFAAE8 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 003CC 80AFAAEC 920F0281 */  lbu     $t7, 0x0281($s0)           ## 00000281
/* 003D0 80AFAAF0 35F80001 */  ori     $t8, $t7, 0x0001           ## $t8 = 00000001
/* 003D4 80AFAAF4 1000000C */  beq     $zero, $zero, .L80AFAB28   
/* 003D8 80AFAAF8 A2180281 */  sb      $t8, 0x0281($s0)           ## 00000281
.L80AFAAFC:
/* 003DC 80AFAAFC 0C0295B2 */  jal     Animation_OnFrame              
/* 003E0 80AFAB00 3C054100 */  lui     $a1, 0x4100                ## $a1 = 41000000
/* 003E4 80AFAB04 3C014110 */  lui     $at, 0x4110                ## $at = 41100000
/* 003E8 80AFAB08 44816000 */  mtc1    $at, $f12                  ## $f12 = 9.00
/* 003EC 80AFAB0C 10400006 */  beq     $v0, $zero, .L80AFAB28     
/* 003F0 80AFAB10 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 003F4 80AFAB14 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 003F8 80AFAB18 2405387C */  addiu   $a1, $zero, 0x387C         ## $a1 = 0000387C
/* 003FC 80AFAB1C 3C014110 */  lui     $at, 0x4110                ## $at = 41100000
/* 00400 80AFAB20 44816000 */  mtc1    $at, $f12                  ## $f12 = 9.00
/* 00404 80AFAB24 00000000 */  nop
.L80AFAB28:
/* 00408 80AFAB28 C6000164 */  lwc1    $f0, 0x0164($s0)           ## 00000164
/* 0040C 80AFAB2C 3C014150 */  lui     $at, 0x4150                ## $at = 41500000
/* 00410 80AFAB30 460C003C */  c.lt.s  $f0, $f12                  
/* 00414 80AFAB34 00000000 */  nop
/* 00418 80AFAB38 45020004 */  bc1fl   .L80AFAB4C                 
/* 0041C 80AFAB3C 44817000 */  mtc1    $at, $f14                  ## $f14 = 13.00
/* 00420 80AFAB40 1000000B */  beq     $zero, $zero, .L80AFAB70   
/* 00424 80AFAB44 46006006 */  mov.s   $f0, $f12                  
/* 00428 80AFAB48 44817000 */  mtc1    $at, $f14                  ## $f14 = 13.00
.L80AFAB4C:
/* 0042C 80AFAB4C 00000000 */  nop
/* 00430 80AFAB50 4600703C */  c.lt.s  $f14, $f0                  
/* 00434 80AFAB54 00000000 */  nop
/* 00438 80AFAB58 45020004 */  bc1fl   .L80AFAB6C                 
/* 0043C 80AFAB5C 46000086 */  mov.s   $f2, $f0                   
/* 00440 80AFAB60 10000002 */  beq     $zero, $zero, .L80AFAB6C   
/* 00444 80AFAB64 46007086 */  mov.s   $f2, $f14                  
/* 00448 80AFAB68 46000086 */  mov.s   $f2, $f0                   
.L80AFAB6C:
/* 0044C 80AFAB6C 46001006 */  mov.s   $f0, $f2                   
.L80AFAB70:
/* 00450 80AFAB70 460C0201 */  sub.s   $f8, $f0, $f12             
/* 00454 80AFAB74 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 00458 80AFAB78 44818000 */  mtc1    $at, $f16                  ## $f16 = 5.00
/* 0045C 80AFAB7C 3C0142F0 */  lui     $at, 0x42F0                ## $at = 42F00000
/* 00460 80AFAB80 460C4282 */  mul.s   $f10, $f8, $f12            
/* 00464 80AFAB84 46105480 */  add.s   $f18, $f10, $f16           
/* 00468 80AFAB88 4600910D */  trunc.w.s $f4, $f18                  
/* 0046C 80AFAB8C 44082000 */  mfc1    $t0, $f4                   
/* 00470 80AFAB90 00000000 */  nop
/* 00474 80AFAB94 A60802B2 */  sh      $t0, 0x02B2($s0)           ## 000002B2
/* 00478 80AFAB98 8FA9002C */  lw      $t1, 0x002C($sp)           
/* 0047C 80AFAB9C 1520000C */  bne     $t1, $zero, .L80AFABD0     
/* 00480 80AFABA0 00000000 */  nop
/* 00484 80AFABA4 C6060090 */  lwc1    $f6, 0x0090($s0)           ## 00000090
/* 00488 80AFABA8 44814000 */  mtc1    $at, $f8                   ## $f8 = 120.00
/* 0048C 80AFABAC 00000000 */  nop
/* 00490 80AFABB0 4608303C */  c.lt.s  $f6, $f8                   
/* 00494 80AFABB4 00000000 */  nop
/* 00498 80AFABB8 45000005 */  bc1f    .L80AFABD0                 
/* 0049C 80AFABBC 00000000 */  nop
/* 004A0 80AFABC0 0C2BEA75 */  jal     func_80AFA9D4              
/* 004A4 80AFABC4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 004A8 80AFABC8 10000021 */  beq     $zero, $zero, .L80AFAC50   
/* 004AC 80AFABCC 8FAB002C */  lw      $t3, 0x002C($sp)           
.L80AFABD0:
/* 004B0 80AFABD0 0C02927F */  jal     SkelAnime_Update
              
/* 004B4 80AFABD4 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 004B8 80AFABD8 1040001C */  beq     $v0, $zero, .L80AFAC4C     
/* 004BC 80AFABDC 3C0142F0 */  lui     $at, 0x42F0                ## $at = 42F00000
/* 004C0 80AFABE0 C6020090 */  lwc1    $f2, 0x0090($s0)           ## 00000090
/* 004C4 80AFABE4 44815000 */  mtc1    $at, $f10                  ## $f10 = 120.00
/* 004C8 80AFABE8 00000000 */  nop
/* 004CC 80AFABEC 460A103C */  c.lt.s  $f2, $f10                  
/* 004D0 80AFABF0 00000000 */  nop
/* 004D4 80AFABF4 45020006 */  bc1fl   .L80AFAC10                 
/* 004D8 80AFABF8 860A0194 */  lh      $t2, 0x0194($s0)           ## 00000194
/* 004DC 80AFABFC 0C2BEA75 */  jal     func_80AFA9D4              
/* 004E0 80AFAC00 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 004E4 80AFAC04 10000012 */  beq     $zero, $zero, .L80AFAC50   
/* 004E8 80AFAC08 8FAB002C */  lw      $t3, 0x002C($sp)           
/* 004EC 80AFAC0C 860A0194 */  lh      $t2, 0x0194($s0)           ## 00000194
.L80AFAC10:
/* 004F0 80AFAC10 3C0143A0 */  lui     $at, 0x43A0                ## $at = 43A00000
/* 004F4 80AFAC14 1540000B */  bne     $t2, $zero, .L80AFAC44     
/* 004F8 80AFAC18 00000000 */  nop
/* 004FC 80AFAC1C 44818000 */  mtc1    $at, $f16                  ## $f16 = 320.00
/* 00500 80AFAC20 00000000 */  nop
/* 00504 80AFAC24 4602803C */  c.lt.s  $f16, $f2                  
/* 00508 80AFAC28 00000000 */  nop
/* 0050C 80AFAC2C 45000005 */  bc1f    .L80AFAC44                 
/* 00510 80AFAC30 00000000 */  nop
/* 00514 80AFAC34 0C2BEA3A */  jal     func_80AFA8E8              
/* 00518 80AFAC38 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0051C 80AFAC3C 10000004 */  beq     $zero, $zero, .L80AFAC50   
/* 00520 80AFAC40 8FAB002C */  lw      $t3, 0x002C($sp)           
.L80AFAC44:
/* 00524 80AFAC44 0C2BEA5B */  jal     func_80AFA96C              
/* 00528 80AFAC48 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80AFAC4C:
/* 0052C 80AFAC4C 8FAB002C */  lw      $t3, 0x002C($sp)           
.L80AFAC50:
/* 00530 80AFAC50 3C014320 */  lui     $at, 0x4320                ## $at = 43200000
/* 00534 80AFAC54 5160001E */  beql    $t3, $zero, .L80AFACD0     
/* 00538 80AFAC58 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0053C 80AFAC5C C6020090 */  lwc1    $f2, 0x0090($s0)           ## 00000090
/* 00540 80AFAC60 44819000 */  mtc1    $at, $f18                  ## $f18 = 160.00
/* 00544 80AFAC64 00000000 */  nop
/* 00548 80AFAC68 4602903C */  c.lt.s  $f18, $f2                  
/* 0054C 80AFAC6C 00000000 */  nop
/* 00550 80AFAC70 45020017 */  bc1fl   .L80AFACD0                 
/* 00554 80AFAC74 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00558 80AFAC78 C6000094 */  lwc1    $f0, 0x0094($s0)           ## 00000094
/* 0055C 80AFAC7C 3C0142F0 */  lui     $at, 0x42F0                ## $at = 42F00000
/* 00560 80AFAC80 44812000 */  mtc1    $at, $f4                   ## $f4 = 120.00
/* 00564 80AFAC84 46000005 */  abs.s   $f0, $f0                   
/* 00568 80AFAC88 4604003C */  c.lt.s  $f0, $f4                   
/* 0056C 80AFAC8C 00000000 */  nop
/* 00570 80AFAC90 4502000F */  bc1fl   .L80AFACD0                 
/* 00574 80AFAC94 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00578 80AFAC98 860C0194 */  lh      $t4, 0x0194($s0)           ## 00000194
/* 0057C 80AFAC9C 3C0143F0 */  lui     $at, 0x43F0                ## $at = 43F00000
/* 00580 80AFACA0 51800007 */  beql    $t4, $zero, .L80AFACC0     
/* 00584 80AFACA4 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00588 80AFACA8 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.00
/* 0058C 80AFACAC 00000000 */  nop
/* 00590 80AFACB0 4606103C */  c.lt.s  $f2, $f6                   
/* 00594 80AFACB4 00000000 */  nop
/* 00598 80AFACB8 45000004 */  bc1f    .L80AFACCC                 
/* 0059C 80AFACBC 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
.L80AFACC0:
/* 005A0 80AFACC0 44814000 */  mtc1    $at, $f8                   ## $f8 = 1.00
/* 005A4 80AFACC4 00000000 */  nop
/* 005A8 80AFACC8 E6080168 */  swc1    $f8, 0x0168($s0)           ## 00000168
.L80AFACCC:
/* 005AC 80AFACCC 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AFACD0:
/* 005B0 80AFACD0 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 005B4 80AFACD4 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 005B8 80AFACD8 03E00008 */  jr      $ra                        
/* 005BC 80AFACDC 00000000 */  nop
