glabel func_80A58608
/* 01408 80A58608 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0140C 80A5860C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01410 80A58610 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01414 80A58614 90820225 */  lbu     $v0, 0x0225($a0)           ## 00000225
/* 01418 80A58618 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0141C 80A5861C 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 01420 80A58620 304E0002 */  andi    $t6, $v0, 0x0002           ## $t6 = 00000000
/* 01424 80A58624 11C00017 */  beq     $t6, $zero, .L80A58684     
/* 01428 80A58628 304FFFFD */  andi    $t7, $v0, 0xFFFD           ## $t7 = 00000000
/* 0142C 80A5862C A08F0225 */  sb      $t7, 0x0225($a0)           ## 00000225
/* 01430 80A58630 AFA70024 */  sw      $a3, 0x0024($sp)           
/* 01434 80A58634 2605022C */  addiu   $a1, $s0, 0x022C           ## $a1 = 0000022C
/* 01438 80A58638 0C00D594 */  jal     func_80035650              
/* 0143C 80A5863C 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 01440 80A58640 8E18021C */  lw      $t8, 0x021C($s0)           ## 0000021C
/* 01444 80A58644 24010193 */  addiu   $at, $zero, 0x0193         ## $at = 00000193
/* 01448 80A58648 8FA70024 */  lw      $a3, 0x0024($sp)           
/* 0144C 80A5864C 87190000 */  lh      $t9, 0x0000($t8)           ## 00000000
/* 01450 80A58650 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01454 80A58654 13210005 */  beq     $t9, $at, .L80A5866C       
/* 01458 80A58658 00000000 */  nop
/* 0145C 80A5865C 0C295D70 */  jal     func_80A575C0              
/* 01460 80A58660 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01464 80A58664 10000010 */  beq     $zero, $zero, .L80A586A8   
/* 01468 80A58668 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A5866C:
/* 0146C 80A5866C 0C295CF4 */  jal     func_80A573D0              
/* 01470 80A58670 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
/* 01474 80A58674 0C295D83 */  jal     func_80A5760C              
/* 01478 80A58678 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0147C 80A5867C 1000000A */  beq     $zero, $zero, .L80A586A8   
/* 01480 80A58680 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A58684:
/* 01484 80A58684 90E81C26 */  lbu     $t0, 0x1C26($a3)           ## 00001C26
/* 01488 80A58688 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0148C 80A5868C 51000006 */  beql    $t0, $zero, .L80A586A8     
/* 01490 80A58690 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01494 80A58694 0C295CF4 */  jal     func_80A573D0              
/* 01498 80A58698 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
/* 0149C 80A5869C 0C295D83 */  jal     func_80A5760C              
/* 014A0 80A586A0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 014A4 80A586A4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A586A8:
/* 014A8 80A586A8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 014AC 80A586AC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 014B0 80A586B0 03E00008 */  jr      $ra                        
/* 014B4 80A586B4 00000000 */  nop
