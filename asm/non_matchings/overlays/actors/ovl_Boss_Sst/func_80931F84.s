glabel func_80931F84
/* 059B4 80931F84 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 059B8 80931F88 AFB0001C */  sw      $s0, 0x001C($sp)
/* 059BC 80931F8C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 059C0 80931F90 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 059C4 80931F94 AFB10020 */  sw      $s1, 0x0020($sp)
/* 059C8 80931F98 AFA50034 */  sw      $a1, 0x0034($sp)
/* 059CC 80931F9C 86060198 */  lh      $a2, 0x0198($s0)           ## 00000198
/* 059D0 80931FA0 8CB11C44 */  lw      $s1, 0x1C44($a1)           ## 00001C44
/* 059D4 80931FA4 860501A2 */  lh      $a1, 0x01A2($s0)           ## 000001A2
/* 059D8 80931FA8 00C00821 */  addu    $at, $a2, $zero
/* 059DC 80931FAC 000630C0 */  sll     $a2, $a2,  3
/* 059E0 80931FB0 00C13023 */  subu    $a2, $a2, $at
/* 059E4 80931FB4 000630C0 */  sll     $a2, $a2,  3
/* 059E8 80931FB8 00C13021 */  addu    $a2, $a2, $at
/* 059EC 80931FBC 00063080 */  sll     $a2, $a2,  2
/* 059F0 80931FC0 24C601C8 */  addiu   $a2, $a2, 0x01C8           ## $a2 = 000001C8
/* 059F4 80931FC4 00063400 */  sll     $a2, $a2, 16
/* 059F8 80931FC8 00063403 */  sra     $a2, $a2, 16
/* 059FC 80931FCC 0C01DE2B */  jal     Math_ScaledStepToS

