.rdata
glabel D_80AEA838
    .asciz "../z_en_rr.c"
    .balign 4

glabel D_80AEA848
    .asciz "../z_en_rr.c"
    .balign 4

glabel D_80AEA858
    .asciz "../z_en_rr.c"
    .balign 4

glabel D_80AEA868
    .asciz "../z_en_rr.c"
    .balign 4

.text
glabel EnRr_Draw
/* 01D94 80AEA1D4 27BDFF38 */  addiu   $sp, $sp, 0xFF38           ## $sp = FFFFFF38
/* 01D98 80AEA1D8 AFB30054 */  sw      $s3, 0x0054($sp)
/* 01D9C 80AEA1DC 00809825 */  or      $s3, $a0, $zero            ## $s3 = 00000000
/* 01DA0 80AEA1E0 AFBF005C */  sw      $ra, 0x005C($sp)
/* 01DA4 80AEA1E4 AFB40058 */  sw      $s4, 0x0058($sp)
/* 01DA8 80AEA1E8 AFB20050 */  sw      $s2, 0x0050($sp)
/* 01DAC 80AEA1EC AFB1004C */  sw      $s1, 0x004C($sp)
/* 01DB0 80AEA1F0 AFB00048 */  sw      $s0, 0x0048($sp)
/* 01DB4 80AEA1F4 F7B60040 */  sdc1    $f22, 0x0040($sp)
/* 01DB8 80AEA1F8 F7B40038 */  sdc1    $f20, 0x0038($sp)
/* 01DBC 80AEA1FC AFA500CC */  sw      $a1, 0x00CC($sp)
/* 01DC0 80AEA200 8CA40000 */  lw      $a0, 0x0000($a1)           ## 00000000
/* 01DC4 80AEA204 0C031A73 */  jal     Graph_Alloc

