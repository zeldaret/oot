glabel func_8010B720
/* B828C0 8010B720 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B828C4 8010B724 AFA40020 */  sw    $a0, 0x20($sp)
/* B828C8 8010B728 AFBF001C */  sw    $ra, 0x1c($sp)
/* B828CC 8010B72C 3C048015 */  lui   $a0, %hi(D_8015432C) # $a0, 0x8015
/* B828D0 8010B730 AFB10018 */  sw    $s1, 0x18($sp)
/* B828D4 8010B734 AFB00014 */  sw    $s0, 0x14($sp)
/* B828D8 8010B738 AFA50024 */  sw    $a1, 0x24($sp)
/* B828DC 8010B73C 0C00084C */  jal   osSyncPrintf
/* B828E0 8010B740 2484432C */   addiu $a0, %lo(D_8015432C) # addiu $a0, $a0, 0x432c
/* B828E4 8010B744 8FB00020 */  lw    $s0, 0x20($sp)
/* B828E8 8010B748 34018000 */  li    $at, 32768
/* B828EC 8010B74C 3C048015 */  lui   $a0, %hi(D_80154334) # $a0, 0x8015
/* B828F0 8010B750 261020D8 */  addiu $s0, $s0, 0x20d8
/* B828F4 8010B754 02018821 */  addu  $s1, $s0, $at
/* B828F8 8010B758 8E266300 */  lw    $a2, 0x6300($s1)
/* B828FC 8010B75C 24844334 */  addiu $a0, %lo(D_80154334) # addiu $a0, $a0, 0x4334
/* B82900 8010B760 0C00084C */  jal   osSyncPrintf
/* B82904 8010B764 97A50026 */   lhu   $a1, 0x26($sp)
/* B82908 8010B768 3C048015 */  lui   $a0, %hi(D_80154358) # $a0, 0x8015
/* B8290C 8010B76C 0C00084C */  jal   osSyncPrintf
/* B82910 8010B770 24844358 */   addiu $a0, %lo(D_80154358) # addiu $a0, $a0, 0x4358
/* B82914 8010B774 26017FFF */  addiu $at, $s0, 0x7fff
/* B82918 8010B778 AC206301 */  sw    $zero, 0x6301($at)
/* B8291C 8010B77C 97A50026 */  lhu   $a1, 0x26($sp)
/* B82920 8010B780 0C042C30 */  jal   func_8010B0C0
/* B82924 8010B784 8FA40020 */   lw    $a0, 0x20($sp)
/* B82928 8010B788 26017FFF */  addiu $at, $s0, 0x7fff
/* B8292C 8010B78C A0206305 */  sb    $zero, 0x6305($at)
/* B82930 8010B790 862E6404 */  lh    $t6, 0x6404($s1)
/* B82934 8010B794 240F0005 */  li    $t7, 5
/* B82938 8010B798 24180003 */  li    $t8, 3
/* B8293C 8010B79C A02F6305 */  sb    $t7, 0x6305($at)
/* B82940 8010B7A0 A03863E8 */  sb    $t8, 0x63e8($at)
/* B82944 8010B7A4 A42063E9 */  sh    $zero, 0x63e9($at)
/* B82948 8010B7A8 A42E6407 */  sh    $t6, 0x6407($at)
/* B8294C 8010B7AC 962263E8 */  lhu   $v0, 0x63e8($s1)
/* B82950 8010B7B0 241900FF */  li    $t9, 255
/* B82954 8010B7B4 A43963E3 */  sh    $t9, 0x63e3($at)
/* B82958 8010B7B8 3C088016 */  lui   $t0, %hi(gGameInfo) # $t0, 0x8016
/* B8295C 8010B7BC A42263D3 */  sh    $v0, 0x63d3($at)
/* B82960 8010B7C0 A42263D1 */  sh    $v0, 0x63d1($at)
/* B82964 8010B7C4 A42263CF */  sh    $v0, 0x63cf($at)
/* B82968 8010B7C8 A02263E5 */  sb    $v0, 0x63e5($at)
/* B8296C 8010B7CC 8D08FA90 */  lw    $t0, %lo(gGameInfo)($t0)
/* B82970 8010B7D0 8FAA0020 */  lw    $t2, 0x20($sp)
/* B82974 8010B7D4 3C0B0001 */  lui   $t3, 1
/* B82978 8010B7D8 850904D2 */  lh    $t1, 0x4d2($t0)
/* B8297C 8010B7DC 016A5821 */  addu  $t3, $t3, $t2
/* B82980 8010B7E0 55200008 */  bnezl $t1, .L8010B804
/* B82984 8010B7E4 862C6404 */   lh    $t4, 0x6404($s1)
/* B82988 8010B7E8 856B06EA */  lh    $t3, 0x6ea($t3)
/* B8298C 8010B7EC 01402025 */  move  $a0, $t2
/* B82990 8010B7F0 55600004 */  bnezl $t3, .L8010B804
/* B82994 8010B7F4 862C6404 */   lh    $t4, 0x6404($s1)
/* B82998 8010B7F8 0C021BC0 */  jal   Interface_SetDoAction
/* B8299C 8010B7FC 24050010 */   li    $a1, 16
/* B829A0 8010B800 862C6404 */  lh    $t4, 0x6404($s1)
.L8010B804:
/* B829A4 8010B804 26017FFF */  addiu $at, $s0, 0x7fff
/* B829A8 8010B808 A42C6407 */  sh    $t4, 0x6407($at)
/* B829AC 8010B80C 8FBF001C */  lw    $ra, 0x1c($sp)
/* B829B0 8010B810 8FB10018 */  lw    $s1, 0x18($sp)
/* B829B4 8010B814 8FB00014 */  lw    $s0, 0x14($sp)
/* B829B8 8010B818 03E00008 */  jr    $ra
/* B829BC 8010B81C 27BD0020 */   addiu $sp, $sp, 0x20

