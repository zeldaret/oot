glabel func_80B15AD4
/* 02034 80B15AD4 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 02038 80B15AD8 AFBF002C */  sw      $ra, 0x002C($sp)
/* 0203C 80B15ADC AFB00028 */  sw      $s0, 0x0028($sp)
/* 02040 80B15AE0 AFA50034 */  sw      $a1, 0x0034($sp)
/* 02044 80B15AE4 848E02CC */  lh      $t6, 0x02CC($a0)           ## 000002CC
/* 02048 80B15AE8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0204C 80B15AEC 55C0002E */  bnel    $t6, $zero, .L80B15BA8
/* 02050 80B15AF0 8FA40034 */  lw      $a0, 0x0034($sp)
/* 02054 80B15AF4 948F02E0 */  lhu     $t7, 0x02E0($a0)           ## 000002E0
/* 02058 80B15AF8 3C0580B1 */  lui     $a1, %hi(func_80B1585C)    ## $a1 = 80B10000
/* 0205C 80B15AFC 24A5585C */  addiu   $a1, $a1, %lo(func_80B1585C) ## $a1 = 80B1585C
/* 02060 80B15B00 31F80020 */  andi    $t8, $t7, 0x0020           ## $t8 = 00000000
/* 02064 80B15B04 13000027 */  beq     $t8, $zero, .L80B15BA4
/* 02068 80B15B08 3C0680B1 */  lui     $a2, %hi(func_80B16938)    ## $a2 = 80B10000
/* 0206C 80B15B0C 0C2C4EA8 */  jal     func_80B13AA0
/* 02070 80B15B10 24C66938 */  addiu   $a2, $a2, %lo(func_80B16938) ## $a2 = 80B16938
/* 02074 80B15B14 961902E0 */  lhu     $t9, 0x02E0($s0)           ## 000002E0
/* 02078 80B15B18 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 0207C 80B15B1C 2484BF38 */  addiu   $a0, $a0, 0xBF38           ## $a0 = 0600BF38
/* 02080 80B15B20 3328FFEF */  andi    $t0, $t9, 0xFFEF           ## $t0 = 00000000
/* 02084 80B15B24 0C028800 */  jal     Animation_LastFrame

/* 02088 80B15B28 A60802E0 */  sh      $t0, 0x02E0($s0)           ## 000002E0
/* 0208C 80B15B2C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 02090 80B15B30 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 02094 80B15B34 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 02098 80B15B38 468021A0 */  cvt.s.w $f6, $f4
/* 0209C 80B15B3C 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 020A0 80B15B40 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 020A4 80B15B44 24090002 */  addiu   $t1, $zero, 0x0002         ## $t1 = 00000002
/* 020A8 80B15B48 44060000 */  mfc1    $a2, $f0
/* 020AC 80B15B4C 44070000 */  mfc1    $a3, $f0
/* 020B0 80B15B50 AFA90014 */  sw      $t1, 0x0014($sp)
/* 020B4 80B15B54 24A5BF38 */  addiu   $a1, $a1, 0xBF38           ## $a1 = 0600BF38
/* 020B8 80B15B58 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 020BC 80B15B5C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 020C0 80B15B60 0C029468 */  jal     Animation_Change

/* 020C4 80B15B64 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 020C8 80B15B68 240A0032 */  addiu   $t2, $zero, 0x0032         ## $t2 = 00000032
/* 020CC 80B15B6C A60A02CC */  sh      $t2, 0x02CC($s0)           ## 000002CC
/* 020D0 80B15B70 0C0222CD */  jal     func_80088B34
/* 020D4 80B15B74 2404001E */  addiu   $a0, $zero, 0x001E         ## $a0 = 0000001E
/* 020D8 80B15B78 0C03D6B3 */  jal     func_800F5ACC
/* 020DC 80B15B7C 2404006C */  addiu   $a0, $zero, 0x006C         ## $a0 = 0000006C
/* 020E0 80B15B80 960B02E0 */  lhu     $t3, 0x02E0($s0)           ## 000002E0
/* 020E4 80B15B84 356C0200 */  ori     $t4, $t3, 0x0200           ## $t4 = 00000200
/* 020E8 80B15B88 A60C02E0 */  sh      $t4, 0x02E0($s0)           ## 000002E0
/* 020EC 80B15B8C 0C041B33 */  jal     func_80106CCC
/* 020F0 80B15B90 8FA40034 */  lw      $a0, 0x0034($sp)
/* 020F4 80B15B94 8FA40034 */  lw      $a0, 0x0034($sp)
/* 020F8 80B15B98 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 020FC 80B15B9C 0C00B7D5 */  jal     func_8002DF54
/* 02100 80B15BA0 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
.L80B15BA4:
/* 02104 80B15BA4 8FA40034 */  lw      $a0, 0x0034($sp)
.L80B15BA8:
/* 02108 80B15BA8 0C042F6F */  jal     func_8010BDBC
/* 0210C 80B15BAC 248420D8 */  addiu   $a0, $a0, 0x20D8           ## $a0 = 000020D8
/* 02110 80B15BB0 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 02114 80B15BB4 54410009 */  bnel    $v0, $at, .L80B15BDC
/* 02118 80B15BB8 960F02E0 */  lhu     $t7, 0x02E0($s0)           ## 000002E0
/* 0211C 80B15BBC 0C041AF2 */  jal     func_80106BC8
/* 02120 80B15BC0 8FA40034 */  lw      $a0, 0x0034($sp)
/* 02124 80B15BC4 50400005 */  beql    $v0, $zero, .L80B15BDC
/* 02128 80B15BC8 960F02E0 */  lhu     $t7, 0x02E0($s0)           ## 000002E0
/* 0212C 80B15BCC 960D02E0 */  lhu     $t5, 0x02E0($s0)           ## 000002E0
/* 02130 80B15BD0 35AE0020 */  ori     $t6, $t5, 0x0020           ## $t6 = 00000020
/* 02134 80B15BD4 A60E02E0 */  sh      $t6, 0x02E0($s0)           ## 000002E0
/* 02138 80B15BD8 960F02E0 */  lhu     $t7, 0x02E0($s0)           ## 000002E0
.L80B15BDC:
/* 0213C 80B15BDC 35F80001 */  ori     $t8, $t7, 0x0001           ## $t8 = 00000001
/* 02140 80B15BE0 A61802E0 */  sh      $t8, 0x02E0($s0)           ## 000002E0
/* 02144 80B15BE4 8FBF002C */  lw      $ra, 0x002C($sp)
/* 02148 80B15BE8 8FB00028 */  lw      $s0, 0x0028($sp)
/* 0214C 80B15BEC 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 02150 80B15BF0 03E00008 */  jr      $ra
/* 02154 80B15BF4 00000000 */  nop