/* 01DC8 80AEA208 24050100 */  addiu   $a1, $zero, 0x0100         ## $a1 = 00000100
/* 01DCC 80AEA20C 8FAF00CC */  lw      $t7, 0x00CC($sp)
/* 01DD0 80AEA210 3C0680AF */  lui     $a2, %hi(D_80AEA838)       ## $a2 = 80AF0000
/* 01DD4 80AEA214 0040A025 */  or      $s4, $v0, $zero            ## $s4 = 00000000
/* 01DD8 80AEA218 8DE50000 */  lw      $a1, 0x0000($t7)           ## 00000000
/* 01DDC 80AEA21C 24C6A838 */  addiu   $a2, $a2, %lo(D_80AEA838)  ## $a2 = 80AEA838
/* 01DE0 80AEA220 27A40098 */  addiu   $a0, $sp, 0x0098           ## $a0 = FFFFFFD0
/* 01DE4 80AEA224 240705C6 */  addiu   $a3, $zero, 0x05C6         ## $a3 = 000005C6
/* 01DE8 80AEA228 0C031AB1 */  jal     Graph_OpenDisps
/* 01DEC 80AEA22C AFA500A8 */  sw      $a1, 0x00A8($sp)
/* 01DF0 80AEA230 8FB800CC */  lw      $t8, 0x00CC($sp)
/* 01DF4 80AEA234 0C024F61 */  jal     func_80093D84
/* 01DF8 80AEA238 8F040000 */  lw      $a0, 0x0000($t8)           ## 00000000
/* 01DFC 80AEA23C 8FA900A8 */  lw      $t1, 0x00A8($sp)
/* 01E00 80AEA240 3C0ADB06 */  lui     $t2, 0xDB06                ## $t2 = DB060000
/* 01E04 80AEA244 354A0030 */  ori     $t2, $t2, 0x0030           ## $t2 = DB060030
/* 01E08 80AEA248 8D2202D0 */  lw      $v0, 0x02D0($t1)           ## 000002D0
/* 01E0C 80AEA24C 3C0CDB06 */  lui     $t4, 0xDB06                ## $t4 = DB060000
/* 01E10 80AEA250 358C0020 */  ori     $t4, $t4, 0x0020           ## $t4 = DB060020
/* 01E14 80AEA254 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 01E18 80AEA258 AD3902D0 */  sw      $t9, 0x02D0($t1)           ## 000002D0
/* 01E1C 80AEA25C AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 01E20 80AEA260 AC540004 */  sw      $s4, 0x0004($v0)           ## 00000004
/* 01E24 80AEA264 8D2202D0 */  lw      $v0, 0x02D0($t1)           ## 000002D0
/* 01E28 80AEA268 3007003F */  andi    $a3, $zero, 0x003F         ## $a3 = 00000000
/* 01E2C 80AEA26C 240E0020 */  addiu   $t6, $zero, 0x0020         ## $t6 = 00000020
/* 01E30 80AEA270 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 01E34 80AEA274 AD2B02D0 */  sw      $t3, 0x02D0($t1)           ## 000002D0
/* 01E38 80AEA278 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 01E3C 80AEA27C 8FAD00CC */  lw      $t5, 0x00CC($sp)
/* 01E40 80AEA280 866301EC */  lh      $v1, 0x01EC($s3)           ## 000001EC
/* 01E44 80AEA284 240C0010 */  addiu   $t4, $zero, 0x0010         ## $t4 = 00000010
/* 01E48 80AEA288 8DA40000 */  lw      $a0, 0x0000($t5)           ## 00000000
/* 01E4C 80AEA28C 00030823 */  subu    $at, $zero, $v1
/* 01E50 80AEA290 0001C880 */  sll     $t9, $at,  2
/* 01E54 80AEA294 0321C823 */  subu    $t9, $t9, $at
/* 01E58 80AEA298 0019C840 */  sll     $t9, $t9,  1
/* 01E5C 80AEA29C 332A007F */  andi    $t2, $t9, 0x007F           ## $t2 = 00000008
/* 01E60 80AEA2A0 240B0020 */  addiu   $t3, $zero, 0x0020         ## $t3 = 00000020
/* 01E64 80AEA2A4 240F0010 */  addiu   $t7, $zero, 0x0010         ## $t7 = 00000010
/* 01E68 80AEA2A8 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 01E6C 80AEA2AC AFB80018 */  sw      $t8, 0x0018($sp)
/* 01E70 80AEA2B0 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 01E74 80AEA2B4 AFAB0024 */  sw      $t3, 0x0024($sp)
/* 01E78 80AEA2B8 AFAA0020 */  sw      $t2, 0x0020($sp)
/* 01E7C 80AEA2BC AFAC0028 */  sw      $t4, 0x0028($sp)
/* 01E80 80AEA2C0 AFA7001C */  sw      $a3, 0x001C($sp)
/* 01E84 80AEA2C4 AFAE0010 */  sw      $t6, 0x0010($sp)
/* 01E88 80AEA2C8 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 01E8C 80AEA2CC 00004025 */  or      $t0, $zero, $zero          ## $t0 = 00000000
/* 01E90 80AEA2D0 3006007F */  andi    $a2, $zero, 0x007F         ## $a2 = 00000000
/* 01E94 80AEA2D4 0C0253D0 */  jal     Gfx_TwoTexScroll
/* 01E98 80AEA2D8 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 01E9C 80AEA2DC 0C034213 */  jal     Matrix_Push
/* 01EA0 80AEA2E0 AE020004 */  sw      $v0, 0x0004($s0)           ## 00000004
/* 01EA4 80AEA2E4 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01EA8 80AEA2E8 4481B000 */  mtc1    $at, $f22                  ## $f22 = 1.00
/* 01EAC 80AEA2EC C6660244 */  lwc1    $f6, 0x0244($s3)           ## 00000244
/* 01EB0 80AEA2F0 C664022C */  lwc1    $f4, 0x022C($s3)           ## 0000022C
/* 01EB4 80AEA2F4 C6700248 */  lwc1    $f16, 0x0248($s3)          ## 00000248
/* 01EB8 80AEA2F8 4606B200 */  add.s   $f8, $f22, $f6
/* 01EBC 80AEA2FC C66A0230 */  lwc1    $f10, 0x0230($s3)          ## 00000230
/* 01EC0 80AEA300 C6660234 */  lwc1    $f6, 0x0234($s3)           ## 00000234
/* 01EC4 80AEA304 4610B480 */  add.s   $f18, $f22, $f16
/* 01EC8 80AEA308 46082302 */  mul.s   $f12, $f4, $f8
/* 01ECC 80AEA30C C664024C */  lwc1    $f4, 0x024C($s3)           ## 0000024C
/* 01ED0 80AEA310 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 01ED4 80AEA314 46125382 */  mul.s   $f14, $f10, $f18
/* 01ED8 80AEA318 4604B200 */  add.s   $f8, $f22, $f4
/* 01EDC 80AEA31C 46083402 */  mul.s   $f16, $f6, $f8
/* 01EE0 80AEA320 44068000 */  mfc1    $a2, $f16
/* 01EE4 80AEA324 0C0342A3 */  jal     Matrix_Scale
/* 01EE8 80AEA328 00000000 */  nop
/* 01EEC 80AEA32C 8FA300A8 */  lw      $v1, 0x00A8($sp)
/* 01EF0 80AEA330 3C0EDA38 */  lui     $t6, 0xDA38                ## $t6 = DA380000
/* 01EF4 80AEA334 35CE0003 */  ori     $t6, $t6, 0x0003           ## $t6 = DA380003
/* 01EF8 80AEA338 8C6202D0 */  lw      $v0, 0x02D0($v1)           ## 000002D0
/* 01EFC 80AEA33C 3C0580AF */  lui     $a1, %hi(D_80AEA848)       ## $a1 = 80AF0000
/* 01F00 80AEA340 24A5A848 */  addiu   $a1, $a1, %lo(D_80AEA848)  ## $a1 = 80AEA848
/* 01F04 80AEA344 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 01F08 80AEA348 AC6D02D0 */  sw      $t5, 0x02D0($v1)           ## 000002D0
/* 01F0C 80AEA34C AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 01F10 80AEA350 8FAF00CC */  lw      $t7, 0x00CC($sp)
/* 01F14 80AEA354 240605DD */  addiu   $a2, $zero, 0x05DD         ## $a2 = 000005DD
/* 01F18 80AEA358 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 01F1C 80AEA35C 0C0346A2 */  jal     Matrix_NewMtx
/* 01F20 80AEA360 8DE40000 */  lw      $a0, 0x0000($t7)           ## 00000000
/* 01F24 80AEA364 0C034221 */  jal     Matrix_Pull
/* 01F28 80AEA368 AE020004 */  sw      $v0, 0x0004($s0)           ## 00000004
/* 01F2C 80AEA36C 4480A000 */  mtc1    $zero, $f20                ## $f20 = 0.00
/* 01F30 80AEA370 2411000C */  addiu   $s1, $zero, 0x000C         ## $s1 = 0000000C
/* 01F34 80AEA374 26720394 */  addiu   $s2, $s3, 0x0394           ## $s2 = 00000394
/* 01F38 80AEA378 26700040 */  addiu   $s0, $s3, 0x0040           ## $s0 = 00000040
/* 01F3C 80AEA37C E7B400B8 */  swc1    $f20, 0x00B8($sp)
/* 01F40 80AEA380 E7B400BC */  swc1    $f20, 0x00BC($sp)
/* 01F44 80AEA384 E7B400C0 */  swc1    $f20, 0x00C0($sp)
.L80AEA388:
/* 01F48 80AEA388 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 01F4C 80AEA38C 44819000 */  mtc1    $at, $f18                  ## $f18 = 1000.00
/* 01F50 80AEA390 C60A0224 */  lwc1    $f10, 0x0224($s0)          ## 00000264
/* 01F54 80AEA394 4406A000 */  mfc1    $a2, $f20
/* 01F58 80AEA398 4600A306 */  mov.s   $f12, $f20
/* 01F5C 80AEA39C 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 01F60 80AEA3A0 0C034261 */  jal     Matrix_Translate
/* 01F64 80AEA3A4 46125380 */  add.s   $f14, $f10, $f18
/* 01F68 80AEA3A8 8604025C */  lh      $a0, 0x025C($s0)           ## 0000029C
/* 01F6C 80AEA3AC 8605025E */  lh      $a1, 0x025E($s0)           ## 0000029E
/* 01F70 80AEA3B0 86060260 */  lh      $a2, 0x0260($s0)           ## 000002A0
/* 01F74 80AEA3B4 0C034421 */  jal     Matrix_RotateRPY
/* 01F78 80AEA3B8 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 01F7C 80AEA3BC 0C034213 */  jal     Matrix_Push
/* 01F80 80AEA3C0 00000000 */  nop
/* 01F84 80AEA3C4 C6060244 */  lwc1    $f6, 0x0244($s0)           ## 00000284
/* 01F88 80AEA3C8 C604022C */  lwc1    $f4, 0x022C($s0)           ## 0000026C
/* 01F8C 80AEA3CC C60A0248 */  lwc1    $f10, 0x0248($s0)          ## 00000288
/* 01F90 80AEA3D0 4606B200 */  add.s   $f8, $f22, $f6
/* 01F94 80AEA3D4 C6100230 */  lwc1    $f16, 0x0230($s0)          ## 00000270
/* 01F98 80AEA3D8 C6060234 */  lwc1    $f6, 0x0234($s0)           ## 00000274
/* 01F9C 80AEA3DC 460AB480 */  add.s   $f18, $f22, $f10
/* 01FA0 80AEA3E0 46082302 */  mul.s   $f12, $f4, $f8
/* 01FA4 80AEA3E4 C604024C */  lwc1    $f4, 0x024C($s0)           ## 0000028C
/* 01FA8 80AEA3E8 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 01FAC 80AEA3EC 46128382 */  mul.s   $f14, $f16, $f18
/* 01FB0 80AEA3F0 4604B200 */  add.s   $f8, $f22, $f4
/* 01FB4 80AEA3F4 46083282 */  mul.s   $f10, $f6, $f8
/* 01FB8 80AEA3F8 44065000 */  mfc1    $a2, $f10
/* 01FBC 80AEA3FC 0C0342A3 */  jal     Matrix_Scale
/* 01FC0 80AEA400 00000000 */  nop
/* 01FC4 80AEA404 3C0580AF */  lui     $a1, %hi(D_80AEA858)       ## $a1 = 80AF0000
/* 01FC8 80AEA408 24A5A858 */  addiu   $a1, $a1, %lo(D_80AEA858)  ## $a1 = 80AEA858
/* 01FCC 80AEA40C 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 01FD0 80AEA410 0C034695 */  jal     Matrix_ToMtx
/* 01FD4 80AEA414 240605F7 */  addiu   $a2, $zero, 0x05F7         ## $a2 = 000005F7
/* 01FD8 80AEA418 0C034221 */  jal     Matrix_Pull
/* 01FDC 80AEA41C 00000000 */  nop
/* 01FE0 80AEA420 26940040 */  addiu   $s4, $s4, 0x0040           ## $s4 = 00000040
/* 01FE4 80AEA424 27A400B8 */  addiu   $a0, $sp, 0x00B8           ## $a0 = FFFFFFF0
/* 01FE8 80AEA428 0C0346BD */  jal     Matrix_MultVec3f
/* 01FEC 80AEA42C 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000394
/* 01FF0 80AEA430 2631000C */  addiu   $s1, $s1, 0x000C           ## $s1 = 00000018
/* 01FF4 80AEA434 2401003C */  addiu   $at, $zero, 0x003C         ## $at = 0000003C
/* 01FF8 80AEA438 2652000C */  addiu   $s2, $s2, 0x000C           ## $s2 = 000003A0
/* 01FFC 80AEA43C 1621FFD2 */  bne     $s1, $at, .L80AEA388
/* 02000 80AEA440 26100040 */  addiu   $s0, $s0, 0x0040           ## $s0 = 00000080
/* 02004 80AEA444 8E790024 */  lw      $t9, 0x0024($s3)           ## 00000024
/* 02008 80AEA448 8E780028 */  lw      $t8, 0x0028($s3)           ## 00000028
/* 0200C 80AEA44C 27A400B8 */  addiu   $a0, $sp, 0x00B8           ## $a0 = FFFFFFF0
/* 02010 80AEA450 AE790388 */  sw      $t9, 0x0388($s3)           ## 00000388
/* 02014 80AEA454 8E79002C */  lw      $t9, 0x002C($s3)           ## 0000002C
/* 02018 80AEA458 2665037C */  addiu   $a1, $s3, 0x037C           ## $a1 = 0000037C
/* 0201C 80AEA45C AE78038C */  sw      $t8, 0x038C($s3)           ## 0000038C
/* 02020 80AEA460 0C0346BD */  jal     Matrix_MultVec3f
/* 02024 80AEA464 AE790390 */  sw      $t9, 0x0390($s3)           ## 00000390
/* 02028 80AEA468 8FAA00A8 */  lw      $t2, 0x00A8($sp)
/* 0202C 80AEA46C 3C0D0600 */  lui     $t5, 0x0600                ## $t5 = 06000000
/* 02030 80AEA470 25AD0470 */  addiu   $t5, $t5, 0x0470           ## $t5 = 06000470
/* 02034 80AEA474 8D4202D0 */  lw      $v0, 0x02D0($t2)           ## 000002D0
/* 02038 80AEA478 3C0CDE00 */  lui     $t4, 0xDE00                ## $t4 = DE000000
/* 0203C 80AEA47C 3C0680AF */  lui     $a2, %hi(D_80AEA868)       ## $a2 = 80AF0000
/* 02040 80AEA480 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 02044 80AEA484 AD4B02D0 */  sw      $t3, 0x02D0($t2)           ## 000002D0
/* 02048 80AEA488 AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
/* 0204C 80AEA48C AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 02050 80AEA490 8FAE00CC */  lw      $t6, 0x00CC($sp)
/* 02054 80AEA494 24C6A868 */  addiu   $a2, $a2, %lo(D_80AEA868)  ## $a2 = 80AEA868
/* 02058 80AEA498 27A40098 */  addiu   $a0, $sp, 0x0098           ## $a0 = FFFFFFD0
/* 0205C 80AEA49C 2407060F */  addiu   $a3, $zero, 0x060F         ## $a3 = 0000060F
/* 02060 80AEA4A0 0C031AD5 */  jal     Graph_CloseDisps
/* 02064 80AEA4A4 8DC50000 */  lw      $a1, 0x0000($t6)           ## 00000000
/* 02068 80AEA4A8 866201F2 */  lh      $v0, 0x01F2($s3)           ## 000001F2
/* 0206C 80AEA4AC 1040004F */  beq     $v0, $zero, .L80AEA5EC
/* 02070 80AEA4B0 2450FFFF */  addiu   $s0, $v0, 0xFFFF           ## $s0 = FFFFFFFF
/* 02074 80AEA4B4 926F0114 */  lbu     $t7, 0x0114($s3)           ## 00000114
/* 02078 80AEA4B8 00108400 */  sll     $s0, $s0, 16
/* 0207C 80AEA4BC 00108403 */  sra     $s0, $s0, 16
/* 02080 80AEA4C0 32190001 */  andi    $t9, $s0, 0x0001           ## $t9 = 00000001
/* 02084 80AEA4C4 25F80001 */  addiu   $t8, $t7, 0x0001           ## $t8 = 00000001
/* 02088 80AEA4C8 17200048 */  bne     $t9, $zero, .L80AEA5EC
/* 0208C 80AEA4CC A2780114 */  sb      $t8, 0x0114($s3)           ## 00000114
/* 02090 80AEA4D0 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 02094 80AEA4D4 4481A000 */  mtc1    $at, $f20                  ## $f20 = 10.00
/* 02098 80AEA4D8 0C00CFC8 */  jal     Math_Rand_CenteredFloat