/* 05A00 80931FD0 248400B4 */  addiu   $a0, $a0, 0x00B4           ## $a0 = 000000B4
/* 05A04 80931FD4 50400027 */  beql    $v0, $zero, .L80932074
/* 05A08 80931FD8 860400B4 */  lh      $a0, 0x00B4($s0)           ## 000000B4
/* 05A0C 80931FDC 860F01A2 */  lh      $t7, 0x01A2($s0)           ## 000001A2
/* 05A10 80931FE0 51E00010 */  beql    $t7, $zero, .L80932024
/* 05A14 80931FE4 86020198 */  lh      $v0, 0x0198($s0)           ## 00000198
/* 05A18 80931FE8 86180198 */  lh      $t8, 0x0198($s0)           ## 00000198
/* 05A1C 80931FEC 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 05A20 80931FF0 A60001A2 */  sh      $zero, 0x01A2($s0)         ## 000001A2
/* 05A24 80931FF4 1701001E */  bne     $t8, $at, .L80932070
/* 05A28 80931FF8 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 05A2C 80931FFC 8619001C */  lh      $t9, 0x001C($s0)           ## 0000001C
/* 05A30 80932000 3C058093 */  lui     $a1, %hi(D_80937854)       ## $a1 = 80930000
/* 05A34 80932004 3C064080 */  lui     $a2, 0x4080                ## $a2 = 40800000
/* 05A38 80932008 00194080 */  sll     $t0, $t9,  2
/* 05A3C 8093200C 00A82821 */  addu    $a1, $a1, $t0
/* 05A40 80932010 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 05A44 80932014 8CA57854 */  lw      $a1, %lo(D_80937854)($a1)
/* 05A48 80932018 10000016 */  beq     $zero, $zero, .L80932074
/* 05A4C 8093201C 860400B4 */  lh      $a0, 0x00B4($s0)           ## 000000B4
/* 05A50 80932020 86020198 */  lh      $v0, 0x0198($s0)           ## 00000198
.L80932024:
/* 05A54 80932024 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 05A58 80932028 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05A5C 8093202C 54410007 */  bnel    $v0, $at, .L8093204C
/* 05A60 80932030 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 05A64 80932034 A62000B4 */  sh      $zero, 0x00B4($s1)         ## 000000B4
/* 05A68 80932038 0C24C11D */  jal     func_80930474
/* 05A6C 8093203C A62000B8 */  sh      $zero, 0x00B8($s1)         ## 000000B8
/* 05A70 80932040 10000098 */  beq     $zero, $zero, .L809322A4
/* 05A74 80932044 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 05A78 80932048 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
.L8093204C:
/* 05A7C 8093204C 14410004 */  bne     $v0, $at, .L80932060
/* 05A80 80932050 240AC000 */  addiu   $t2, $zero, 0xC000         ## $t2 = FFFFC000
/* 05A84 80932054 2409A000 */  addiu   $t1, $zero, 0xA000         ## $t1 = FFFFA000
/* 05A88 80932058 10000002 */  beq     $zero, $zero, .L80932064
/* 05A8C 8093205C A60901A2 */  sh      $t1, 0x01A2($s0)           ## 000001A2
.L80932060:
/* 05A90 80932060 A60A01A2 */  sh      $t2, 0x01A2($s0)           ## 000001A2
.L80932064:
/* 05A94 80932064 860B0198 */  lh      $t3, 0x0198($s0)           ## 00000198
/* 05A98 80932068 256C0001 */  addiu   $t4, $t3, 0x0001           ## $t4 = 00000001
/* 05A9C 8093206C A60C0198 */  sh      $t4, 0x0198($s0)           ## 00000198
.L80932070:
/* 05AA0 80932070 860400B4 */  lh      $a0, 0x00B4($s0)           ## 000000B4
.L80932074:
/* 05AA4 80932074 24844000 */  addiu   $a0, $a0, 0x4000           ## $a0 = 00004000
/* 05AA8 80932078 00042400 */  sll     $a0, $a0, 16
/* 05AAC 8093207C 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 05AB0 80932080 00042403 */  sra     $a0, $a0, 16
/* 05AB4 80932084 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 05AB8 80932088 44812000 */  mtc1    $at, $f4                   ## $f4 = 200.00
/* 05ABC 8093208C C60803CC */  lwc1    $f8, 0x03CC($s0)           ## 000003CC
/* 05AC0 80932090 860400B4 */  lh      $a0, 0x00B4($s0)           ## 000000B4
/* 05AC4 80932094 46040182 */  mul.s   $f6, $f0, $f4
/* 05AC8 80932098 24844000 */  addiu   $a0, $a0, 0x4000           ## $a0 = 00004000
/* 05ACC 8093209C 00042400 */  sll     $a0, $a0, 16
/* 05AD0 809320A0 00042403 */  sra     $a0, $a0, 16
/* 05AD4 809320A4 46083280 */  add.s   $f10, $f6, $f8
/* 05AD8 809320A8 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 05ADC 809320AC E60A0028 */  swc1    $f10, 0x0028($s0)          ## 00000028
/* 05AE0 809320B0 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 05AE4 809320B4 44818000 */  mtc1    $at, $f16                  ## $f16 = 200.00
/* 05AE8 809320B8 00000000 */  nop
/* 05AEC 809320BC 46100482 */  mul.s   $f18, $f0, $f16
/* 05AF0 809320C0 E7B20028 */  swc1    $f18, 0x0028($sp)
/* 05AF4 809320C4 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 05AF8 809320C8 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 05AFC 809320CC C7A40028 */  lwc1    $f4, 0x0028($sp)
/* 05B00 809320D0 C60803C8 */  lwc1    $f8, 0x03C8($s0)           ## 000003C8
/* 05B04 809320D4 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 05B08 809320D8 46040182 */  mul.s   $f6, $f0, $f4
/* 05B0C 809320DC 46083280 */  add.s   $f10, $f6, $f8
/* 05B10 809320E0 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 05B14 809320E4 E60A0024 */  swc1    $f10, 0x0024($s0)          ## 00000024
/* 05B18 809320E8 C7B00028 */  lwc1    $f16, 0x0028($sp)
/* 05B1C 809320EC C60403D0 */  lwc1    $f4, 0x03D0($s0)           ## 000003D0
/* 05B20 809320F0 860D0198 */  lh      $t5, 0x0198($s0)           ## 00000198
/* 05B24 809320F4 46100482 */  mul.s   $f18, $f0, $f16
/* 05B28 809320F8 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 05B2C 809320FC 260400B8 */  addiu   $a0, $s0, 0x00B8           ## $a0 = 000000B8
/* 05B30 80932100 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 05B34 80932104 46049180 */  add.s   $f6, $f18, $f4
/* 05B38 80932108 11A10009 */  beq     $t5, $at, .L80932130
/* 05B3C 8093210C E606002C */  swc1    $f6, 0x002C($s0)           ## 0000002C
/* 05B40 80932110 860E00B4 */  lh      $t6, 0x00B4($s0)           ## 000000B4
/* 05B44 80932114 82180194 */  lb      $t8, 0x0194($s0)           ## 00000194
/* 05B48 80932118 25CF4000 */  addiu   $t7, $t6, 0x4000           ## $t7 = 00004000
/* 05B4C 8093211C 01F80019 */  multu   $t7, $t8
/* 05B50 80932120 0000C812 */  mflo    $t9
/* 05B54 80932124 A61900B8 */  sh      $t9, 0x00B8($s0)           ## 000000B8
/* 05B58 80932128 10000004 */  beq     $zero, $zero, .L8093213C
/* 05B5C 8093212C 8E280680 */  lw      $t0, 0x0680($s1)           ## 00000680
.L80932130:
/* 05B60 80932130 0C01DE2B */  jal     Math_ScaledStepToS

