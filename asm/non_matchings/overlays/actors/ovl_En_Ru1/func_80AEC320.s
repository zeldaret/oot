glabel func_80AEC320
/* 01710 80AEC320 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 01714 80AEC324 9442F580 */  lhu     $v0, -0x0A80($v0)          ## 8015F580
/* 01718 80AEC328 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 0171C 80AEC32C AFB00020 */  sw      $s0, 0x0020($sp)           
/* 01720 80AEC330 304E0002 */  andi    $t6, $v0, 0x0002           ## $t6 = 00000000
/* 01724 80AEC334 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01728 80AEC338 15C0000E */  bne     $t6, $zero, .L80AEC374     
/* 0172C 80AEC33C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01730 80AEC340 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 01734 80AEC344 24A597B8 */  addiu   $a1, $a1, 0x97B8           ## $a1 = 060097B8
/* 01738 80AEC348 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 0173C 80AEC34C 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 01740 80AEC350 0C2BAC99 */  jal     func_80AEB264              
/* 01744 80AEC354 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 01748 80AEC358 240F0007 */  addiu   $t7, $zero, 0x0007         ## $t7 = 00000007
/* 0174C 80AEC35C AE0F0264 */  sw      $t7, 0x0264($s0)           ## 00000264
/* 01750 80AEC360 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01754 80AEC364 0C2BABAE */  jal     func_80AEAEB8              
/* 01758 80AEC368 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0175C 80AEC36C 10000023 */  beq     $zero, $zero, .L80AEC3FC   
/* 01760 80AEC370 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AEC374:
/* 01764 80AEC374 30580080 */  andi    $t8, $v0, 0x0080           ## $t8 = 00000000
/* 01768 80AEC378 1300001D */  beq     $t8, $zero, .L80AEC3F0     
/* 0176C 80AEC37C 30590001 */  andi    $t9, $v0, 0x0001           ## $t9 = 00000000
/* 01770 80AEC380 1720001B */  bne     $t9, $zero, .L80AEC3F0     
/* 01774 80AEC384 30480020 */  andi    $t0, $v0, 0x0020           ## $t0 = 00000000
/* 01778 80AEC388 15000019 */  bne     $t0, $zero, .L80AEC3F0     
/* 0177C 80AEC38C 00000000 */  nop
/* 01780 80AEC390 0C2BAC08 */  jal     func_80AEB020              
/* 01784 80AEC394 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01788 80AEC398 14400011 */  bne     $v0, $zero, .L80AEC3E0     
/* 0178C 80AEC39C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01790 80AEC3A0 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 01794 80AEC3A4 24A597B8 */  addiu   $a1, $a1, 0x97B8           ## $a1 = 060097B8
/* 01798 80AEC3A8 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 0179C 80AEC3AC 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 017A0 80AEC3B0 0C2BAC99 */  jal     func_80AEB264              
/* 017A4 80AEC3B4 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 017A8 80AEC3B8 82020003 */  lb      $v0, 0x0003($s0)           ## 00000003
/* 017AC 80AEC3BC 24090016 */  addiu   $t1, $zero, 0x0016         ## $t1 = 00000016
/* 017B0 80AEC3C0 240AFFFF */  addiu   $t2, $zero, 0xFFFF         ## $t2 = FFFFFFFF
/* 017B4 80AEC3C4 AE090264 */  sw      $t1, 0x0264($s0)           ## 00000264
/* 017B8 80AEC3C8 A20A0003 */  sb      $t2, 0x0003($s0)           ## 00000003
/* 017BC 80AEC3CC AE000268 */  sw      $zero, 0x0268($s0)         ## 00000268
/* 017C0 80AEC3D0 A2020284 */  sb      $v0, 0x0284($s0)           ## 00000284
/* 017C4 80AEC3D4 A2020286 */  sb      $v0, 0x0286($s0)           ## 00000286
/* 017C8 80AEC3D8 10000007 */  beq     $zero, $zero, .L80AEC3F8   
/* 017CC 80AEC3DC A2020285 */  sb      $v0, 0x0285($s0)           ## 00000285
.L80AEC3E0:
/* 017D0 80AEC3E0 0C00B55C */  jal     Actor_Kill
              
/* 017D4 80AEC3E4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 017D8 80AEC3E8 10000004 */  beq     $zero, $zero, .L80AEC3FC   
/* 017DC 80AEC3EC 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AEC3F0:
/* 017E0 80AEC3F0 0C00B55C */  jal     Actor_Kill
              
/* 017E4 80AEC3F4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80AEC3F8:
/* 017E8 80AEC3F8 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AEC3FC:
/* 017EC 80AEC3FC 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 017F0 80AEC400 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 017F4 80AEC404 03E00008 */  jr      $ra                        
/* 017F8 80AEC408 00000000 */  nop