/* 0209C 80AEA4DC 4600A306 */  mov.s   $f12, $f20
/* 020A0 80AEA4E0 00105883 */  sra     $t3, $s0,  2
/* 020A4 80AEA4E4 240A0004 */  addiu   $t2, $zero, 0x0004         ## $t2 = 00000004
/* 020A8 80AEA4E8 014B6023 */  subu    $t4, $t2, $t3
/* 020AC 80AEA4EC 2402000C */  addiu   $v0, $zero, 0x000C         ## $v0 = 0000000C
/* 020B0 80AEA4F0 01820019 */  multu   $t4, $v0
/* 020B4 80AEA4F4 00107043 */  sra     $t6, $s0,  1
/* 020B8 80AEA4F8 31CF0003 */  andi    $t7, $t6, 0x0003           ## $t7 = 00000000
/* 020BC 80AEA4FC 3C1980AF */  lui     $t9, %hi(D_80AEA6F0)       ## $t9 = 80AF0000
/* 020C0 80AEA500 2739A6F0 */  addiu   $t9, $t9, %lo(D_80AEA6F0)  ## $t9 = 80AEA6F0
/* 020C4 80AEA504 4600A306 */  mov.s   $f12, $f20
/* 020C8 80AEA508 00006812 */  mflo    $t5
/* 020CC 80AEA50C 026D8821 */  addu    $s1, $s3, $t5
/* 020D0 80AEA510 C6300388 */  lwc1    $f16, 0x0388($s1)          ## 000003A0
/* 020D4 80AEA514 01E20019 */  multu   $t7, $v0
/* 020D8 80AEA518 0000C012 */  mflo    $t8
/* 020DC 80AEA51C 03199021 */  addu    $s2, $t8, $t9
/* 020E0 80AEA520 C6520000 */  lwc1    $f18, 0x0000($s2)          ## 000003A0
/* 020E4 80AEA524 46128100 */  add.s   $f4, $f16, $f18
/* 020E8 80AEA528 46040180 */  add.s   $f6, $f0, $f4
/* 020EC 80AEA52C 0C00CFC8 */  jal     Math_Rand_CenteredFloat

