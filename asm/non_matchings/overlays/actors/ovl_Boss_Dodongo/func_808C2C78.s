.late_rodata
glabel D_808CA6B8
 .word 0xBDCCCCCD

.text
glabel func_808C2C78
/* 01AE8 808C2C78 27BDFF60 */  addiu   $sp, $sp, 0xFF60           ## $sp = FFFFFF60
/* 01AEC 808C2C7C AFB70068 */  sw      $s7, 0x0068($sp)
/* 01AF0 808C2C80 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01AF4 808C2C84 00A0B825 */  or      $s7, $a1, $zero            ## $s7 = 00000000
/* 01AF8 808C2C88 AFB10050 */  sw      $s1, 0x0050($sp)
/* 01AFC 808C2C8C 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 01B00 808C2C90 AFBF006C */  sw      $ra, 0x006C($sp)
/* 01B04 808C2C94 3C053D4C */  lui     $a1, 0x3D4C                ## $a1 = 3D4C0000
/* 01B08 808C2C98 3C073BA3 */  lui     $a3, 0x3BA3                ## $a3 = 3BA30000
/* 01B0C 808C2C9C AFB60064 */  sw      $s6, 0x0064($sp)
/* 01B10 808C2CA0 AFB50060 */  sw      $s5, 0x0060($sp)
/* 01B14 808C2CA4 AFB4005C */  sw      $s4, 0x005C($sp)
/* 01B18 808C2CA8 AFB30058 */  sw      $s3, 0x0058($sp)
/* 01B1C 808C2CAC AFB20054 */  sw      $s2, 0x0054($sp)
/* 01B20 808C2CB0 AFB0004C */  sw      $s0, 0x004C($sp)
/* 01B24 808C2CB4 F7BA0040 */  sdc1    $f26, 0x0040($sp)
/* 01B28 808C2CB8 F7B80038 */  sdc1    $f24, 0x0038($sp)
/* 01B2C 808C2CBC F7B60030 */  sdc1    $f22, 0x0030($sp)
/* 01B30 808C2CC0 F7B40028 */  sdc1    $f20, 0x0028($sp)
/* 01B34 808C2CC4 34E7D70A */  ori     $a3, $a3, 0xD70A           ## $a3 = 3BA3D70A
/* 01B38 808C2CC8 34A5CCCD */  ori     $a1, $a1, 0xCCCD           ## $a1 = 3D4CCCCD
/* 01B3C 808C2CCC 24840208 */  addiu   $a0, $a0, 0x0208           ## $a0 = 00000208
/* 01B40 808C2CD0 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01B44 808C2CD4 0C01E0C4 */  jal     Math_SmoothStepToF

/* 01B48 808C2CD8 E7A40010 */  swc1    $f4, 0x0010($sp)
/* 01B4C 808C2CDC 2624014C */  addiu   $a0, $s1, 0x014C           ## $a0 = 0000014C
/* 01B50 808C2CE0 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 01B54 808C2CE4 AFA40070 */  sw      $a0, 0x0070($sp)
/* 01B58 808C2CE8 862E01DA */  lh      $t6, 0x01DA($s1)           ## 000001DA
/* 01B5C 808C2CEC 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 01B60 808C2CF0 3C0142B4 */  lui     $at, 0x42B4                ## $at = 42B40000
/* 01B64 808C2CF4 15C00066 */  bne     $t6, $zero, .L808C2E90
/* 01B68 808C2CF8 3C16808D */  lui     $s6, %hi(D_808CA3DC)       ## $s6 = 808D0000
/* 01B6C 808C2CFC 4481D000 */  mtc1    $at, $f26                  ## $f26 = 90.00
/* 01B70 808C2D00 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 01B74 808C2D04 4481C000 */  mtc1    $at, $f24                  ## $f24 = 3.00
/* 01B78 808C2D08 3C01808D */  lui     $at, %hi(D_808CA6B8)       ## $at = 808D0000
/* 01B7C 808C2D0C C436A6B8 */  lwc1    $f22, %lo(D_808CA6B8)($at)
/* 01B80 808C2D10 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 01B84 808C2D14 3C15808D */  lui     $s5, %hi(D_808CA3D8)       ## $s5 = 808D0000
/* 01B88 808C2D18 4481A000 */  mtc1    $at, $f20                  ## $f20 = 20.00
/* 01B8C 808C2D1C 26B5A3D8 */  addiu   $s5, $s5, %lo(D_808CA3D8)  ## $s5 = 808CA3D8
/* 01B90 808C2D20 26D6A3DC */  addiu   $s6, $s6, %lo(D_808CA3DC)  ## $s6 = 808CA3DC
/* 01B94 808C2D24 27B40084 */  addiu   $s4, $sp, 0x0084           ## $s4 = FFFFFFE4
/* 01B98 808C2D28 27B30090 */  addiu   $s3, $sp, 0x0090           ## $s3 = FFFFFFF0
/* 01B9C 808C2D2C 27B20078 */  addiu   $s2, $sp, 0x0078           ## $s2 = FFFFFFD8
.L808C2D30:
/* 01BA0 808C2D30 0C00CFC8 */  jal     Rand_CenteredFloat

