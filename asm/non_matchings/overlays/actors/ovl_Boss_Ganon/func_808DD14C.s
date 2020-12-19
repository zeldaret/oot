glabel func_808DD14C
/* 068DC 808DD14C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 068E0 808DD150 AFBF001C */  sw      $ra, 0x001C($sp)
/* 068E4 808DD154 AFB00018 */  sw      $s0, 0x0018($sp)
/* 068E8 808DD158 AFA5002C */  sw      $a1, 0x002C($sp)
/* 068EC 808DD15C 8C8E0004 */  lw      $t6, 0x0004($a0)           ## 00000004
/* 068F0 808DD160 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 068F4 808DD164 24840150 */  addiu   $a0, $a0, 0x0150           ## $a0 = 00000150
/* 068F8 808DD168 35CF0001 */  ori     $t7, $t6, 0x0001           ## $t7 = 00000001
/* 068FC 808DD16C AC8FFEB4 */  sw      $t7, -0x014C($a0)          ## 00000004
/* 06900 808DD170 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 06904 808DD174 AFA40024 */  sw      $a0, 0x0024($sp)
/* 06908 808DD178 861801A4 */  lh      $t8, 0x01A4($s0)           ## 000001A4
/* 0690C 808DD17C 26040508 */  addiu   $a0, $s0, 0x0508           ## $a0 = 00000508
/* 06910 808DD180 3C0540A0 */  lui     $a1, 0x40A0                ## $a1 = 40A00000
/* 06914 808DD184 2B010037 */  slti    $at, $t8, 0x0037
/* 06918 808DD188 14200007 */  bne     $at, $zero, .L808DD1A8
/* 0691C 808DD18C 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 06920 808DD190 3C073E19 */  lui     $a3, 0x3E19                ## $a3 = 3E190000
/* 06924 808DD194 34E7999A */  ori     $a3, $a3, 0x999A           ## $a3 = 3E19999A
/* 06928 808DD198 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 0692C 808DD19C 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 06930 808DD1A0 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 06934 808DD1A4 A21902E4 */  sb      $t9, 0x02E4($s0)           ## 000002E4
.L808DD1A8:
/* 06938 808DD1A8 8FA40024 */  lw      $a0, 0x0024($sp)
/* 0693C 808DD1AC 0C0295B2 */  jal     func_800A56C8
/* 06940 808DD1B0 8E0501CC */  lw      $a1, 0x01CC($s0)           ## 000001CC
/* 06944 808DD1B4 10400010 */  beq     $v0, $zero, .L808DD1F8
/* 06948 808DD1B8 3C08808E */  lui     $t0, %hi(func_808DCB7C)    ## $t0 = 808E0000
/* 0694C 808DD1BC 2508CB7C */  addiu   $t0, $t0, %lo(func_808DCB7C) ## $t0 = 808DCB7C
/* 06950 808DD1C0 24090004 */  addiu   $t1, $zero, 0x0004         ## $t1 = 00000004
/* 06954 808DD1C4 3C040600 */  lui     $a0, %hi(D_060069A0)                ## $a0 = 06000000
/* 06958 808DD1C8 AE080194 */  sw      $t0, 0x0194($s0)           ## 00000194
/* 0695C 808DD1CC A60901C2 */  sh      $t1, 0x01C2($s0)           ## 000001C2
/* 06960 808DD1D0 0C028800 */  jal     SkelAnime_GetFrameCount

/* 06964 808DD1D4 248469A0 */  addiu   $a0, $a0, %lo(D_060069A0)           ## $a0 = 060069A0
/* 06968 808DD1D8 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 0696C 808DD1DC 3C050600 */  lui     $a1, %hi(D_060069A0)                ## $a1 = 06000000
/* 06970 808DD1E0 24A569A0 */  addiu   $a1, $a1, %lo(D_060069A0)           ## $a1 = 060069A0
/* 06974 808DD1E4 468021A0 */  cvt.s.w $f6, $f4
/* 06978 808DD1E8 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 0697C 808DD1EC E60601CC */  swc1    $f6, 0x01CC($s0)           ## 000001CC
/* 06980 808DD1F0 0C0294D3 */  jal     SkelAnime_ChangeAnimTransitionRepeat
/* 06984 808DD1F4 8FA40024 */  lw      $a0, 0x0024($sp)
.L808DD1F8:
/* 06988 808DD1F8 8FBF001C */  lw      $ra, 0x001C($sp)
/* 0698C 808DD1FC 8FB00018 */  lw      $s0, 0x0018($sp)
/* 06990 808DD200 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 06994 808DD204 03E00008 */  jr      $ra
/* 06998 808DD208 00000000 */  nop
