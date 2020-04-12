glabel BgSpot11Bakudankabe_Update
/* 0049C 808B261C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 004A0 808B2620 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 004A4 808B2624 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 004A8 808B2628 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 004AC 808B262C 908E0175 */  lbu     $t6, 0x0175($a0)           ## 00000175
/* 004B0 808B2630 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 004B4 808B2634 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 004B8 808B2638 31CF0002 */  andi    $t7, $t6, 0x0002           ## $t7 = 00000000
/* 004BC 808B263C 11E00013 */  beq     $t7, $zero, .L808B268C     
/* 004C0 808B2640 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 004C4 808B2644 0C22C886 */  jal     func_808B2218              
/* 004C8 808B2648 00000000 */  nop
/* 004CC 808B264C 8625001C */  lh      $a1, 0x001C($s1)           ## 0000001C
/* 004D0 808B2650 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 004D4 808B2654 0C00B2DD */  jal     Flags_SetSwitch
              
/* 004D8 808B2658 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 004DC 808B265C 3C05808B */  lui     $a1, %hi(D_808B2738)       ## $a1 = 808B0000
/* 004E0 808B2660 24A52738 */  addiu   $a1, $a1, %lo(D_808B2738)  ## $a1 = 808B2738
/* 004E4 808B2664 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 004E8 808B2668 24060028 */  addiu   $a2, $zero, 0x0028         ## $a2 = 00000028
/* 004EC 808B266C 0C01AEB6 */  jal     Audio_PlaySoundAtPosition
              
/* 004F0 808B2670 24072810 */  addiu   $a3, $zero, 0x2810         ## $a3 = 00002810
/* 004F4 808B2674 0C01E221 */  jal     func_80078884              
/* 004F8 808B2678 24044802 */  addiu   $a0, $zero, 0x4802         ## $a0 = 00004802
/* 004FC 808B267C 0C00B55C */  jal     Actor_Kill
              
/* 00500 808B2680 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00504 808B2684 10000007 */  beq     $zero, $zero, .L808B26A4   
/* 00508 808B2688 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808B268C:
/* 0050C 808B268C 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00001E60
/* 00510 808B2690 02012821 */  addu    $a1, $s0, $at              
/* 00514 808B2694 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00518 808B2698 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 0051C 808B269C 26260164 */  addiu   $a2, $s1, 0x0164           ## $a2 = 00000164
/* 00520 808B26A0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808B26A4:
/* 00524 808B26A4 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 00528 808B26A8 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 0052C 808B26AC 03E00008 */  jr      $ra                        
/* 00530 808B26B0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