/* 05B64 80932134 24060800 */  addiu   $a2, $zero, 0x0800         ## $a2 = 00000800
/* 05B68 80932138 8E280680 */  lw      $t0, 0x0680($s1)           ## 00000680
.L8093213C:
/* 05B6C 8093213C 262400B4 */  addiu   $a0, $s1, 0x00B4           ## $a0 = 000000B4
/* 05B70 80932140 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 05B74 80932144 31090080 */  andi    $t1, $t0, 0x0080           ## $t1 = 00000000
/* 05B78 80932148 1120000E */  beq     $t1, $zero, .L80932184
/* 05B7C 8093214C 00000000 */  nop
/* 05B80 80932150 A6200850 */  sh      $zero, 0x0850($s1)         ## 00000850
/* 05B84 80932154 26240024 */  addiu   $a0, $s1, 0x0024           ## $a0 = 00000024
/* 05B88 80932158 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 05B8C 8093215C 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 05B90 80932160 860A00B4 */  lh      $t2, 0x00B4($s0)           ## 000000B4
/* 05B94 80932164 A62A00B4 */  sh      $t2, 0x00B4($s1)           ## 000000B4
/* 05B98 80932168 820B0194 */  lb      $t3, 0x0194($s0)           ## 00000194
/* 05B9C 8093216C 860D00B8 */  lh      $t5, 0x00B8($s0)           ## 000000B8
/* 05BA0 80932170 000B0823 */  subu    $at, $zero, $t3
/* 05BA4 80932174 00016380 */  sll     $t4, $at, 14
/* 05BA8 80932178 018D7021 */  addu    $t6, $t4, $t5
/* 05BAC 8093217C 10000017 */  beq     $zero, $zero, .L809321DC
/* 05BB0 80932180 A62E00B8 */  sh      $t6, 0x00B8($s1)           ## 000000B8
.L80932184:
/* 05BB4 80932184 0C01DE2B */  jal     Math_ScaledStepToS

/* 05BB8 80932188 24060600 */  addiu   $a2, $zero, 0x0600         ## $a2 = 00000600
/* 05BBC 8093218C 262400B8 */  addiu   $a0, $s1, 0x00B8           ## $a0 = 000000B8
/* 05BC0 80932190 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 05BC4 80932194 0C01DE2B */  jal     Math_ScaledStepToS

