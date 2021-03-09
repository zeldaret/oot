glabel func_80AFF688
/* 013D8 80AFF688 27BDFF88 */  addiu   $sp, $sp, 0xFF88           ## $sp = FFFFFF88
/* 013DC 80AFF68C AFBF004C */  sw      $ra, 0x004C($sp)           
/* 013E0 80AFF690 AFB00048 */  sw      $s0, 0x0048($sp)           
/* 013E4 80AFF694 AFA5007C */  sw      $a1, 0x007C($sp)           
/* 013E8 80AFF698 8C8202DC */  lw      $v0, 0x02DC($a0)           ## 000002DC
/* 013EC 80AFF69C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 013F0 80AFF6A0 2442FFFC */  addiu   $v0, $v0, 0xFFFC           ## $v0 = FFFFFFFC
/* 013F4 80AFF6A4 2C410100 */  sltiu   $at, $v0, 0x0100           
/* 013F8 80AFF6A8 54200003 */  bnel    $at, $zero, .L80AFF6B8     
/* 013FC 80AFF6AC 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 01400 80AFF6B0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 01404 80AFF6B4 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
.L80AFF6B8:
/* 01408 80AFF6B8 44816000 */  mtc1    $at, $f12                  ## $f12 = 30.00
/* 0140C 80AFF6BC AE0202DC */  sw      $v0, 0x02DC($s0)           ## 000002DC
/* 01410 80AFF6C0 0C00CFC8 */  jal     Rand_CenteredFloat
              
/* 01414 80AFF6C4 A20200C8 */  sb      $v0, 0x00C8($s0)           ## 000000C8
/* 01418 80AFF6C8 C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 0141C 80AFF6CC 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 01420 80AFF6D0 44816000 */  mtc1    $at, $f12                  ## $f12 = 30.00
/* 01424 80AFF6D4 46040180 */  add.s   $f6, $f0, $f4              
/* 01428 80AFF6D8 0C00CFC8 */  jal     Rand_CenteredFloat
              
/* 0142C 80AFF6DC E7A6006C */  swc1    $f6, 0x006C($sp)           
/* 01430 80AFF6E0 C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 01434 80AFF6E4 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 01438 80AFF6E8 44816000 */  mtc1    $at, $f12                  ## $f12 = 30.00
/* 0143C 80AFF6EC 46080280 */  add.s   $f10, $f0, $f8             
/* 01440 80AFF6F0 0C00CFC8 */  jal     Rand_CenteredFloat
              
/* 01444 80AFF6F4 E7AA0070 */  swc1    $f10, 0x0070($sp)          
/* 01448 80AFF6F8 C610002C */  lwc1    $f16, 0x002C($s0)          ## 0000002C
/* 0144C 80AFF6FC 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 01450 80AFF700 240E0064 */  addiu   $t6, $zero, 0x0064         ## $t6 = 00000064
/* 01454 80AFF704 46100480 */  add.s   $f18, $f0, $f16            
/* 01458 80AFF708 240F000A */  addiu   $t7, $zero, 0x000A         ## $t7 = 0000000A
/* 0145C 80AFF70C 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 01460 80AFF710 241900FF */  addiu   $t9, $zero, 0x00FF         ## $t9 = 000000FF
/* 01464 80AFF714 240800FF */  addiu   $t0, $zero, 0x00FF         ## $t0 = 000000FF
/* 01468 80AFF718 240900FF */  addiu   $t1, $zero, 0x00FF         ## $t1 = 000000FF
/* 0146C 80AFF71C 240A00FF */  addiu   $t2, $zero, 0x00FF         ## $t2 = 000000FF
/* 01470 80AFF720 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 01474 80AFF724 240C0009 */  addiu   $t4, $zero, 0x0009         ## $t4 = 00000009
/* 01478 80AFF728 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 0147C 80AFF72C E7B20074 */  swc1    $f18, 0x0074($sp)          
/* 01480 80AFF730 AFAD003C */  sw      $t5, 0x003C($sp)           
/* 01484 80AFF734 AFAC0038 */  sw      $t4, 0x0038($sp)           
/* 01488 80AFF738 AFAB0034 */  sw      $t3, 0x0034($sp)           
/* 0148C 80AFF73C AFAA0030 */  sw      $t2, 0x0030($sp)           
/* 01490 80AFF740 AFA90024 */  sw      $t1, 0x0024($sp)           
/* 01494 80AFF744 AFA80020 */  sw      $t0, 0x0020($sp)           
/* 01498 80AFF748 AFB9001C */  sw      $t9, 0x001C($sp)           
/* 0149C 80AFF74C AFB80018 */  sw      $t8, 0x0018($sp)           
/* 014A0 80AFF750 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 014A4 80AFF754 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 014A8 80AFF758 AFA0002C */  sw      $zero, 0x002C($sp)         
/* 014AC 80AFF75C AFA00028 */  sw      $zero, 0x0028($sp)         
/* 014B0 80AFF760 8FA4007C */  lw      $a0, 0x007C($sp)           
/* 014B4 80AFF764 27A5006C */  addiu   $a1, $sp, 0x006C           ## $a1 = FFFFFFF4
/* 014B8 80AFF768 27A60060 */  addiu   $a2, $sp, 0x0060           ## $a2 = FFFFFFE8
/* 014BC 80AFF76C 27A70054 */  addiu   $a3, $sp, 0x0054           ## $a3 = FFFFFFDC
/* 014C0 80AFF770 E7A2005C */  swc1    $f2, 0x005C($sp)           
/* 014C4 80AFF774 E7A20058 */  swc1    $f2, 0x0058($sp)           
/* 014C8 80AFF778 E7A20054 */  swc1    $f2, 0x0054($sp)           
/* 014CC 80AFF77C E7A20068 */  swc1    $f2, 0x0068($sp)           
/* 014D0 80AFF780 E7A20064 */  swc1    $f2, 0x0064($sp)           
/* 014D4 80AFF784 0C00A9AE */  jal     EffectSsDeadDb_Spawn              
/* 014D8 80AFF788 E7A20060 */  swc1    $f2, 0x0060($sp)           
/* 014DC 80AFF78C 8FBF004C */  lw      $ra, 0x004C($sp)           
/* 014E0 80AFF790 8FB00048 */  lw      $s0, 0x0048($sp)           
/* 014E4 80AFF794 27BD0078 */  addiu   $sp, $sp, 0x0078           ## $sp = 00000000
/* 014E8 80AFF798 03E00008 */  jr      $ra                        
/* 014EC 80AFF79C 00000000 */  nop
