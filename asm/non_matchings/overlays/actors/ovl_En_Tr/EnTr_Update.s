glabel EnTr_Update
/* 00ECC 80B23BBC 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00ED0 80B23BC0 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 00ED4 80B23BC4 AFB00028 */  sw      $s0, 0x0028($sp)
/* 00ED8 80B23BC8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00EDC 80B23BCC AFBF002C */  sw      $ra, 0x002C($sp)
/* 00EE0 80B23BD0 AFA5004C */  sw      $a1, 0x004C($sp)
/* 00EE4 80B23BD4 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00EE8 80B23BD8 240E0005 */  addiu   $t6, $zero, 0x0005         ## $t6 = 00000005
/* 00EEC 80B23BDC 44060000 */  mfc1    $a2, $f0
/* 00EF0 80B23BE0 44070000 */  mfc1    $a3, $f0
/* 00EF4 80B23BE4 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 00EF8 80B23BE8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00EFC 80B23BEC 0C00B92D */  jal     func_8002E4B4
/* 00F00 80B23BF0 E7A00010 */  swc1    $f0, 0x0010($sp)
/* 00F04 80B23BF4 8E1902DC */  lw      $t9, 0x02DC($s0)           ## 000002DC
/* 00F08 80B23BF8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F0C 80B23BFC 8FA5004C */  lw      $a1, 0x004C($sp)
/* 00F10 80B23C00 0320F809 */  jalr    $ra, $t9
/* 00F14 80B23C04 00000000 */  nop
/* 00F18 80B23C08 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00F1C 80B23C0C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 00F20 80B23C10 AFA40034 */  sw      $a0, 0x0034($sp)
/* 00F24 80B23C14 5040003B */  beql    $v0, $zero, .L80B23D04
/* 00F28 80B23C18 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F2C 80B23C1C 8E0502E4 */  lw      $a1, 0x02E4($s0)           ## 000002E4
/* 00F30 80B23C20 3C0F0600 */  lui     $t7, 0x0600                ## $t7 = 06000000
/* 00F34 80B23C24 25EF35CC */  addiu   $t7, $t7, 0x35CC           ## $t7 = 060035CC
/* 00F38 80B23C28 50A00033 */  beql    $a1, $zero, .L80B23CF8
/* 00F3C 80B23C2C 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 00F40 80B23C30 11E50004 */  beq     $t7, $a1, .L80B23C44
/* 00F44 80B23C34 3C180600 */  lui     $t8, 0x0600                ## $t8 = 06000000
/* 00F48 80B23C38 271813CC */  addiu   $t8, $t8, 0x13CC           ## $t8 = 060013CC
/* 00F4C 80B23C3C 17050011 */  bne     $t8, $a1, .L80B23C84
/* 00F50 80B23C40 3C090600 */  lui     $t1, 0x0600                ## $t1 = 06000000
.L80B23C44:
/* 00F54 80B23C44 8608001C */  lh      $t0, 0x001C($s0)           ## 0000001C
/* 00F58 80B23C48 240539B1 */  addiu   $a1, $zero, 0x39B1         ## $a1 = 000039B1
/* 00F5C 80B23C4C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F60 80B23C50 11000005 */  beq     $t0, $zero, .L80B23C68
/* 00F64 80B23C54 00000000 */  nop
/* 00F68 80B23C58 0C00BE0A */  jal     Audio_PlayActorSound2

/* 00F6C 80B23C5C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F70 80B23C60 10000004 */  beq     $zero, $zero, .L80B23C74
/* 00F74 80B23C64 8FA40034 */  lw      $a0, 0x0034($sp)
.L80B23C68:
/* 00F78 80B23C68 0C00BE0A */  jal     Audio_PlayActorSound2