/* 05BC8 80932198 24060600 */  addiu   $a2, $zero, 0x0600         ## $a2 = 00000600
/* 05BCC 8093219C 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 05BD0 809321A0 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 05BD4 809321A4 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 05BD8 809321A8 44815000 */  mtc1    $at, $f10                  ## $f10 = 20.00
/* 05BDC 809321AC C6280024 */  lwc1    $f8, 0x0024($s1)           ## 00000024
/* 05BE0 809321B0 46005402 */  mul.s   $f16, $f10, $f0
/* 05BE4 809321B4 46104480 */  add.s   $f18, $f8, $f16
/* 05BE8 809321B8 E6320024 */  swc1    $f18, 0x0024($s1)          ## 00000024
/* 05BEC 809321BC 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 05BF0 809321C0 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 05BF4 809321C4 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 05BF8 809321C8 44813000 */  mtc1    $at, $f6                   ## $f6 = 20.00
/* 05BFC 809321CC C624002C */  lwc1    $f4, 0x002C($s1)           ## 0000002C
/* 05C00 809321D0 46003282 */  mul.s   $f10, $f6, $f0
/* 05C04 809321D4 460A2200 */  add.s   $f8, $f4, $f10
/* 05C08 809321D8 E628002C */  swc1    $f8, 0x002C($s1)           ## 0000002C
.L809321DC:
/* 05C0C 809321DC 860F0198 */  lh      $t7, 0x0198($s0)           ## 00000198
/* 05C10 809321E0 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 05C14 809321E4 55E1002C */  bnel    $t7, $at, .L80932298
/* 05C18 809321E8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05C1C 809321EC 861801A2 */  lh      $t8, 0x01A2($s0)           ## 000001A2
/* 05C20 809321F0 57000029 */  bnel    $t8, $zero, .L80932298
/* 05C24 809321F4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05C28 809321F8 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 05C2C 809321FC 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 05C30 80932200 50400025 */  beql    $v0, $zero, .L80932298
/* 05C34 80932204 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05C38 80932208 8E390680 */  lw      $t9, 0x0680($s1)           ## 00000680
/* 05C3C 8093220C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05C40 80932210 8FA50034 */  lw      $a1, 0x0034($sp)
/* 05C44 80932214 33280080 */  andi    $t0, $t9, 0x0080           ## $t0 = 00000000
/* 05C48 80932218 5100001F */  beql    $t0, $zero, .L80932298
/* 05C4C 8093221C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05C50 80932220 0C24CE5E */  jal     func_80933978
/* 05C54 80932224 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 05C58 80932228 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 05C5C 8093222C 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 05C60 80932230 3C01428C */  lui     $at, 0x428C                ## $at = 428C0000
/* 05C64 80932234 44819000 */  mtc1    $at, $f18                  ## $f18 = 70.00
/* 05C68 80932238 C6300024 */  lwc1    $f16, 0x0024($s1)          ## 00000024
/* 05C6C 8093223C 46009182 */  mul.s   $f6, $f18, $f0
/* 05C70 80932240 46068100 */  add.s   $f4, $f16, $f6
/* 05C74 80932244 E6240024 */  swc1    $f4, 0x0024($s1)           ## 00000024
/* 05C78 80932248 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 05C7C 8093224C 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 05C80 80932250 3C01428C */  lui     $at, 0x428C                ## $at = 428C0000
/* 05C84 80932254 44814000 */  mtc1    $at, $f8                   ## $f8 = 70.00
/* 05C88 80932258 C62A002C */  lwc1    $f10, 0x002C($s1)          ## 0000002C
/* 05C8C 8093225C 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 05C90 80932260 46004482 */  mul.s   $f18, $f8, $f0
/* 05C94 80932264 44813000 */  mtc1    $at, $f6                   ## $f6 = 2.00
/* 05C98 80932268 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 05C9C 8093226C 3C064170 */  lui     $a2, 0x4170                ## $a2 = 41700000
/* 05CA0 80932270 46125400 */  add.s   $f16, $f10, $f18
/* 05CA4 80932274 E630002C */  swc1    $f16, 0x002C($s1)          ## 0000002C
/* 05CA8 80932278 860700B6 */  lh      $a3, 0x00B6($s0)           ## 000000B6
/* 05CAC 8093227C 8FA40034 */  lw      $a0, 0x0034($sp)
/* 05CB0 80932280 0C00BDC7 */  jal     func_8002F71C
/* 05CB4 80932284 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 05CB8 80932288 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 05CBC 8093228C 0C00BDF7 */  jal     func_8002F7DC
/* 05CC0 80932290 2405083E */  addiu   $a1, $zero, 0x083E         ## $a1 = 0000083E
/* 05CC4 80932294 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80932298:
/* 05CC8 80932298 0C00BE5D */  jal     func_8002F974
/* 05CCC 8093229C 24053167 */  addiu   $a1, $zero, 0x3167         ## $a1 = 00003167
/* 05CD0 809322A0 8FBF0024 */  lw      $ra, 0x0024($sp)
.L809322A4:
/* 05CD4 809322A4 8FB0001C */  lw      $s0, 0x001C($sp)
/* 05CD8 809322A8 8FB10020 */  lw      $s1, 0x0020($sp)
/* 05CDC 809322AC 03E00008 */  jr      $ra
/* 05CE0 809322B0 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