/* 020F0 80AEA530 E7A6007C */  swc1    $f6, 0x007C($sp)
/* 020F4 80AEA534 C628038C */  lwc1    $f8, 0x038C($s1)           ## 000003A4
/* 020F8 80AEA538 C64A0004 */  lwc1    $f10, 0x0004($s2)          ## 000003A4
/* 020FC 80AEA53C 4600A306 */  mov.s   $f12, $f20
/* 02100 80AEA540 460A4400 */  add.s   $f16, $f8, $f10
/* 02104 80AEA544 46100480 */  add.s   $f18, $f0, $f16
/* 02108 80AEA548 0C00CFC8 */  jal     Math_Rand_CenteredFloat

/* 0210C 80AEA54C E7B20080 */  swc1    $f18, 0x0080($sp)
/* 02110 80AEA550 C6240390 */  lwc1    $f4, 0x0390($s1)           ## 000003A8
/* 02114 80AEA554 C6460008 */  lwc1    $f6, 0x0008($s2)           ## 000003A8
/* 02118 80AEA558 8FA400CC */  lw      $a0, 0x00CC($sp)
/* 0211C 80AEA55C 02602825 */  or      $a1, $s3, $zero            ## $a1 = 00000000
/* 02120 80AEA560 46062200 */  add.s   $f8, $f4, $f6
/* 02124 80AEA564 27A6007C */  addiu   $a2, $sp, 0x007C           ## $a2 = FFFFFFB4
/* 02128 80AEA568 24070096 */  addiu   $a3, $zero, 0x0096         ## $a3 = 00000096
/* 0212C 80AEA56C 240D0096 */  addiu   $t5, $zero, 0x0096         ## $t5 = 00000096
/* 02130 80AEA570 46080280 */  add.s   $f10, $f0, $f8
/* 02134 80AEA574 240E0096 */  addiu   $t6, $zero, 0x0096         ## $t6 = 00000096
/* 02138 80AEA578 240F00FA */  addiu   $t7, $zero, 0x00FA         ## $t7 = 000000FA
/* 0213C 80AEA57C 241800EB */  addiu   $t8, $zero, 0x00EB         ## $t8 = 000000EB
/* 02140 80AEA580 E7AA0084 */  swc1    $f10, 0x0084($sp)
/* 02144 80AEA584 966A0112 */  lhu     $t2, 0x0112($s3)           ## 00000112
/* 02148 80AEA588 241900F5 */  addiu   $t9, $zero, 0x00F5         ## $t9 = 000000F5
/* 0214C 80AEA58C 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 02150 80AEA590 314B4000 */  andi    $t3, $t2, 0x4000           ## $t3 = 00000000
/* 02154 80AEA594 1160000C */  beq     $t3, $zero, .L80AEA5C8
/* 02158 80AEA598 240A00FF */  addiu   $t2, $zero, 0x00FF         ## $t2 = 000000FF
/* 0215C 80AEA59C 240CFFFF */  addiu   $t4, $zero, 0xFFFF         ## $t4 = FFFFFFFF
/* 02160 80AEA5A0 AFAC0018 */  sw      $t4, 0x0018($sp)
/* 02164 80AEA5A4 8FA400CC */  lw      $a0, 0x00CC($sp)
/* 02168 80AEA5A8 02602825 */  or      $a1, $s3, $zero            ## $a1 = 00000000
/* 0216C 80AEA5AC 27A6007C */  addiu   $a2, $sp, 0x007C           ## $a2 = FFFFFFB4
/* 02170 80AEA5B0 24070064 */  addiu   $a3, $zero, 0x0064         ## $a3 = 00000064
/* 02174 80AEA5B4 AFA00010 */  sw      $zero, 0x0010($sp)
/* 02178 80AEA5B8 0C00A935 */  jal     EffectSsEnFire_SpawnVec3f
/* 0217C 80AEA5BC AFA00014 */  sw      $zero, 0x0014($sp)
/* 02180 80AEA5C0 1000000B */  beq     $zero, $zero, .L80AEA5F0
/* 02184 80AEA5C4 8FBF005C */  lw      $ra, 0x005C($sp)
.L80AEA5C8:
/* 02188 80AEA5C8 44818000 */  mtc1    $at, $f16                  ## $f16 = 0.00
/* 0218C 80AEA5CC AFAD0010 */  sw      $t5, 0x0010($sp)
/* 02190 80AEA5D0 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 02194 80AEA5D4 AFAF0018 */  sw      $t7, 0x0018($sp)
/* 02198 80AEA5D8 AFB8001C */  sw      $t8, 0x001C($sp)
/* 0219C 80AEA5DC AFB90020 */  sw      $t9, 0x0020($sp)
/* 021A0 80AEA5E0 AFAA0024 */  sw      $t2, 0x0024($sp)
/* 021A4 80AEA5E4 0C00A850 */  jal     EffectSsEnIce_SpawnFlyingVec3f
/* 021A8 80AEA5E8 E7B00028 */  swc1    $f16, 0x0028($sp)
.L80AEA5EC:
/* 021AC 80AEA5EC 8FBF005C */  lw      $ra, 0x005C($sp)
.L80AEA5F0:
/* 021B0 80AEA5F0 D7B40038 */  ldc1    $f20, 0x0038($sp)
/* 021B4 80AEA5F4 D7B60040 */  ldc1    $f22, 0x0040($sp)
/* 021B8 80AEA5F8 8FB00048 */  lw      $s0, 0x0048($sp)
/* 021BC 80AEA5FC 8FB1004C */  lw      $s1, 0x004C($sp)
/* 021C0 80AEA600 8FB20050 */  lw      $s2, 0x0050($sp)
/* 021C4 80AEA604 8FB30054 */  lw      $s3, 0x0054($sp)
/* 021C8 80AEA608 8FB40058 */  lw      $s4, 0x0058($sp)
/* 021CC 80AEA60C 03E00008 */  jr      $ra
/* 021D0 80AEA610 27BD00C8 */  addiu   $sp, $sp, 0x00C8           ## $sp = 00000000
/* 021D4 80AEA614 00000000 */  nop
/* 021D8 80AEA618 00000000 */  nop
/* 021DC 80AEA61C 00000000 */  nop
