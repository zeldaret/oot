glabel func_80A49B30
/* 00C70 80A49B30 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00C74 80A49B34 AFB00028 */  sw      $s0, 0x0028($sp)
/* 00C78 80A49B38 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00C7C 80A49B3C AFBF002C */  sw      $ra, 0x002C($sp)
/* 00C80 80A49B40 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00C84 80A49B44 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00C88 80A49B48 24840B78 */  addiu   $a0, $a0, 0x0B78           ## $a0 = 06000B78
/* 00C8C 80A49B4C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00C90 80A49B50 3C01C000 */  lui     $at, 0xC000                ## $at = C0000000
/* 00C94 80A49B54 44814000 */  mtc1    $at, $f8                   ## $f8 = -2.00
/* 00C98 80A49B58 468021A0 */  cvt.s.w $f6, $f4
/* 00C9C 80A49B5C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00CA0 80A49B60 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 00CA4 80A49B64 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 00CA8 80A49B68 24A50B78 */  addiu   $a1, $a1, 0x0B78           ## $a1 = 06000B78
/* 00CAC 80A49B6C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00CB0 80A49B70 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 00CB4 80A49B74 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00CB8 80A49B78 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00CBC 80A49B7C 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00CC0 80A49B80 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 00CC4 80A49B84 8619001C */  lh      $t9, 0x001C($s0)           ## 0000001C
/* 00CC8 80A49B88 3C0F80A5 */  lui     $t7, %hi(func_80A49BF0)    ## $t7 = 80A50000
/* 00CCC 80A49B8C 25EF9BF0 */  addiu   $t7, $t7, %lo(func_80A49BF0) ## $t7 = 80A49BF0
/* 00CD0 80A49B90 2418001E */  addiu   $t8, $zero, 0x001E         ## $t8 = 0000001E
/* 00CD4 80A49B94 2B210006 */  slti    $at, $t9, 0x0006
/* 00CD8 80A49B98 AE0F02B0 */  sw      $t7, 0x02B0($s0)           ## 000002B0
/* 00CDC 80A49B9C 10200006 */  beq     $at, $zero, .L80A49BB8
/* 00CE0 80A49BA0 A61802CC */  sh      $t8, 0x02CC($s0)           ## 000002CC
/* 00CE4 80A49BA4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00CE8 80A49BA8 0C00BE0A */  jal     Audio_PlayActorSound2

/* 00CEC 80A49BAC 2405381A */  addiu   $a1, $zero, 0x381A         ## $a1 = 0000381A
/* 00CF0 80A49BB0 10000005 */  beq     $zero, $zero, .L80A49BC8
/* 00CF4 80A49BB4 8E090004 */  lw      $t1, 0x0004($s0)           ## 00000004
.L80A49BB8:
/* 00CF8 80A49BB8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00CFC 80A49BBC 0C00BE0A */  jal     Audio_PlayActorSound2

/* 00D00 80A49BC0 24053960 */  addiu   $a1, $zero, 0x3960         ## $a1 = 00003960
/* 00D04 80A49BC4 8E090004 */  lw      $t1, 0x0004($s0)           ## 00000004
.L80A49BC8:
/* 00D08 80A49BC8 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 00D0C 80A49BCC 24080064 */  addiu   $t0, $zero, 0x0064         ## $t0 = 00000064
/* 00D10 80A49BD0 01215024 */  and     $t2, $t1, $at
/* 00D14 80A49BD4 A60802CA */  sh      $t0, 0x02CA($s0)           ## 000002CA
/* 00D18 80A49BD8 AE0A0004 */  sw      $t2, 0x0004($s0)           ## 00000004
/* 00D1C 80A49BDC 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00D20 80A49BE0 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00D24 80A49BE4 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00D28 80A49BE8 03E00008 */  jr      $ra
/* 00D2C 80A49BEC 00000000 */  nop


