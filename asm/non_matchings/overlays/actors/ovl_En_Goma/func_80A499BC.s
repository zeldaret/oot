glabel func_80A499BC
/* 00AFC 80A499BC 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00B00 80A499C0 AFB00028 */  sw      $s0, 0x0028($sp)
/* 00B04 80A499C4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00B08 80A499C8 AFBF002C */  sw      $ra, 0x002C($sp)
/* 00B0C 80A499CC 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00B10 80A499D0 AFA50034 */  sw      $a1, 0x0034($sp)
/* 00B14 80A499D4 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00B18 80A499D8 24840838 */  addiu   $a0, $a0, 0x0838           ## $a0 = 06000838
/* 00B1C 80A499DC 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00B20 80A499E0 3C01C000 */  lui     $at, 0xC000                ## $at = C0000000
/* 00B24 80A499E4 44814000 */  mtc1    $at, $f8                   ## $f8 = -2.00
/* 00B28 80A499E8 468021A0 */  cvt.s.w $f6, $f4
/* 00B2C 80A499EC 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00B30 80A499F0 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 00B34 80A499F4 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 00B38 80A499F8 24A50838 */  addiu   $a1, $a1, 0x0838           ## $a1 = 06000838
/* 00B3C 80A499FC 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00B40 80A49A00 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 00B44 80A49A04 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00B48 80A49A08 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00B4C 80A49A0C 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00B50 80A49A10 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 00B54 80A49A14 821800AF */  lb      $t8, 0x00AF($s0)           ## 000000AF
/* 00B58 80A49A18 3C0F80A5 */  lui     $t7, %hi(func_80A49AA8)    ## $t7 = 80A50000
/* 00B5C 80A49A1C 25EF9AA8 */  addiu   $t7, $t7, %lo(func_80A49AA8) ## $t7 = 80A49AA8
/* 00B60 80A49A20 1F000008 */  bgtz    $t8, .L80A49A44
/* 00B64 80A49A24 AE0F02B0 */  sw      $t7, 0x02B0($s0)           ## 000002B0
/* 00B68 80A49A28 24190005 */  addiu   $t9, $zero, 0x0005         ## $t9 = 00000005
/* 00B6C 80A49A2C A61902CC */  sh      $t9, 0x02CC($s0)           ## 000002CC
/* 00B70 80A49A30 8FA40034 */  lw      $a0, 0x0034($sp)
/* 00B74 80A49A34 0C00CB1F */  jal     func_80032C7C
/* 00B78 80A49A38 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00B7C 80A49A3C 10000004 */  beq     $zero, $zero, .L80A49A50
/* 00B80 80A49A40 8609008A */  lh      $t1, 0x008A($s0)           ## 0000008A
.L80A49A44:
/* 00B84 80A49A44 2408000A */  addiu   $t0, $zero, 0x000A         ## $t0 = 0000000A
/* 00B88 80A49A48 A60802CC */  sh      $t0, 0x02CC($s0)           ## 000002CC
/* 00B8C 80A49A4C 8609008A */  lh      $t1, 0x008A($s0)           ## 0000008A
.L80A49A50:
/* 00B90 80A49A50 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00B94 80A49A54 44815000 */  mtc1    $at, $f10                  ## $f10 = 20.00
/* 00B98 80A49A58 860B001C */  lh      $t3, 0x001C($s0)           ## 0000001C
/* 00B9C 80A49A5C 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 00BA0 80A49A60 01215021 */  addu    $t2, $t1, $at
/* 00BA4 80A49A64 29610006 */  slti    $at, $t3, 0x0006
/* 00BA8 80A49A68 A60A0032 */  sh      $t2, 0x0032($s0)           ## 00000032
/* 00BAC 80A49A6C 10200006 */  beq     $at, $zero, .L80A49A88
/* 00BB0 80A49A70 E60A0068 */  swc1    $f10, 0x0068($s0)          ## 00000068
/* 00BB4 80A49A74 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00BB8 80A49A78 0C00BE0A */  jal     Audio_PlayActorSound2

/* 00BBC 80A49A7C 24053818 */  addiu   $a1, $zero, 0x3818         ## $a1 = 00003818
/* 00BC0 80A49A80 10000005 */  beq     $zero, $zero, .L80A49A98
/* 00BC4 80A49A84 8FBF002C */  lw      $ra, 0x002C($sp)
.L80A49A88:
/* 00BC8 80A49A88 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00BCC 80A49A8C 0C00BE0A */  jal     Audio_PlayActorSound2

/* 00BD0 80A49A90 2405395E */  addiu   $a1, $zero, 0x395E         ## $a1 = 0000395E
/* 00BD4 80A49A94 8FBF002C */  lw      $ra, 0x002C($sp)
.L80A49A98:
/* 00BD8 80A49A98 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00BDC 80A49A9C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00BE0 80A49AA0 03E00008 */  jr      $ra
/* 00BE4 80A49AA4 00000000 */  nop


