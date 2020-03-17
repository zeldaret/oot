glabel func_80ACC540
/* 02620 80ACC540 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 02624 80ACC544 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 02628 80ACC548 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0262C 80ACC54C AFBF002C */  sw      $ra, 0x002C($sp)           
/* 02630 80ACC550 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 02634 80ACC554 8C8403DC */  lw      $a0, 0x03DC($a0)           ## 000003DC
/* 02638 80ACC558 50400015 */  beql    $v0, $zero, .L80ACC5B0     
/* 0263C 80ACC55C 960803FC */  lhu     $t0, 0x03FC($s0)           ## 000003FC
/* 02640 80ACC560 8E0E03DC */  lw      $t6, 0x03DC($s0)           ## 000003DC
/* 02644 80ACC564 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 02648 80ACC568 8DC40008 */  lw      $a0, 0x0008($t6)           ## 00000008
/* 0264C 80ACC56C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 02650 80ACC570 8E0403DC */  lw      $a0, 0x03DC($s0)           ## 000003DC
/* 02654 80ACC574 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 02658 80ACC578 468021A0 */  cvt.s.w $f6, $f4                   
/* 0265C 80ACC57C 8C850008 */  lw      $a1, 0x0008($a0)           ## 00000008
/* 02660 80ACC580 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
/* 02664 80ACC584 44070000 */  mfc1    $a3, $f0                   
/* 02668 80ACC588 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 0266C 80ACC58C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 02670 80ACC590 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 02674 80ACC594 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 02678 80ACC598 E7A00018 */  swc1    $f0, 0x0018($sp)           
/* 0267C 80ACC59C 961803FC */  lhu     $t8, 0x03FC($s0)           ## 000003FC
/* 02680 80ACC5A0 37190001 */  ori     $t9, $t8, 0x0001           ## $t9 = 00000001
/* 02684 80ACC5A4 10000004 */  beq     $zero, $zero, .L80ACC5B8   
/* 02688 80ACC5A8 A61903FC */  sh      $t9, 0x03FC($s0)           ## 000003FC
/* 0268C 80ACC5AC 960803FC */  lhu     $t0, 0x03FC($s0)           ## 000003FC
.L80ACC5B0:
/* 02690 80ACC5B0 3109FFFE */  andi    $t1, $t0, 0xFFFE           ## $t1 = 00000000
/* 02694 80ACC5B4 A60903FC */  sh      $t1, 0x03FC($s0)           ## 000003FC
.L80ACC5B8:
/* 02698 80ACC5B8 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 0269C 80ACC5BC 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 026A0 80ACC5C0 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 026A4 80ACC5C4 03E00008 */  jr      $ra                        
/* 026A8 80ACC5C8 00000000 */  nop


