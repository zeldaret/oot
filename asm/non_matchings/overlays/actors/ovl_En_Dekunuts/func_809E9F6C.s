glabel func_809E9F6C
/* 00A0C 809E9F6C 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 00A10 809E9F70 AFB00030 */  sw      $s0, 0x0030($sp)
/* 00A14 809E9F74 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00A18 809E9F78 AFBF0034 */  sw      $ra, 0x0034($sp)
/* 00A1C 809E9F7C AFA5004C */  sw      $a1, 0x004C($sp)
/* 00A20 809E9F80 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 00A24 809E9F84 248400B6 */  addiu   $a0, $a0, 0x00B6           ## $a0 = 000000B6
/* 00A28 809E9F88 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 00A2C 809E9F8C 0C01E1EF */  jal     Math_ApproachS

/* 00A30 809E9F90 24070E38 */  addiu   $a3, $zero, 0x0E38         ## $a3 = 00000E38
/* 00A34 809E9F94 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00A38 809E9F98 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 00A3C 809E9F9C AFA40038 */  sw      $a0, 0x0038($sp)
/* 00A40 809E9FA0 10400005 */  beq     $v0, $zero, .L809E9FB8
/* 00A44 809E9FA4 8FA40038 */  lw      $a0, 0x0038($sp)
/* 00A48 809E9FA8 0C27A600 */  jal     func_809E9800
/* 00A4C 809E9FAC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A50 809E9FB0 10000040 */  beq     $zero, $zero, .L809EA0B4
/* 00A54 809E9FB4 8FBF0034 */  lw      $ra, 0x0034($sp)
.L809E9FB8:
/* 00A58 809E9FB8 0C0295B2 */  jal     func_800A56C8
/* 00A5C 809E9FBC 3C0540C0 */  lui     $a1, 0x40C0                ## $a1 = 40C00000
/* 00A60 809E9FC0 5040002B */  beql    $v0, $zero, .L809EA070
/* 00A64 809E9FC4 86190196 */  lh      $t9, 0x0196($s0)           ## 00000196
/* 00A68 809E9FC8 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 00A6C 809E9FCC 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 00A70 809E9FD0 3C0141B8 */  lui     $at, 0x41B8                ## $at = 41B80000
/* 00A74 809E9FD4 44812000 */  mtc1    $at, $f4                   ## $f4 = 23.00
/* 00A78 809E9FD8 C6080024 */  lwc1    $f8, 0x0024($s0)           ## 00000024
/* 00A7C 809E9FDC 3C014140 */  lui     $at, 0x4140                ## $at = 41400000
/* 00A80 809E9FE0 46040182 */  mul.s   $f6, $f0, $f4
/* 00A84 809E9FE4 44819000 */  mtc1    $at, $f18                  ## $f18 = 12.00
/* 00A88 809E9FE8 46083280 */  add.s   $f10, $f6, $f8
/* 00A8C 809E9FEC E7AA003C */  swc1    $f10, 0x003C($sp)
/* 00A90 809E9FF0 C6100028 */  lwc1    $f16, 0x0028($s0)          ## 00000028
/* 00A94 809E9FF4 46128100 */  add.s   $f4, $f16, $f18
/* 00A98 809E9FF8 E7A40040 */  swc1    $f4, 0x0040($sp)
/* 00A9C 809E9FFC 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 00AA0 809EA000 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 00AA4 809EA004 3C0141B8 */  lui     $at, 0x41B8                ## $at = 41B80000
/* 00AA8 809EA008 44813000 */  mtc1    $at, $f6                   ## $f6 = 23.00
/* 00AAC 809EA00C C60A002C */  lwc1    $f10, 0x002C($s0)          ## 0000002C
/* 00AB0 809EA010 C7B00040 */  lwc1    $f16, 0x0040($sp)
/* 00AB4 809EA014 46060202 */  mul.s   $f8, $f0, $f6
/* 00AB8 809EA018 8FA5004C */  lw      $a1, 0x004C($sp)
/* 00ABC 809EA01C E7B00010 */  swc1    $f16, 0x0010($sp)
/* 00AC0 809EA020 24060193 */  addiu   $a2, $zero, 0x0193         ## $a2 = 00000193
/* 00AC4 809EA024 8FA7003C */  lw      $a3, 0x003C($sp)
/* 00AC8 809EA028 24A41C24 */  addiu   $a0, $a1, 0x1C24           ## $a0 = 00001C24
/* 00ACC 809EA02C 460A4080 */  add.s   $f2, $f8, $f10
/* 00AD0 809EA030 E7A20014 */  swc1    $f2, 0x0014($sp)
/* 00AD4 809EA034 860E00B4 */  lh      $t6, 0x00B4($s0)           ## 000000B4
/* 00AD8 809EA038 AFAE0018 */  sw      $t6, 0x0018($sp)
/* 00ADC 809EA03C 860F00B6 */  lh      $t7, 0x00B6($s0)           ## 000000B6
/* 00AE0 809EA040 AFAF001C */  sw      $t7, 0x001C($sp)
/* 00AE4 809EA044 861800B8 */  lh      $t8, 0x00B8($s0)           ## 000000B8
/* 00AE8 809EA048 AFA00024 */  sw      $zero, 0x0024($sp)
/* 00AEC 809EA04C 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 00AF0 809EA050 AFB80020 */  sw      $t8, 0x0020($sp)
/* 00AF4 809EA054 10400016 */  beq     $v0, $zero, .L809EA0B0
/* 00AF8 809EA058 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00AFC 809EA05C 0C00BE0A */  jal     Audio_PlayActorSound2

