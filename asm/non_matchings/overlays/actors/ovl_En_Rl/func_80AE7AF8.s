glabel func_80AE7AF8
/* 00848 80AE7AF8 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 0084C 80AE7AFC AFBF002C */  sw      $ra, 0x002C($sp)
/* 00850 80AE7B00 AFB00028 */  sw      $s0, 0x0028($sp)
/* 00854 80AE7B04 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00858 80AE7B08 AFA50034 */  sw      $a1, 0x0034($sp)
/* 0085C 80AE7B0C 24060003 */  addiu   $a2, $zero, 0x0003         ## $a2 = 00000003
/* 00860 80AE7B10 0C2B9D2D */  jal     func_80AE74B4
/* 00864 80AE7B14 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00868 80AE7B18 10400015 */  beq     $v0, $zero, .L80AE7B70
/* 0086C 80AE7B1C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00870 80AE7B20 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00874 80AE7B24 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00878 80AE7B28 2484040C */  addiu   $a0, $a0, 0x040C           ## $a0 = 0600040C
/* 0087C 80AE7B2C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00880 80AE7B30 3C01C100 */  lui     $at, 0xC100                ## $at = C1000000
/* 00884 80AE7B34 44814000 */  mtc1    $at, $f8                   ## $f8 = -8.00
/* 00888 80AE7B38 468021A0 */  cvt.s.w $f6, $f4
/* 0088C 80AE7B3C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00890 80AE7B40 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 00894 80AE7B44 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 00898 80AE7B48 24A5040C */  addiu   $a1, $a1, 0x040C           ## $a1 = 0600040C
/* 0089C 80AE7B4C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 008A0 80AE7B50 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 008A4 80AE7B54 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 008A8 80AE7B58 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 008AC 80AE7B5C 0C029468 */  jal     SkelAnime_ChangeAnim

/* 008B0 80AE7B60 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 008B4 80AE7B64 240F0006 */  addiu   $t7, $zero, 0x0006         ## $t7 = 00000006
/* 008B8 80AE7B68 1000001E */  beq     $zero, $zero, .L80AE7BE4
/* 008BC 80AE7B6C AE0F0194 */  sw      $t7, 0x0194($s0)           ## 00000194
.L80AE7B70:
/* 008C0 80AE7B70 8FA50034 */  lw      $a1, 0x0034($sp)
/* 008C4 80AE7B74 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 008C8 80AE7B78 0C2B9D3F */  jal     func_80AE74FC
/* 008CC 80AE7B7C 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 008D0 80AE7B80 10400018 */  beq     $v0, $zero, .L80AE7BE4
/* 008D4 80AE7B84 24180005 */  addiu   $t8, $zero, 0x0005         ## $t8 = 00000005
/* 008D8 80AE7B88 24190002 */  addiu   $t9, $zero, 0x0002         ## $t9 = 00000002
/* 008DC 80AE7B8C AE180194 */  sw      $t8, 0x0194($s0)           ## 00000194
/* 008E0 80AE7B90 AE190198 */  sw      $t9, 0x0198($s0)           ## 00000198
/* 008E4 80AE7B94 3C088016 */  lui     $t0, %hi(gGameInfo)
/* 008E8 80AE7B98 8D08FA90 */  lw      $t0, %lo(gGameInfo)($t0)
/* 008EC 80AE7B9C 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 008F0 80AE7BA0 44819000 */  mtc1    $at, $f18                  ## $f18 = 10.00
/* 008F4 80AE7BA4 8509145E */  lh      $t1, 0x145E($t0)           ## 8016145E
/* 008F8 80AE7BA8 8E0B01A4 */  lw      $t3, 0x01A4($s0)           ## 000001A4
/* 008FC 80AE7BAC 240A00FF */  addiu   $t2, $zero, 0x00FF         ## $t2 = 000000FF
/* 00900 80AE7BB0 44895000 */  mtc1    $t1, $f10                  ## $f10 = 0.00
/* 00904 80AE7BB4 AE0A01A0 */  sw      $t2, 0x01A0($s0)           ## 000001A0
/* 00908 80AE7BB8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0090C 80AE7BBC 46805420 */  cvt.s.w $f16, $f10
/* 00910 80AE7BC0 46128100 */  add.s   $f4, $f16, $f18
/* 00914 80AE7BC4 15600005 */  bne     $t3, $zero, .L80AE7BDC
/* 00918 80AE7BC8 E604019C */  swc1    $f4, 0x019C($s0)           ## 0000019C
/* 0091C 80AE7BCC 0C2B9E35 */  jal     func_80AE78D4
/* 00920 80AE7BD0 8FA50034 */  lw      $a1, 0x0034($sp)
/* 00924 80AE7BD4 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 00928 80AE7BD8 AE0C01A4 */  sw      $t4, 0x01A4($s0)           ## 000001A4
.L80AE7BDC:
/* 0092C 80AE7BDC 240D00FF */  addiu   $t5, $zero, 0x00FF         ## $t5 = 000000FF
/* 00930 80AE7BE0 A20D00C8 */  sb      $t5, 0x00C8($s0)           ## 000000C8
.L80AE7BE4:
/* 00934 80AE7BE4 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00938 80AE7BE8 8FB00028 */  lw      $s0, 0x0028($sp)
/* 0093C 80AE7BEC 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00940 80AE7BF0 03E00008 */  jr      $ra
/* 00944 80AE7BF4 00000000 */  nop