/* 01BA4 808C2D34 4600A306 */  mov.s   $f12, $f20
/* 01BA8 808C2D38 E7A00090 */  swc1    $f0, 0x0090($sp)
/* 01BAC 808C2D3C 0C00CFC8 */  jal     Rand_CenteredFloat

/* 01BB0 808C2D40 4600A306 */  mov.s   $f12, $f20
/* 01BB4 808C2D44 E7A00094 */  swc1    $f0, 0x0094($sp)
/* 01BB8 808C2D48 0C00CFC8 */  jal     Rand_CenteredFloat

/* 01BBC 808C2D4C 4600A306 */  mov.s   $f12, $f20
/* 01BC0 808C2D50 C7A60090 */  lwc1    $f6, 0x0090($sp)
/* 01BC4 808C2D54 C7AA0094 */  lwc1    $f10, 0x0094($sp)
/* 01BC8 808C2D58 E7A00098 */  swc1    $f0, 0x0098($sp)
/* 01BCC 808C2D5C 46163202 */  mul.s   $f8, $f6, $f22
/* 01BD0 808C2D60 240F01F4 */  addiu   $t7, $zero, 0x01F4         ## $t7 = 000001F4
/* 01BD4 808C2D64 2418000A */  addiu   $t8, $zero, 0x000A         ## $t8 = 0000000A
/* 01BD8 808C2D68 46165402 */  mul.s   $f16, $f10, $f22
/* 01BDC 808C2D6C 2419000A */  addiu   $t9, $zero, 0x000A         ## $t9 = 0000000A
/* 01BE0 808C2D70 02E02025 */  or      $a0, $s7, $zero            ## $a0 = 00000000
/* 01BE4 808C2D74 46160482 */  mul.s   $f18, $f0, $f22
/* 01BE8 808C2D78 E7A80084 */  swc1    $f8, 0x0084($sp)
/* 01BEC 808C2D7C 02402825 */  or      $a1, $s2, $zero            ## $a1 = FFFFFFD8
/* 01BF0 808C2D80 46183202 */  mul.s   $f8, $f6, $f24
/* 01BF4 808C2D84 E7B00088 */  swc1    $f16, 0x0088($sp)
/* 01BF8 808C2D88 02603025 */  or      $a2, $s3, $zero            ## $a2 = FFFFFFF0
/* 01BFC 808C2D8C 02803825 */  or      $a3, $s4, $zero            ## $a3 = FFFFFFE4
/* 01C00 808C2D90 E7B2008C */  swc1    $f18, 0x008C($sp)
/* 01C04 808C2D94 C6240024 */  lwc1    $f4, 0x0024($s1)           ## 00000024
/* 01C08 808C2D98 46082400 */  add.s   $f16, $f4, $f8
/* 01C0C 808C2D9C 46185102 */  mul.s   $f4, $f10, $f24
/* 01C10 808C2DA0 E7B00078 */  swc1    $f16, 0x0078($sp)
/* 01C14 808C2DA4 C6320028 */  lwc1    $f18, 0x0028($s1)          ## 00000028
/* 01C18 808C2DA8 461A9180 */  add.s   $f6, $f18, $f26
/* 01C1C 808C2DAC 46180482 */  mul.s   $f18, $f0, $f24
/* 01C20 808C2DB0 46043200 */  add.s   $f8, $f6, $f4
/* 01C24 808C2DB4 E7A8007C */  swc1    $f8, 0x007C($sp)
/* 01C28 808C2DB8 C630002C */  lwc1    $f16, 0x002C($s1)          ## 0000002C
/* 01C2C 808C2DBC AFB90020 */  sw      $t9, 0x0020($sp)
/* 01C30 808C2DC0 AFB8001C */  sw      $t8, 0x001C($sp)
/* 01C34 808C2DC4 46128280 */  add.s   $f10, $f16, $f18
/* 01C38 808C2DC8 AFAF0018 */  sw      $t7, 0x0018($sp)
/* 01C3C 808C2DCC AFB60014 */  sw      $s6, 0x0014($sp)
/* 01C40 808C2DD0 AFB50010 */  sw      $s5, 0x0010($sp)
/* 01C44 808C2DD4 0C00A0DB */  jal     func_8002836C
/* 01C48 808C2DD8 E7AA0080 */  swc1    $f10, 0x0080($sp)
/* 01C4C 808C2DDC 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 01C50 808C2DE0 00108400 */  sll     $s0, $s0, 16
/* 01C54 808C2DE4 00108403 */  sra     $s0, $s0, 16
/* 01C58 808C2DE8 2A01001E */  slti    $at, $s0, 0x001E
/* 01C5C 808C2DEC 1420FFD0 */  bne     $at, $zero, .L808C2D30
/* 01C60 808C2DF0 00000000 */  nop
/* 01C64 808C2DF4 3C100600 */  lui     $s0, %hi(D_06004E0C)                ## $s0 = 06000000
/* 01C68 808C2DF8 26104E0C */  addiu   $s0, $s0, %lo(D_06004E0C)           ## $s0 = 06004E0C
/* 01C6C 808C2DFC 0C028800 */  jal     SkelAnime_GetFrameCount