/* 00B00 809EA060 2405387E */  addiu   $a1, $zero, 0x387E         ## $a1 = 0000387E
/* 00B04 809EA064 10000013 */  beq     $zero, $zero, .L809EA0B4
/* 00B08 809EA068 8FBF0034 */  lw      $ra, 0x0034($sp)
/* 00B0C 809EA06C 86190196 */  lh      $t9, 0x0196($s0)           ## 00000196
.L809EA070:
/* 00B10 809EA070 8FA40038 */  lw      $a0, 0x0038($sp)
/* 00B14 809EA074 2B210002 */  slti    $at, $t9, 0x0002
/* 00B18 809EA078 5420000E */  bnel    $at, $zero, .L809EA0B4
/* 00B1C 809EA07C 8FBF0034 */  lw      $ra, 0x0034($sp)
/* 00B20 809EA080 0C0295B2 */  jal     func_800A56C8
/* 00B24 809EA084 3C054140 */  lui     $a1, 0x4140                ## $a1 = 41400000
/* 00B28 809EA088 10400009 */  beq     $v0, $zero, .L809EA0B0
/* 00B2C 809EA08C 8FA40038 */  lw      $a0, 0x0038($sp)
/* 00B30 809EA090 3C050600 */  lui     $a1, %hi(D_060001C4)                ## $a1 = 06000000
/* 00B34 809EA094 24A501C4 */  addiu   $a1, $a1, %lo(D_060001C4)           ## $a1 = 060001C4
/* 00B38 809EA098 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 00B3C 809EA09C 3C06C040 */  lui     $a2, 0xC040                ## $a2 = C0400000
/* 00B40 809EA0A0 86020196 */  lh      $v0, 0x0196($s0)           ## 00000196
/* 00B44 809EA0A4 10400002 */  beq     $v0, $zero, .L809EA0B0
/* 00B48 809EA0A8 2448FFFF */  addiu   $t0, $v0, 0xFFFF           ## $t0 = FFFFFFFF
/* 00B4C 809EA0AC A6080196 */  sh      $t0, 0x0196($s0)           ## 00000196
.L809EA0B0:
/* 00B50 809EA0B0 8FBF0034 */  lw      $ra, 0x0034($sp)
.L809EA0B4:
/* 00B54 809EA0B4 8FB00030 */  lw      $s0, 0x0030($sp)
/* 00B58 809EA0B8 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 00B5C 809EA0BC 03E00008 */  jr      $ra
/* 00B60 809EA0C0 00000000 */  nop