/* 00F7C 80B23C6C 240539B0 */  addiu   $a1, $zero, 0x39B0         ## $a1 = 000039B0
/* 00F80 80B23C70 8FA40034 */  lw      $a0, 0x0034($sp)
.L80B23C74:
/* 00F84 80B23C74 0C0294BE */  jal     SkelAnime_ChangeAnimationDefaultRepeat
/* 00F88 80B23C78 8E0502E4 */  lw      $a1, 0x02E4($s0)           ## 000002E4
/* 00F8C 80B23C7C 1000001B */  beq     $zero, $zero, .L80B23CEC
/* 00F90 80B23C80 00000000 */  nop
.L80B23C84:
/* 00F94 80B23C84 252949C8 */  addiu   $t1, $t1, 0x49C8           ## $t1 = 000049C8
/* 00F98 80B23C88 15250016 */  bne     $t1, $a1, .L80B23CE4
/* 00F9C 80B23C8C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00FA0 80B23C90 3C0580B2 */  lui     $a1, %hi(func_80B22F28)    ## $a1 = 80B20000
/* 00FA4 80B23C94 0C2C8B3C */  jal     func_80B22CF0
/* 00FA8 80B23C98 24A52F28 */  addiu   $a1, $a1, %lo(func_80B22F28) ## $a1 = 80B22F28
/* 00FAC 80B23C9C 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00FB0 80B23CA0 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00FB4 80B23CA4 248449C8 */  addiu   $a0, $a0, 0x49C8           ## $a0 = 060049C8
/* 00FB8 80B23CA8 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00FBC 80B23CAC 3C01C0A0 */  lui     $at, 0xC0A0                ## $at = C0A00000
/* 00FC0 80B23CB0 44814000 */  mtc1    $at, $f8                   ## $f8 = -5.00
/* 00FC4 80B23CB4 468021A0 */  cvt.s.w $f6, $f4
/* 00FC8 80B23CB8 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00FCC 80B23CBC 24A549C8 */  addiu   $a1, $a1, 0x49C8           ## $a1 = 060049C8
/* 00FD0 80B23CC0 8FA40034 */  lw      $a0, 0x0034($sp)
/* 00FD4 80B23CC4 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00FD8 80B23CC8 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00FDC 80B23CCC E7A60010 */  swc1    $f6, 0x0010($sp)
/* 00FE0 80B23CD0 AFA00014 */  sw      $zero, 0x0014($sp)
/* 00FE4 80B23CD4 0C029468 */  jal     SkelAnime_ChangeAnimation

/* 00FE8 80B23CD8 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 00FEC 80B23CDC 10000003 */  beq     $zero, $zero, .L80B23CEC
/* 00FF0 80B23CE0 00000000 */  nop
.L80B23CE4:
/* 00FF4 80B23CE4 0C0294BE */  jal     SkelAnime_ChangeAnimationDefaultRepeat
/* 00FF8 80B23CE8 8FA40034 */  lw      $a0, 0x0034($sp)
.L80B23CEC:
/* 00FFC 80B23CEC 10000004 */  beq     $zero, $zero, .L80B23D00
/* 01000 80B23CF0 AE0002E4 */  sw      $zero, 0x02E4($s0)         ## 000002E4
/* 01004 80B23CF4 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
.L80B23CF8:
/* 01008 80B23CF8 00000000 */  nop
/* 0100C 80B23CFC E60A0164 */  swc1    $f10, 0x0164($s0)          ## 00000164
.L80B23D00:
/* 01010 80B23D00 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B23D04:
/* 01014 80B23D04 0C00B56E */  jal     Actor_SetHeight

/* 01018 80B23D08 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 0101C 80B23D0C 860302E2 */  lh      $v1, 0x02E2($s0)           ## 000002E2
/* 01020 80B23D10 2404003C */  addiu   $a0, $zero, 0x003C         ## $a0 = 0000003C
/* 01024 80B23D14 14600003 */  bne     $v1, $zero, .L80B23D24
/* 01028 80B23D18 246AFFFF */  addiu   $t2, $v1, 0xFFFF           ## $t2 = FFFFFFFF
/* 0102C 80B23D1C 10000004 */  beq     $zero, $zero, .L80B23D30
/* 01030 80B23D20 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80B23D24:
/* 01034 80B23D24 A60A02E2 */  sh      $t2, 0x02E2($s0)           ## 000002E2
/* 01038 80B23D28 860302E2 */  lh      $v1, 0x02E2($s0)           ## 000002E2
/* 0103C 80B23D2C 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L80B23D30:
/* 01040 80B23D30 54400006 */  bnel    $v0, $zero, .L80B23D4C
/* 01044 80B23D34 A60302E0 */  sh      $v1, 0x02E0($s0)           ## 000002E0
/* 01048 80B23D38 0C01DF64 */  jal     Math_Rand_S16Offset

/* 0104C 80B23D3C 2405003C */  addiu   $a1, $zero, 0x003C         ## $a1 = 0000003C
/* 01050 80B23D40 A60202E2 */  sh      $v0, 0x02E2($s0)           ## 000002E2
/* 01054 80B23D44 860302E2 */  lh      $v1, 0x02E2($s0)           ## 000002E2
/* 01058 80B23D48 A60302E0 */  sh      $v1, 0x02E0($s0)           ## 000002E0
.L80B23D4C:
/* 0105C 80B23D4C 860B02E0 */  lh      $t3, 0x02E0($s0)           ## 000002E0
/* 01060 80B23D50 29610003 */  slti    $at, $t3, 0x0003
/* 01064 80B23D54 54200003 */  bnel    $at, $zero, .L80B23D64
/* 01068 80B23D58 8FBF002C */  lw      $ra, 0x002C($sp)
/* 0106C 80B23D5C A60002E0 */  sh      $zero, 0x02E0($s0)         ## 000002E0
/* 01070 80B23D60 8FBF002C */  lw      $ra, 0x002C($sp)
.L80B23D64:
/* 01074 80B23D64 8FB00028 */  lw      $s0, 0x0028($sp)
/* 01078 80B23D68 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 0107C 80B23D6C 03E00008 */  jr      $ra
/* 01080 80B23D70 00000000 */  nop


