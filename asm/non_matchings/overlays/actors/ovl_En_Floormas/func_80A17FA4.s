.late_rodata
glabel D_80A1A578
    .float 0.1

.text
glabel func_80A17FA4
/* 00A94 80A17FA4 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00A98 80A17FA8 3C014234 */  lui     $at, 0x4234                ## $at = 42340000
/* 00A9C 80A17FAC 44812000 */  mtc1    $at, $f4                   ## $f4 = 45.00
/* 00AA0 80A17FB0 3C01C040 */  lui     $at, 0xC040                ## $at = C0400000
/* 00AA4 80A17FB4 44813000 */  mtc1    $at, $f6                   ## $f6 = -3.00
/* 00AA8 80A17FB8 AFB00028 */  sw      $s0, 0x0028($sp)
/* 00AAC 80A17FBC AFA50044 */  sw      $a1, 0x0044($sp)
/* 00AB0 80A17FC0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00AB4 80A17FC4 AFBF002C */  sw      $ra, 0x002C($sp)
/* 00AB8 80A17FC8 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00ABC 80A17FCC 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 00AC0 80A17FD0 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 00AC4 80A17FD4 24A519CC */  addiu   $a1, $a1, 0x19CC           ## $a1 = 060019CC
/* 00AC8 80A17FD8 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00ACC 80A17FDC 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00AD0 80A17FE0 3C074210 */  lui     $a3, 0x4210                ## $a3 = 42100000
/* 00AD4 80A17FE4 E7A40010 */  swc1    $f4, 0x0010($sp)
/* 00AD8 80A17FE8 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00ADC 80A17FEC E7A60018 */  swc1    $f6, 0x0018($sp)
/* 00AE0 80A17FF0 8E0F0004 */  lw      $t7, 0x0004($s0)           ## 00000004
/* 00AE4 80A17FF4 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00AE8 80A17FF8 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 00AEC 80A17FFC 01E1C024 */  and     $t8, $t7, $at
/* 00AF0 80A18000 AE180004 */  sw      $t8, 0x0004($s0)           ## 00000004
/* 00AF4 80A18004 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00AF8 80A18008 E6000068 */  swc1    $f0, 0x0068($s0)           ## 00000068
/* 00AFC 80A1800C 0C285DD2 */  jal     func_80A17748
/* 00B00 80A18010 E6000060 */  swc1    $f0, 0x0060($s0)           ## 00000060
/* 00B04 80A18014 3C198016 */  lui     $t9, 0x8016                ## $t9 = 80160000
/* 00B08 80A18018 8F39E664 */  lw      $t9, -0x199C($t9)          ## 8015E664
/* 00B0C 80A1801C 8FA80044 */  lw      $t0, 0x0044($sp)
/* 00B10 80A18020 5320001D */  beql    $t9, $zero, .L80A18098
/* 00B14 80A18024 C6000094 */  lwc1    $f0, 0x0094($s0)           ## 00000094
/* 00B18 80A18028 C6000094 */  lwc1    $f0, 0x0094($s0)           ## 00000094
/* 00B1C 80A1802C 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00B20 80A18030 44811000 */  mtc1    $at, $f2                   ## $f2 = 20.00
/* 00B24 80A18034 46000007 */  neg.s   $f0, $f0
/* 00B28 80A18038 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 00B2C 80A1803C 4602003C */  c.lt.s  $f0, $f2
/* 00B30 80A18040 00000000 */  nop
/* 00B34 80A18044 45020007 */  bc1fl   .L80A18064
/* 00B38 80A18048 44816000 */  mtc1    $at, $f12                  ## $f12 = 30.00
/* 00B3C 80A1804C 46001006 */  mov.s   $f0, $f2
/* 00B40 80A18050 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 00B44 80A18054 44811000 */  mtc1    $at, $f2                   ## $f2 = -10.00
/* 00B48 80A18058 10000027 */  beq     $zero, $zero, .L80A180F8
/* 00B4C 80A1805C C5080028 */  lwc1    $f8, 0x0028($t0)           ## 00000028
/* 00B50 80A18060 44816000 */  mtc1    $at, $f12                  ## $f12 = -10.00
.L80A18064:
/* 00B54 80A18064 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 00B58 80A18068 4600603C */  c.lt.s  $f12, $f0
/* 00B5C 80A1806C 00000000 */  nop
/* 00B60 80A18070 45020004 */  bc1fl   .L80A18084
/* 00B64 80A18074 46000086 */  mov.s   $f2, $f0
/* 00B68 80A18078 10000002 */  beq     $zero, $zero, .L80A18084
/* 00B6C 80A1807C 46006086 */  mov.s   $f2, $f12
/* 00B70 80A18080 46000086 */  mov.s   $f2, $f0
.L80A18084:
/* 00B74 80A18084 46001006 */  mov.s   $f0, $f2
/* 00B78 80A18088 44811000 */  mtc1    $at, $f2                   ## $f2 = -10.00
/* 00B7C 80A1808C 1000001A */  beq     $zero, $zero, .L80A180F8
/* 00B80 80A18090 C5080028 */  lwc1    $f8, 0x0028($t0)           ## 00000028
/* 00B84 80A18094 C6000094 */  lwc1    $f0, 0x0094($s0)           ## 00000094
.L80A18098:
/* 00B88 80A18098 3C0141C8 */  lui     $at, 0x41C8                ## $at = 41C80000
/* 00B8C 80A1809C 44811000 */  mtc1    $at, $f2                   ## $f2 = 25.00
/* 00B90 80A180A0 46000007 */  neg.s   $f0, $f0
/* 00B94 80A180A4 3C014234 */  lui     $at, 0x4234                ## $at = 42340000
/* 00B98 80A180A8 4602003C */  c.lt.s  $f0, $f2
/* 00B9C 80A180AC 00000000 */  nop
/* 00BA0 80A180B0 45020004 */  bc1fl   .L80A180C4
/* 00BA4 80A180B4 44816000 */  mtc1    $at, $f12                  ## $f12 = 45.00
/* 00BA8 80A180B8 1000000B */  beq     $zero, $zero, .L80A180E8
/* 00BAC 80A180BC 46001006 */  mov.s   $f0, $f2
/* 00BB0 80A180C0 44816000 */  mtc1    $at, $f12                  ## $f12 = 45.00
.L80A180C4:
/* 00BB4 80A180C4 00000000 */  nop
/* 00BB8 80A180C8 4600603C */  c.lt.s  $f12, $f0
/* 00BBC 80A180CC 00000000 */  nop
/* 00BC0 80A180D0 45020004 */  bc1fl   .L80A180E4
/* 00BC4 80A180D4 46000086 */  mov.s   $f2, $f0
/* 00BC8 80A180D8 10000002 */  beq     $zero, $zero, .L80A180E4
/* 00BCC 80A180DC 46006086 */  mov.s   $f2, $f12
/* 00BD0 80A180E0 46000086 */  mov.s   $f2, $f0
.L80A180E4:
/* 00BD4 80A180E4 46001006 */  mov.s   $f0, $f2
.L80A180E8:
/* 00BD8 80A180E8 3C01C28C */  lui     $at, 0xC28C                ## $at = C28C0000
/* 00BDC 80A180EC 44811000 */  mtc1    $at, $f2                   ## $f2 = -70.00
/* 00BE0 80A180F0 00000000 */  nop
/* 00BE4 80A180F4 C5080028 */  lwc1    $f8, 0x0028($t0)           ## 00000028
.L80A180F8:
/* 00BE8 80A180F8 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 00BEC 80A180FC 46004280 */  add.s   $f10, $f8, $f0
/* 00BF0 80A18100 E60A0028 */  swc1    $f10, 0x0028($s0)          ## 00000028
/* 00BF4 80A18104 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00BF8 80A18108 E7A20038 */  swc1    $f2, 0x0038($sp)
/* 00BFC 80A1810C 3C0180A2 */  lui     $at, %hi(D_80A1A578)       ## $at = 80A20000
/* 00C00 80A18110 C430A578 */  lwc1    $f16, %lo(D_80A1A578)($at)
/* 00C04 80A18114 C7A20038 */  lwc1    $f2, 0x0038($sp)
/* 00C08 80A18118 8FA90044 */  lw      $t1, 0x0044($sp)
/* 00C0C 80A1811C 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 00C10 80A18120 46101302 */  mul.s   $f12, $f2, $f16
/* 00C14 80A18124 C5240024 */  lwc1    $f4, 0x0024($t1)           ## 00000024
/* 00C18 80A18128 460C0482 */  mul.s   $f18, $f0, $f12
/* 00C1C 80A1812C 46049180 */  add.s   $f6, $f18, $f4
/* 00C20 80A18130 E6060024 */  swc1    $f6, 0x0024($s0)           ## 00000024
/* 00C24 80A18134 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00C28 80A18138 E7AC0030 */  swc1    $f12, 0x0030($sp)
/* 00C2C 80A1813C C7AC0030 */  lwc1    $f12, 0x0030($sp)
/* 00C30 80A18140 8FAA0044 */  lw      $t2, 0x0044($sp)
/* 00C34 80A18144 3C0C80A2 */  lui     $t4, %hi(func_80A193C4)    ## $t4 = 80A20000
/* 00C38 80A18148 460C0202 */  mul.s   $f8, $f0, $f12
/* 00C3C 80A1814C C54A002C */  lwc1    $f10, 0x002C($t2)          ## 0000002C
/* 00C40 80A18150 240BB320 */  addiu   $t3, $zero, 0xB320         ## $t3 = FFFFB320
/* 00C44 80A18154 258C93C4 */  addiu   $t4, $t4, %lo(func_80A193C4) ## $t4 = 80A193C4
/* 00C48 80A18158 A60B00B4 */  sh      $t3, 0x00B4($s0)           ## 000000B4
/* 00C4C 80A1815C AE0C0190 */  sw      $t4, 0x0190($s0)           ## 00000190
/* 00C50 80A18160 460A4400 */  add.s   $f16, $f8, $f10
/* 00C54 80A18164 E610002C */  swc1    $f16, 0x002C($s0)          ## 0000002C
/* 00C58 80A18168 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00C5C 80A1816C 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00C60 80A18170 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 00C64 80A18174 03E00008 */  jr      $ra
/* 00C68 80A18178 00000000 */  nop