/* 01C70 808C2E00 02002025 */  or      $a0, $s0, $zero            ## $a0 = 06004E0C
/* 01C74 808C2E04 44823000 */  mtc1    $v0, $f6                   ## $f6 = 0.00
/* 01C78 808C2E08 3C01C0A0 */  lui     $at, 0xC0A0                ## $at = C0A00000
/* 01C7C 808C2E0C 44814000 */  mtc1    $at, $f8                   ## $f8 = -5.00
/* 01C80 808C2E10 46803120 */  cvt.s.w $f4, $f6
/* 01C84 808C2E14 24080002 */  addiu   $t0, $zero, 0x0002         ## $t0 = 00000002
/* 01C88 808C2E18 AFA80014 */  sw      $t0, 0x0014($sp)
/* 01C8C 808C2E1C 8FA40070 */  lw      $a0, 0x0070($sp)
/* 01C90 808C2E20 02002825 */  or      $a1, $s0, $zero            ## $a1 = 06004E0C
/* 01C94 808C2E24 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01C98 808C2E28 E7A40010 */  swc1    $f4, 0x0010($sp)
/* 01C9C 808C2E2C 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 01CA0 808C2E30 0C029468 */  jal     SkelAnime_ChangeAnim

/* 01CA4 808C2E34 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 01CA8 808C2E38 3C09808C */  lui     $t1, %hi(func_808C2ECC)    ## $t1 = 808C0000
/* 01CAC 808C2E3C 25292ECC */  addiu   $t1, $t1, %lo(func_808C2ECC) ## $t1 = 808C2ECC
/* 01CB0 808C2E40 AE290190 */  sw      $t1, 0x0190($s1)           ## 00000190
/* 01CB4 808C2E44 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01CB8 808C2E48 0C00BE0A */  jal     Audio_PlayActorSound2

/* 01CBC 808C2E4C 2405180E */  addiu   $a1, $zero, 0x180E         ## $a1 = 0000180E
/* 01CC0 808C2E50 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01CC4 808C2E54 0C00BE0A */  jal     Audio_PlayActorSound2

/* 01CC8 808C2E58 24053806 */  addiu   $a1, $zero, 0x3806         ## $a1 = 00003806
/* 01CCC 808C2E5C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01CD0 808C2E60 02E02825 */  or      $a1, $s7, $zero            ## $a1 = 00000000
/* 01CD4 808C2E64 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 01CD8 808C2E68 0C00CFA2 */  jal     func_80033E88
/* 01CDC 808C2E6C 2407000A */  addiu   $a3, $zero, 0x000A         ## $a3 = 0000000A
/* 01CE0 808C2E70 862A0194 */  lh      $t2, 0x0194($s1)           ## 00000194
/* 01CE4 808C2E74 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 01CE8 808C2E78 254BFFFE */  addiu   $t3, $t2, 0xFFFE           ## $t3 = FFFFFFFE
/* 01CEC 808C2E7C A62B0194 */  sh      $t3, 0x0194($s1)           ## 00000194
/* 01CF0 808C2E80 862C0194 */  lh      $t4, 0x0194($s1)           ## 00000194
/* 01CF4 808C2E84 5D800003 */  bgtzl   $t4, .L808C2E94
/* 01CF8 808C2E88 8FBF006C */  lw      $ra, 0x006C($sp)
/* 01CFC 808C2E8C A62D0194 */  sh      $t5, 0x0194($s1)           ## 00000194
.L808C2E90:
/* 01D00 808C2E90 8FBF006C */  lw      $ra, 0x006C($sp)
.L808C2E94:
/* 01D04 808C2E94 D7B40028 */  ldc1    $f20, 0x0028($sp)
/* 01D08 808C2E98 D7B60030 */  ldc1    $f22, 0x0030($sp)
/* 01D0C 808C2E9C D7B80038 */  ldc1    $f24, 0x0038($sp)
/* 01D10 808C2EA0 D7BA0040 */  ldc1    $f26, 0x0040($sp)
/* 01D14 808C2EA4 8FB0004C */  lw      $s0, 0x004C($sp)
/* 01D18 808C2EA8 8FB10050 */  lw      $s1, 0x0050($sp)
/* 01D1C 808C2EAC 8FB20054 */  lw      $s2, 0x0054($sp)
/* 01D20 808C2EB0 8FB30058 */  lw      $s3, 0x0058($sp)
/* 01D24 808C2EB4 8FB4005C */  lw      $s4, 0x005C($sp)
/* 01D28 808C2EB8 8FB50060 */  lw      $s5, 0x0060($sp)
/* 01D2C 808C2EBC 8FB60064 */  lw      $s6, 0x0064($sp)
/* 01D30 808C2EC0 8FB70068 */  lw      $s7, 0x0068($sp)
/* 01D34 808C2EC4 03E00008 */  jr      $ra
/* 01D38 808C2EC8 27BD00A0 */  addiu   $sp, $sp, 0x00A0           ## $sp = 00000000
