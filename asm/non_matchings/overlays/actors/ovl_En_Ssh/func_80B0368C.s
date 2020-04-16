glabel func_80B0368C
/* 0141C 80B0368C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 01420 80B03690 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01424 80B03694 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01428 80B03698 908E00AF */  lbu     $t6, 0x00AF($a0)           ## 000000AF
/* 0142C 80B0369C 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 01430 80B036A0 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 01434 80B036A4 15C0000E */  bne     $t6, $zero, .L80B036E0     
/* 01438 80B036A8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0143C 80B036AC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01440 80B036B0 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 01444 80B036B4 00A12821 */  addu    $a1, $a1, $at              
/* 01448 80B036B8 24E604C4 */  addiu   $a2, $a3, 0x04C4           ## $a2 = 000004C4
/* 0144C 80B036BC AFA60024 */  sw      $a2, 0x0024($sp)           
/* 01450 80B036C0 0C0175E7 */  jal     Actor_CollisionCheck_SetAT
              ## CollisionCheck_setAT
/* 01454 80B036C4 AFA50028 */  sw      $a1, 0x0028($sp)           
/* 01458 80B036C8 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 0145C 80B036CC 8FA60024 */  lw      $a2, 0x0024($sp)           
/* 01460 80B036D0 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 01464 80B036D4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01468 80B036D8 1000001A */  beq     $zero, $zero, .L80B03744   
/* 0146C 80B036DC 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B036E0:
/* 01470 80B036E0 84EF052C */  lh      $t7, 0x052C($a3)           ## 0000052C
/* 01474 80B036E4 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 01478 80B036E8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0147C 80B036EC 55E00005 */  bnel    $t7, $zero, .L80B03704     
/* 01480 80B036F0 84E2052E */  lh      $v0, 0x052E($a3)           ## 0000052E
/* 01484 80B036F4 0C2C0D2D */  jal     func_80B034B4              
/* 01488 80B036F8 AFA70030 */  sw      $a3, 0x0030($sp)           
/* 0148C 80B036FC 8FA70030 */  lw      $a3, 0x0030($sp)           
/* 01490 80B03700 84E2052E */  lh      $v0, 0x052E($a3)           ## 0000052E
.L80B03704:
/* 01494 80B03704 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 01498 80B03708 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0149C 80B0370C 14400003 */  bne     $v0, $zero, .L80B0371C     
/* 014A0 80B03710 2458FFFF */  addiu   $t8, $v0, 0xFFFF           ## $t8 = FFFFFFFF
/* 014A4 80B03714 10000003 */  beq     $zero, $zero, .L80B03724   
/* 014A8 80B03718 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L80B0371C:
/* 014AC 80B0371C A4F8052E */  sh      $t8, 0x052E($a3)           ## 0000052E
/* 014B0 80B03720 84E3052E */  lh      $v1, 0x052E($a3)           ## 0000052E
.L80B03724:
/* 014B4 80B03724 54600007 */  bnel    $v1, $zero, .L80B03744     
/* 014B8 80B03728 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 014BC 80B0372C 0C2C0CEF */  jal     func_80B033BC              
/* 014C0 80B03730 AFA70030 */  sw      $a3, 0x0030($sp)           
/* 014C4 80B03734 8FA40030 */  lw      $a0, 0x0030($sp)           
/* 014C8 80B03738 0C2C0D00 */  jal     func_80B03400              
/* 014CC 80B0373C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 014D0 80B03740 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B03744:
/* 014D4 80B03744 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 014D8 80B03748 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 014DC 80B0374C 03E00008 */  jr      $ra                        
/* 014E0 80B03750 00000000 */  nop
